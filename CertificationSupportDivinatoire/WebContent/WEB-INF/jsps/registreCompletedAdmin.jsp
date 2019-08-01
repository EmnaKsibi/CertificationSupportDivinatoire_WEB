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
   <style type="text/css">
	  h1 {
	  text-align: center;
	  font-weight: normal;
	  color: black;
	  text-transform: uppercase;
	  margin:10% 0 -50px 0 !important;
	  white-space: nowrap;
	  font-size: 14vw;
	  z-index: 1000;
	  font-family: 'Bangers', cursive;
	  text-shadow: 3px 3px 0 #5379fa;
	  @include skew(0, -6.7deg, false);
	  @include transition-property(font-size);
	  @include transition-duration(0.5s);
	 
	}
	
	@media screen and (max-width: 50em) {
	 h1 {
	    font-size: 20vw;
	   }
	}
	</style>
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
		  <a href='${pageContext.request.contextPath}/homeAdmin' class=" bar-item button barex hover-blue padding-16 "><i class="fa fa-home"></i>  ACCUEIL</a>		  
		  <div class="right">
			 <a class="bar-item button barex hover-blue padding-16" href='${pageContext.request.contextPath}/logout'>DÉCONNEXION</a>
		  </div>
	</div>
	
	<div class="display-container white center " id="certsection">
		<br class="hidesm">
		<h1>Succès</h1>
	    <p class="large">Le compte de &ldquo; <b class="  text-blue">${requestScope.newUser}</b> &rdquo; a été créé avec succès</p>
		<a href="${pageContext.request.contextPath}/homeAdmin"  class="button black hover-blue">Vérifiez la liste</a>  
		<a href="${pageContext.request.contextPath}/register"  class="button black hover-blue"> Ajoutez Un autre</a>  	
	</div>
	
	
</body>
</html>