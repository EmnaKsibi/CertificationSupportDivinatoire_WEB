package com.sandra.certification.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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


@WebServlet("/changePassword")
public class PasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PasswordController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String applicationContextPath = request.getContextPath();
		if (request.getRequestURI().equals(
				applicationContextPath + "/changePassword")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsps/chgementPassword.jsp");
			dispatcher.forward(request, response);	
			}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String currentPassword=request.getParameter("currentPassword");
		String newPassword=request.getParameter("newPassword");
		String confirmPassword=request.getParameter("confirmPassword");
		Connection con=DatabaseConnectionFactory.createConnection();
		ResultSet set=null;
		String id = "";
		String password = "";
		String resp="/WEB-INF/jsps/login.jsp";

		try
		{
			 Statement st=con.createStatement();
			 String sql = "SELECT * FROM  users WHERE username='"+request.getSession().getAttribute("user")+"' and password='"+currentPassword+"' ;";
			 set=st.executeQuery(sql);
			 while(set.next()){
				id=set.getString("id");
				password=set.getString("password");
			} 			
			if(password.equals(currentPassword) && newPassword.equals(confirmPassword)){
				int i=st.executeUpdate("update users set password='"+newPassword+"' where id='"+id+"'");
				if(i>0){
					    request.setAttribute("errorMessage","Votre mot de passe a été changé avec succès");
						System.out.println("[InfoPassC] user["+password+"] id["+id+"] Password changed successfully");
				} 	
			}else{
				System.err.println("[ErrorPassC] user["+password+"] id["+id+"] Invalid currentPassword");
				request.setAttribute("errorMessage","Mot de passe Actuel invalide.");
				resp="/WEB-INF/jsps/chgementPassword.jsp";
			}
			RequestDispatcher rd=request.getRequestDispatcher(resp);
			rd.forward(request, response);		

		}catch(SQLException sqe){System.err.println("[ErrorPassC] While Fetching records from database");}
		try
		{
		 con.close();
		 System.out.println("[InfoPassC] Closing Connection With Database_PassC");

		}catch(SQLException se){System.out.println("[ErrorPassC] While Closing Connection");}
	}

}
