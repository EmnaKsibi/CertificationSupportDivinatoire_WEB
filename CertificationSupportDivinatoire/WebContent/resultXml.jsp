
<%@page import="com.sandra.certification.ResultModel"%>
<%@page import="com.sandra.certification.Helper"%>
<%@ page contentType="text/xml; charset=ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- <%@ include file="/WEB-INF/templates/sessionValidation.jsp"%> --%>
<%!Helper helper = new Helper();%>
<rows>
<% 
  String sPageNo = request.getParameter("page");
	String sRowsPerPage = request.getParameter("rows");
	String matricule = request.getParameter("matricule");
	String levelToCheck =request.getParameter("levelToCheck");

	
	

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
			
		//getting the results
		count = helper.getCountOfResult(matricule,levelToCheck);		
		
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
  		
  		//get the list of resutl 
  		StringBuilder sql =new StringBuilder("SELECT * FROM  result ");	
  		if (matricule !=null && !matricule.trim().equals("") && levelToCheck !=null && !levelToCheck.trim().equals(""))  {
  			sql.append(" where ").append(" matricule ='").append(matricule.trim()).append("' and examLevel ='").append(levelToCheck.trim()).append("' ");;
  	  		sql.append(" order by rid asc");

  		}
  		

  		List<ResultModel> list = helper.getListOfResult(sql.toString());
  		
  		
  		
%> <page><%=nPageNo%></page> <total><%=total_pages%></total> <records><%=String.valueOf(count)%></records>
<%   for (ResultModel obj : list) 
	{%>
	  	<row id="<%=obj.getRId()%>">
		   <cell><%=obj.getRId()%></cell>
		   <cell><%=obj.getMatricule()%></cell>
		   <cell><%=obj.getUserName()%></cell>
		   <cell><%=obj.getExamName()%></cell>  
		   <cell><%=obj.getExamLevel()%></cell>
		   <cell><![CDATA[<%=obj.getNbOfQuestion()%>]]></cell>
		   <cell><![CDATA[<%=obj.getNbCorrectAnswer()%>]]></cell>
		   <cell><![CDATA[<%=obj.getStartTime()%>]]></cell> 
		   <cell><![CDATA[<%=obj.getStatus()%>]]></cell>   
		</row>
    	<%}
  %>
 </rows>
