package com.sandra.certification.filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sandra.certification.DatabaseConnectionFactory;


@WebFilter("/takeExam")
public class LevelFiltreCheck implements Filter {

   
    public LevelFiltreCheck() {
        // TODO Auto-generated constructor stub
    }


	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(false);

		String examLevel= request.getParameter("niveau");
    	String examName= request.getParameter("test");
		String previousExamToValidate= request.getParameter("previousExamToValidate");	
		String status=null;
		
		/*checking if we need to validate for that level*/
		if(previousExamToValidate.equals("none")) {
			chain.doFilter(request, response);
			 System.out.println("[LevelCheckFiltre] NoFiltreFor: examLevel["+examLevel+"]examName["+examName+"]");		
		}else {
			String callingURL=request.getContextPath() + "/"+examLevel+"/"+examName+"#startQuizButton";
			Connection con=DatabaseConnectionFactory.createConnection();
			ResultSet set=null;
			try
			{
				 Statement st=con.createStatement();
				 String sql = "SELECT status FROM  result WHERE matricule='"+session.getAttribute("matricule")+"' and examLevel='"+examLevel+"' "+"and examName='"+previousExamToValidate+"' ;";
				 set=st.executeQuery(sql);
				 while(set.next())
				 {
					 status = set.getString("status");
				 }

				 if(("Passed").equals(status))
				 {   
					chain.doFilter(request, response);
				 }else
				 { 	System.err.println("[LevelCheckFiltre] Previous Exam not Validated_level["+examLevel+"]name["+previousExamToValidate+"]");		
					response.sendRedirect(callingURL);
				}
				 System.out.println("[LevelCheckFiltre] matricule["+session.getAttribute("matricule")+"]examLevel["+examLevel+"]examName["+previousExamToValidate+"]status["+status+"]");		

			}catch(SQLException sqe){System.err.println("[LevelCheckFiltre] While Fetching records from database"+sqe.getMessage());}
			
			
			try
			{
			 con.close();
			 System.out.println("[LevelCheckFiltre] Closing Connection With Database_LC");

			}catch(SQLException se){System.out.println("[LevelCheckFiltre] While Closing Connection");}

		}
		
	
	
	
	}
	

	
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
