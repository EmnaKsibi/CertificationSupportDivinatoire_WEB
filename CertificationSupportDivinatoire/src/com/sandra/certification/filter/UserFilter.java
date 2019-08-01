package com.sandra.certification.filter;

import java.io.IOException;
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

@WebFilter(urlPatterns = {"/homeUser","/takeExam","/resultTarot","/resultOracleGe","/resultBelline","/resultNumerologie","/resultAstrologie","/resultReferentiel"},
			servletNames = "TurorialsController"
			)

public class UserFilter implements Filter {

    public UserFilter() {
    }

	public void destroy() {
	}

	
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(false);
       
        boolean loggedIn = session != null && session.getAttribute("user") != null;
        
		if (loggedIn) {
			if (session.getAttribute("droit").equals("user")) {
				chain.doFilter(request, response);
				System.out.println("[UserFilter] ");

			}else {
				System.err.println("[UserFilter] You are not allowed to check : "+request.getRequestURI());
	            response.sendRedirect(request.getContextPath() + "/errorPage");// not allowed to this area just a random url
			}
		}else{
			System.err.println("[UserFilter] NoUser Is logged In.");
            response.sendRedirect(request.getContextPath() + "/login");// redirect to login 
		}
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
