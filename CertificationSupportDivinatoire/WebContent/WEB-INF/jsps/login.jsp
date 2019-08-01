<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?v=16">
	<style type="text/css">
			body {
				background: url("${pageContext.request.contextPath}/images/mystic.jpg")no-repeat center center fixed;
				background-size: cover;
				height: 100%;
				overflow: hidden;
				}
	</style>
    <title>Certification Support Divinatoire </title>	
</head>	
<body>
	
	<div class="body"></div>
	<div class="grad"></div>
    <form name="login-form" class="login-form" action="checkLogin" method="post">	
			
			   <div class="header">
					<div>
					Certification<br><span>Support</span><br>Divinatoire
					</div>
				</div>			
			<div class="login">
				<input name="username" type="text" placeholder="Pseudo" required/>
				<input name="password" type="password"  placeholder="Mot de passe" required/>
				<input type="submit" name="submit" value="Login" class="button" />
				<br>
				<% Object s = request.getAttribute("errorMessage");
					if(s != null)
					{
						%>
						<font size="2" color="#a18d6c">*<%=(String)s%></font>
						<%
					}
				%>
			</div>	
	</form>
</body>
</html>