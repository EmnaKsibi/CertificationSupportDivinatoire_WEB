<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

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
    <form name="login-form" class="login-form" action="changePassword" method="post">	
			
			   <div class="header">
					<div>
					Certification<br><span>Support</span><br>Divinatoire
					</div>
				</div>			
			<div class="login">
			
				<input name="currentPassword" type="password"      placeholder="Mot de passe Actuel" required/>
				<input id="newPassword" name="newPassword"     type="password"  placeholder="Nouveau Mot de passe" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required title="(Majuscule, Minuscule, Numéro/Caractère et min 8 Caractères)"/>
				<input name="confirmPassword" type="password"  placeholder="Confirmer Mot de passe" oninput="check(this)" />
				<input type="submit" name="submit" value="Changer Mot de passe" class="button" />
				
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
<script language='javascript' type='text/javascript'>
    function check(input) {
        if (input.value != document.getElementById('newPassword').value) {
            input.setCustomValidity('Les Mots de passe ne correspondent pas.');
        } else {
            // input is valid -- reset the error message
            input.setCustomValidity('');
        }
    }
</script>
</html>

