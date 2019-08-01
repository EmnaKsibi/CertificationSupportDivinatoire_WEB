package com.sandra.certification.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.sandra.certification.DatabaseConnectionFactory;




@MultipartConfig
@WebServlet("/checkRegister")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	

	
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		Collection<Part> parts = request.getParts();
		String resp = "/WEB-INF/jsps/registreCompletedAdmin.jsp";
		
		
		
		/*****************************
		 * this is the list of quiz
		 * 
		 *****************************/
        String listQuizTarot[][]={{"Introduction","Bateleur", "Papesse", "Imperatrice", "Empereur", "Pape",
        						"Amoureux", "Chariot", "Justice", "Hermite", "Roue de Fortune",
        						"Force","Pendu","Arcane Sans Nom","Temperance","Diable",
        						"Maison Dieu","Etoile","Lune","Soleil","Jugement","Monde","Mat"},
        						{"Introduction","Bateleur","Papesse"}};

	

        
        
        
		/*****************************
		 * verif 3 parts are inserted!
		 * 
		 *****************************/		
		
		if (parts.size() != 3) {
	         //can write error page saying all details are not entered
	       }
	

		
		
		
		/*****************************
		 * fill the table users 
		 * 
		 *****************************/
		int matricule= Integer.parseInt(request.getParameter("matricule"));
		String username=request.getParameter("username");
		String droit=request.getParameter("droit");
		
		Connection con=DatabaseConnectionFactory.createConnection();
		
		try
		{
		
			 PreparedStatement ps = con.prepareStatement("INSERT INTO users(matricule,username,password,droit) values(?,?,?,?) ;");
			 ps.setInt(1, matricule);
			 ps.setString(2, username);
			 ps.setString(3, username+"01");   //password automatique name01
			 ps.setString(4, droit);
			 int verif = ps.executeUpdate(); 
			 
			 

			 if(verif>0 && request.getParameter("droit").equals("user")){
						         

					/*****************************
					 *fill the table result automatically
					 * 
					 *****************************/
		
				  for(int i=0; i<listQuizTarot.length; i++){
					  for ( int j = 0;j < listQuizTarot[i].length;j++) {
		       			    try { 			
								 PreparedStatement pst= con.prepareStatement("INSERT INTO  result(matricule,username,examLevel,examName) VALUES ( '"+matricule+"','"+username+"','"+"TarotMarseilleNiveau"+(i+1)+"','"+listQuizTarot[i][j]+"' )");
								 pst.executeUpdate();
								 System.out.println("[InfoRC] UserName : "+username+" with matricule" + matricule +"Successfuly created a *"+listQuizTarot[i][j]+"* resul row !");				
								 
							 }catch(SQLException sqe){
								System.err.println("[ErrorRC] While Inserting record in database Table 'result'!"+sqe.getMessage());
							 }
		       			    
					  }
				  }
				  
				  
			 }else{
				 System.out.println("[InfoRC] No rows are created in the table result.");
			 }
 
		}catch(SQLException sqe){
			resp = "/WEB-INF/jsps/registerAdmin.jsp";
			System.err.println("[ErrorRC] While Inserting record in database Table 'users'!");
			request.setAttribute("err",sqe.getMessage());
		}
		
		
		try
		{
		 con.close();	
		}catch(SQLException se){
			System.err.println("[ErrorRC] While Closing Connection");
			
		}
        request.setAttribute("newUser",username);
		RequestDispatcher dispatcher=request.getRequestDispatcher(resp);
		dispatcher.forward(request, response);		
	}
	
	
	

}
