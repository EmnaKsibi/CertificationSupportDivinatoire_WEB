package com.sandra.certification.controller;

import java.io.IOException;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.xml.sax.SAXException;

import com.sandra.certification.CreateDOM;
import com.sandra.certification.Exam;

@WebServlet(urlPatterns = {    "/logout","/login","/feedback","/errorPage",	//all filtre login ! didnt give much importance to feedback filter because only admin can try to check not sure if I shoud hide it !				
								"/homeAdmin","/register","/feedbackResult",    //filtre admin !
								"/homeFormateur","/quizList","/resultFormateur",			// filtre formateur !
								"/homeUser","/takeExam" ,"/resultTarot","/resultOracleGe","/resultBelline","/resultNumerologie","/resultAstrologie","/resultReferentiel",	//filtre user !
								
							})
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			String applicationContextPath = request.getContextPath();

	
					
					/***********************
					 * jsp for admin ROLE
					 * *********************/
					
				   if (request.getRequestURI().equals(
							applicationContextPath + "/homeAdmin")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/homeAdmin.jsp");
						dispatcher.forward(request, response);	
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/feedbackResult")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/feedbackAdmin.jsp");
						dispatcher.forward(request, response);
						
						
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/register")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/registerAdmin.jsp");
						dispatcher.forward(request, response);
						
						
						
						/************************
						 * jsp for formateur  ROLE
						 * **********************/
						
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/quizList")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/quizListFormateur.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(
							applicationContextPath + "/homeFormateur")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/homeFormateur.jsp");
						dispatcher.forward(request, response);	
					
						/*********************
						 * jsp for user ROLE
						 * 
						 * *******************/
					}else if (request.getRequestURI().equals(
							applicationContextPath + "/homeUser")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/homeUser.jsp");
						dispatcher.forward(request, response);	
							
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/takeExam")) {						
						String exam = request.getParameter("test");
						String examLevel = request.getParameter("niveau");
						
						HttpSession session=request.getSession();		

						session.setAttribute("exam", exam);
						session.setAttribute("examLevel", examLevel);	
						try
						{
							Exam newExam=new Exam(examLevel+exam);
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

								  
						    System.out.println("[InfoMC] Session New User:"+session.getAttribute("user")
								  						+"\n		CurrentExam :"+session.getAttribute("exam")
								  						+"\n		Started *"+session.getAttribute("started")+"*"
								  					    + "\n		TotalNumberOfQuizQuestions *"+session.getAttribute("totalNumberOfQuizQuestions")+"*"
										  				+ "\n		minScoreTopass *"+session.getAttribute("minScoreTopass")+"*"
								  					    +"\n		QuizDuration *"+session.getAttribute("quizDuration")+"*");
								  
						}catch(Exception e){e.printStackTrace();}

						RequestDispatcher dispatcher = request
									.getRequestDispatcher("/WEB-INF/jsps/examInstruction.jsp");
						dispatcher.forward(request, response);
						
											
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/resultTarot")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/resultTarot.jsp");
						dispatcher.forward(request, response);									
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/resultOracleGE")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/resultOracleGe.jsp");
						dispatcher.forward(request, response);
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/resultBelline")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/resultBelline.jsp");
						dispatcher.forward(request, response);					
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/resultNumerologie")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/resultNumerologie.jsp");
						dispatcher.forward(request, response);	
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/resultAstrologie")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/resultAstrologie.jsp");
						dispatcher.forward(request, response);
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/resultReferentiel")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/resultReferentiel.jsp");
						dispatcher.forward(request, response);
						
						/*********************
						 * jsp for user and formateur ROLE
						 * 
						 * *******************/
						
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/feedback")) {
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/feedback.jsp");
						dispatcher.forward(request, response);
					} else if (request.getRequestURI().equals(
							applicationContextPath + "/resultFormateur")) {
						
						
						String levelToCheck = request.getParameter("levelToCheck");
						request.getSession().setAttribute("levelToCheck", levelToCheck);		
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/resultFormateur.jsp");
						dispatcher.forward(request, response);	
																
					
					/*********************
					 * jsp for all users
					 * 
					 * *******************/
					}else if (request.getRequestURI().equals(
							applicationContextPath + "/login")) {			
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/login.jsp");
						dispatcher.forward(request, response);
								
					}else if (request.getRequestURI().equals(
							applicationContextPath + "/logout")) {
						System.out.println("[InfoMC] LOG out successful");
						request.getSession().invalidate();
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/login.jsp");
						dispatcher.forward(request, response);
								
					}else if (request.getRequestURI().equals(
							applicationContextPath + "/errorPage")) {
						
						System.out.println("[InfoMC] Redirecting to errorPage URL");
			
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/errorPage.jsp");
						dispatcher.forward(request, response);
								
					}
					
				   

}} 

