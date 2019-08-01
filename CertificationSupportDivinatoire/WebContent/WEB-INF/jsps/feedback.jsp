<%@ page language="java" import="com.sandra.certification.*" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=5">
    <title>Certification Support Divinatoire</title>	
	<style type="text/css">
		body {
				background: url("${pageContext.request.contextPath}/images/feedback.jpg")no-repeat center center fixed;
				background-size: cover;
				height: 100%;
				overflow: hidden;
				}
	</style>
	<script type="text/javascript">
		function formValidation()
		{
			 if(document.getElementById("comment").value==null || document.getElementById("comment").value.trim()=='')
			{
			alert("comment should not be blank");
			return false;
			}
			return true;
		}
	</script>
</head>
<body>
	<div id="wrapper">
		  <div id="form-div">
				  	<div id="form-main">
						<div class="header">
									<% Object s = request.getAttribute("errorFeedback");
									if(s != null)
									{
										%>
										<font size="2" color="red">*<%=(String)s%></font>
										<%
									}
									%>
						</div>
					    <form class="form" id="form1" action="submitFeedback" method="post" onSubmit="return formValidation();">
						      <p class="text">
						        <textarea name="text" minlength ="20" maxlength="300" class="feedback-input" id="comment" placeholder="Comment"></textarea>
						      </p>
						      <div class="submit">
						        <input type="submit" value="SEND" id="button-blue"/>
						        <div class="ease"></div>
						      </div>
					    </form>
				  </div>
		  </div>
	</div>
   </body>
</html>