package com.sandra.certification.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sandra.certification.DatabaseConnectionFactory;
import com.sandra.certification.Exam;
import com.sandra.certification.QuizQuestion;

/**
 * Servlet implementation class ExamController
 */
@WebServlet("/exam")
public class ExamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		boolean finish=false;
		
		
		
		HttpSession session=request.getSession();		

		try
		{
				if(session.getAttribute("currentExam")==null)
			  {  

						
			  
			     String selectedExam=(String)request.getSession().getAttribute("exam"); 
			     String selectedLevel=(String)request.getSession().getAttribute("examLevel"); 

				 Exam newExam=new Exam(selectedLevel+selectedExam);
				
				 
				 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss a");
					Date date = new Date();
					String started=dateFormat.format(date);				
				 
				  session.setAttribute("started",started);
				  session.setAttribute("currentExam",newExam);
				  session.setAttribute("totalNumberOfQuizQuestions",newExam.totalNumberOfQuestions);
				  session.setAttribute("quizDuration",newExam.quizDuration);
				  session.setAttribute("min",newExam.quizDuration);
				  session.setAttribute("sec",0);
				  session.setAttribute("minScoreTopass",newExam.quizMinScoreToPass);

				  
				  System.out.println("[InfoEC] Session New User:"+session.getAttribute("user")
				  						+"\n		CurrentExam :"+session.getAttribute("exam")
				  						+"\n		Started *"+session.getAttribute("started")+"*"
				  					    + "\n		TotalNumberOfQuizQuestions *"+session.getAttribute("totalNumberOfQuizQuestions")+"*"
						  				+ "\n		minScoreTopass *"+session.getAttribute("minScoreTopass")+"*"
				  					    +"\n		QuizDuration *"+session.getAttribute("quizDuration")+"*");
				  
				 
			  }
		
		}catch(Exception e){e.printStackTrace();}
		
        
		Exam exam=(Exam)request.getSession().getAttribute("currentExam");		
        
        if(exam.currentQuestion==0){	
			exam.setQuestion(exam.currentQuestion);
		    QuizQuestion q=exam.questionList.get(exam.currentQuestion);	
			session.setAttribute("quest",q);
        }
			
		String action=request.getParameter("action");
			
		int minute=-1;
		int second=-1;
		if(request.getParameter("minute")!=null)
		{			
				minute=Integer.parseInt(request.getParameter("minute"));
				second=Integer.parseInt(request.getParameter("second"));
				request.getSession().setAttribute("min",request.getParameter("minute") );
				request.getSession().setAttribute("sec",request.getParameter("second") );
		}
			
		
		
		
		
		/*******************************************
		 * manipulation of choices
		 * 
		 *******************************************/	
		
		String radio=request.getParameter("answer");
		int selectedRadio=-1;
		exam.selections.put(exam.currentQuestion, selectedRadio);
		
		if("1".equals(radio)){
			selectedRadio=1;
			exam.selections.put(exam.currentQuestion, selectedRadio);
		}else if("2".equals(radio)){
			selectedRadio=2;
			exam.selections.put(exam.currentQuestion, selectedRadio);
		}else if("3".equals(radio)){
			selectedRadio=3;
			exam.selections.put(exam.currentQuestion, selectedRadio);
		}else if("4".equals(radio)){
			selectedRadio=4;
			exam.selections.put(exam.currentQuestion, selectedRadio);
		}
			
		
		
		/*******************************************
		 * manipulation of next -previous -finish
		 * result.jsp
		 * 
		 *******************************************/	
		
		if("Suivant".equals(action)){
			exam.currentQuestion++;
			exam.setQuestion(exam.currentQuestion);
		    QuizQuestion q=exam.questionList.get(exam.currentQuestion);	
		  	session.setAttribute("quest",q);
		}else if("Précédent".equals(action)){   
			exam.currentQuestion--;
			exam.setQuestion(exam.currentQuestion);
			QuizQuestion q=exam.questionList.get(exam.currentQuestion);	
			session.setAttribute("quest",q);	
		}else if("Terminer".equals(action)||( minute==0 && second==0)){ 
			finish=true;
			int result=exam.calculateResult(exam);				
			request.setAttribute("result",result);
			request.getSession().setAttribute("currentExam",null);
			String status="Failed";
			if (result >=  exam.quizMinScoreToPass) {
				status="Passed";
			}
			request.setAttribute("status",status);
			System.out.println("[InfoEC] Test Finshed \n		User:"+session.getAttribute("user")
			  					+"\n		id Of User *"+session.getAttribute("id")+"*"
			  					+"\n		matricule Of User *"+session.getAttribute("matricule")+"*"	
			  					+"\n		exam_type :"+session.getAttribute("exam")
								+"\n		start_time *"+session.getAttribute("started")+"*"
								+ "\n		no_of_qos *"+session.getAttribute("totalNumberOfQuizQuestions")+"*"
								+"\n 		corrent_ans/result:"+request.getAttribute("result")
			  					+"\n 		status:"+request.getAttribute("status"));
			Connection con=DatabaseConnectionFactory.createConnection();
			try
			{
			PreparedStatement ps = con.prepareStatement( "UPDATE result "
					+ "SET startTime =?, nbOfQuestion =?, nbCorrectAnswer = ?,status = ? "
					+ "WHERE matricule = ? and examLevel  = ? and examName  = ? ;"); 
			ps.setString(1,session.getAttribute("started").toString());
			ps.setString(2,session.getAttribute("totalNumberOfQuizQuestions").toString());
			ps.setString(3,request.getAttribute("result").toString());
			ps.setString(4,status);
			ps.setString(5,session.getAttribute("matricule").toString());
			ps.setString(6,session.getAttribute("examLevel").toString());
			ps.setString(7,session.getAttribute("exam").toString());		    

			ps.executeUpdate();

			}catch(SQLException sqe){
				sqe.printStackTrace();
				System.err.println("[ErrorEC] While UPdating record in Database Table 'result'");
			}

			try
			{
			 con.close();	
			 System.out.println("[InfoEC] Closing Connection With Database_EX");
			}catch(SQLException se){
				System.err.println("[ErrorEC] While Closing Connection With Database_EX");
				
			} 		
			request.getRequestDispatcher("/WEB-INF/jsps/examResult.jsp").forward(request,response);		


		}
			
		
		/*******************************************
		 * manipulation if the exam is not finished 
		 * exam.jsp
		 * 
		 *******************************************/	
		if(finish!=true){
			request.getRequestDispatcher("/WEB-INF/jsps/exam.jsp").forward(request,response);
		}
		
	}

}
