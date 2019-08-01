

<%@ page contentType="text/xml; charset=ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<%@ page import="com.sandra.certification.CreateDOM"%>
<%@ page import="org.w3c.dom.Node"%>
<%@ page import="org.w3c.dom.NodeList"%>
<%@ page import="org.w3c.dom.Document"%>
<%@page import="com.sandra.certification.QuizQuestion"%>
<%@page import="com.sandra.certification.Helper"%>

<%!Helper helper = new Helper();%>


<rows>
<% 
  String sPageNo = request.getParameter("page");
	String sRowsPerPage = request.getParameter("rows");
	String quizTitle =  request.getParameter("quizTitle");
		
	
	
	

		int nRowsPerPage = 0;
		int nPageNo = 0;
		
		int total_pages = 0;
		int count = 0;

		if (sPageNo != null) {
			nPageNo = Integer.parseInt(sPageNo);
		}
		if (sRowsPerPage != null) {
			nRowsPerPage = Integer.parseInt(sRowsPerPage);
		}
			
		
		if (count > 0 && nRowsPerPage != 0) {
  			total_pages = (int) (Math.ceil((double) count
  					/ (double) nRowsPerPage));
  		} else {
  			total_pages = 0;
  		}

  		// if for some reasons the requested page is greater than the total
  		// set the requested page to total page
  		if (nPageNo > total_pages) {
  			nPageNo = total_pages;
  		}
  		// calculate the starting position of the rows
  		int start = (nPageNo - 1) * nRowsPerPage;

  		// if for some reasons start position is negative set it to 0
  		// typical case is that the user type 0 for the requested page
  		if (start < 0) {
  			start = 0;
  		}
  		
  		
  		
  		
  		Document dom=CreateDOM.getDOM(quizTitle);
  		NodeList qList=dom.getElementsByTagName("quizquestion"); 		
  		NodeList answerList=dom.getElementsByTagName("answer");  		
  		NodeList correctList=dom.getElementsByTagName("correct");  
  		
%> <page><%=nPageNo%></page> <total><%=total_pages%></total> <records><%=String.valueOf(count)%></records>
<%  int correctAnswer=0;
    for (int i= 0; i < qList.getLength(); i++) {
    		correctAnswer= Integer.parseInt(correctList.item(i).getTextContent())+4*i;%>
		  	<row id="<%=i%>">
			  			<cell><%=qList.item(i).getTextContent()%></cell>	
                        <cell><%=answerList.item(correctAnswer).getTextContent()%></cell>
			  			 
			</row>
    	<%}  %>
    	
 
 </rows>

