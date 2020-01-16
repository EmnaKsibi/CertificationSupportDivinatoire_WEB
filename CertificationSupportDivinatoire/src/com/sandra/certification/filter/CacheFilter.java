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


@WebFilter("/*")
public class CacheFilter implements Filter {

    public CacheFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest req , ServletResponse res , FilterChain chain) throws IOException, ServletException {
		 
        HttpServletResponse response = (HttpServletResponse) res;
		HttpServletRequest request  = (HttpServletRequest) req;

	    response.setHeader("Cache-Control", "no-cache, no-store"); // HTTP 1.1.
	    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	    response.setDateHeader("Expires", 0); // Proxies.
		 chain.doFilter(req, res);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
