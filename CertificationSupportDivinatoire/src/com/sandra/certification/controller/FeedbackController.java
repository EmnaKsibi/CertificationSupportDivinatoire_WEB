package com.sandra.certification.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sandra.certification.DatabaseConnectionFactory;

@WebServlet(urlPatterns = {"/submitFeedback","/deleteFeedback"})

public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public FeedbackController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		
		HttpSession session=request.getSession();	
		String applicationContextPath = request.getContextPath();
		Connection con=DatabaseConnectionFactory.createConnection();
		String resp;
		
		if (request.getRequestURI().equals(applicationContextPath + "/submitFeedback")) {
			String comment=request.getParameter("text");
			resp = "/WEB-INF/jsps/feedbackSuccess.jsp";		
			if (request.getSession().getAttribute("user")!=null) {
				try
				{
					 Statement st=con.createStatement();
					 String sql = "INSERT INTO feedback (matricule,username,comment) values("
					 		+ "(SELECT matricule from users where id='"+request.getSession().getAttribute("id")+"'),'"
					 		+session.getAttribute("user")+"','"+comment+"')";
					 st.executeUpdate(sql);
				}catch(SQLException sqe){
					resp = "/WEB-INF/jsps/feedback.jsp";
					System.err.println("[ErrorFC] While Inserting record in database Table 'feedback'!");
					request.setAttribute("errorFeedback",sqe.getMessage());	
				}
				RequestDispatcher dispatcher=request.getRequestDispatcher(resp);
				dispatcher.forward(request, response);
			}else {
				System.err.println("[ErrorFC] While Selecting the user");
			}
		}else if (request.getRequestURI().equals(applicationContextPath + "/deleteFeedback")) {
			resp="/WEB-INF/jsps/feedbackAdmin.jsp";
			String rowid=request.getParameter("rowid");
			StringBuilder sql =new StringBuilder("DELETE FROM  feedback where fid='"+Integer.parseInt(rowid)+"'");
			try
			{
				PreparedStatement ps = con.prepareStatement(sql.toString());
				int verif =ps.executeUpdate();
				if(verif>0){
					System.out.println("[InfoFD] Feedback with ID="+rowid+" deleted from database!");
					request.setAttribute("deleteResult","the feedback with id ="+rowid+" deleted successfully!");
				}		

			}catch(Exception sqe){
				System.err.println("[ErrorFD] While deleting record from database_deleteFeedback");
				request.setAttribute("deleteResult",sqe.getMessage());
			}
			RequestDispatcher dispatcher=request.getRequestDispatcher(resp);
			dispatcher.forward(request, response);	
		}
		
		
		try
		{
		 con.close();	
		}catch(SQLException se){
			System.err.println("[ErrorFC] While Closing Connection");
			
		}
    
				
	}
}
