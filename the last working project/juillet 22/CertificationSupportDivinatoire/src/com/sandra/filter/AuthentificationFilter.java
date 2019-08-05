package com.sandra.filter;

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


@WebFilter("/")
public class AuthentificationFilter implements Filter {

    public AuthentificationFilter() {
    }

	
	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		  HttpServletRequest req = (HttpServletRequest) request;
		    HttpServletResponse res = (HttpServletResponse) response;
		    HttpSession session = req.getSession(false);
		    String loginURL = req.getContextPath() + "/login";
		    
		    //to avoid infinte loops !
		    boolean loggedIn = session != null && session.getAttribute("user") != null;
		    boolean loginRequest = loginURL.equals(req.getRequestURI());

		    if (loggedIn || loginRequest ) {
		        chain.doFilter(request, response);
		    } else {
				System.err.println("AuthentificationFilter : NoUser Is logged In!");
		        res.sendRedirect(loginURL);
		    }
		}

	
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
