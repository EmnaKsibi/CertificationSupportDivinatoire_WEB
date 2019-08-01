<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1"> 
   <link rel="icon" href="/favicon.ico" type="image/x-icon">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" >
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/W3.css?v=7">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=9">
   <title>Certification Support Divinatoire</title>
</head>

<body style="position: relative; min-height: 100%; top: 0px;" class="">

	<!-- partie entete -->
	<div class="row white padding hide-medium hide-small" style="margin-top:50px;">
	 <div class="col s5 notranslate" style="margin:4px 0 6px 0">
	 <a class="wikicosmos-logo" href="#underConstruction">Wikicosmos<span class="dotcom">.com</span></a></div>
	 <div class="col s7 margin-top wide hide-medium hide-small">
	  <div class="right" style="position:relative;top:5px;">CERTIFICATION SUPPORT DIVINATOIRE</div>  
	 </div>
	</div>

	<div class="bar theme card-2 wide notranslate">	
		  <a href='${pageContext.request.contextPath}/homeUser' class=" bar-item button barex hover-blue padding-16 "><i class="fa fa-home"></i>  ACCUEIL</a>		  
		  <div class="right">
			 <a class="bar-item button barex hover-blue padding-16" href='${pageContext.request.contextPath}/logout'>DÉCONNEXION</a>
		  </div>
	</div>
	
	<div class="display-container white center" id="certsection">
		<br class="hidesm">
		<img src="${pageContext.request.contextPath}/images/registred.jpg" style="max-width:50%;margin: 3% auto;display:block" >    
		<h2>Merci pour votre feedback <b class=" text-green">${sessionScope.user}</b>.</h2>
		<p>Vos suggestions ont été envoyées au webmaster.</p>
	</div>
	
	
</body>
</html>