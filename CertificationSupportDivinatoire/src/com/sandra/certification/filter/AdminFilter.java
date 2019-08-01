package com.sandra.certification.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebFilter({"/homeAdmin","/register","/feedbackResult"})

public class AdminFilter implements Filter {

    public AdminFilter() {
    }

	public void destroy() {
	}

	
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(false);
        
        boolean loggedIn = session != null && session.getAttribute("user") != null;

		if (loggedIn) {
			if (session.getAttribute("droit").equals("admin")) {
				chain.doFilter(request, response);
				System.out.println("[AdminFilter] ");

			}else {
				System.err.println("[AdminFilter] You are not allowed to check : "+request.getRequestURI());
	            response.sendRedirect(request.getContextPath() + "/errorPage");// not allowed to this area just a random url
			}
		}else {
			System.err.println("[AdminFilter] NoUser Is logged In.");
            response.sendRedirect(request.getContextPath() + "/login");// redirect to login 
		}
		
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
