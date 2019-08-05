
package com.sandra.certification.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.sandra.certification.DatabaseConnectionFactory;


@WebServlet("/checkLogin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setAttribute("errorMessage", "Pseudo ou Password invalide");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsps/login.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");				
		Connection con=DatabaseConnectionFactory.createConnection();
		String redirectURL=request.getContextPath()+"/login";
		ResultSet set=null;
		String id = "";
		String matricule = "";
		String droit = "";
		
		int i=0;
		try
		{
			 Statement st=con.createStatement();
			 String sql = "SELECT * FROM  users WHERE username='"+username+"' and password='"+password+"' ;";
			 set=st.executeQuery(sql);
			 while(set.next())
			 {
				 i=1;
				 id = set.getString("id");
				 droit = set.getString("droit");
				 matricule = set.getString("matricule");
			 }
			 HttpSession session=request.getSession();

			 if(i!=0 && password.equals(username+"01")) {
			     System.out.println("[InfoLC] First time connected [request change password]");
				 session.setAttribute("user",username);  
				  redirectURL=request.getContextPath()+"/changePassword";
			 }else if(i!=0 && !password.equals(username+"01")){   
				
				 session.setAttribute("user",username);  
			     session.setAttribute("droit",droit);
			     session.setAttribute("matricule",matricule);
			     session.setAttribute("id",id);
		     
			     System.out.println("[InfoLC] Successful login User : "+username+"  Droit: "+droit+"  Matricule: "+matricule+"  ID_Table_User: "+id);
					if (droit.equals("admin")) {
			            redirectURL= request.getContextPath()+"/homeAdmin";
					} else if  (droit.equals("formateur")) {
			            redirectURL= request.getContextPath()+"/homeFormateur";
					} else if  (droit.equals("user")) {
			            redirectURL= request.getContextPath()+"/homeUser";
					}	

			}else{   
	            redirectURL=request.getContextPath()+"/checkLogin";
				System.err.println("[ErrorLC] Invalid username or password");
			}
			 response.sendRedirect(redirectURL);
			 
		}catch(SQLException sqe){System.err.println("[ErrorLC] While Fetching records from database");}
		try
		{
		 con.close();
		 System.out.println("[InfoLC] Closing Connection With Database_LC");

		}catch(SQLException se){System.out.println("[ErrorLC] While Closing Connection");}
	}
		
		
	

}
