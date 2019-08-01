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
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=16">
   <style type="text/css">
		.sidebar {
			z-index:3;
			width:230px;
			overflow:hidden !important;
			position:absolute !important;
			margin-bottom:-155px;
			}
	</style>	
    <title>Certification Support Divinatoire</title>
</head>



	<!-- partie entete -->
	<div class="row white padding hide-medium hide-small" style="margin-top:50px;">
	 <div class="col s5 notranslate" style="margin:4px 0 6px 0">
	 <a class="wikicosmos-logo" href="#underConstruction">Wikicosmos<span class="dotcom">.com</span></a></div>
	 <div class="col s7 margin-top wide hide-medium hide-small">
	  <div class="right" style="position:relative;top:5px;">CERTIFICATION SUPPORT DIVINATOIRE</div>  
	 </div>
	</div>
	
<body style="position: relative; min-height: 100%; top: 0px;" class="">

	<!-- partie Menu Nav horizontal-->
	<div class="bar theme card-2 wide notranslate">
	 <a class="bar-item button barex hover-blue padding-16 " href="javascript:void(0)" onclick="open_nav('tutorials')" id="navbtn_tutorials" style="visibility: visible;">TUTORIELS 
	 <i class="fa fa-caret-down" style="display: inline;"></i><i class="fa fa-caret-up" style="display: none;"></i></a>
	 <a class="bar-item button barex hover-blue padding-16" href="javascript:void(0)" onclick="open_nav('resultats')" id="navbtn_resultats">RÉSULTATS <i class="fa fa-caret-down" style="display: inline;"></i><i class="fa fa-caret-up" style="display:none"></i></a> 
	 <div class="right">
			<a class="bar-item button barex hover-blue padding-16 "  onclick="open_nav('settings')" id="navbtn_settings" style="text-transform: uppercase;">${sessionScope.user}<i class="fa fa-cogs" style="display: inline;"></i><i class="fa fa-cogs" style="display: none;"></i></a>
	  </div>
	</div>

	<!-- partie menu Nav vertical-->
	<div class="sidebar collapse white card-2" id="mySidenav">
		 <div class="bar-block">
		 <div class="container">
		  <h4 class="margin-top">Formation Tarot</h4>
		 </div>
			 <a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Introduction">Niveau 1</a>
			 <a class="bar-item button" href="#">Niveau 2</a>
			 <a class="bar-item button" href="#">Niveau 3</a>
			 <a class="bar-item button" href="#">Niveau 4</a>
			 <a class="bar-item button" href="#">Niveau 5</a>
		 <div class="container">
		  <h4 class="margin-top">Formation Oracle Gé</h4>
		 </div>
			 <a class="bar-item button" href="#">Niveau 1</a>
			 <a class="bar-item button" href="#">Niveau 2</a>
			 <a class="bar-item button" href="#">Niveau 3</a>
			 <a class="bar-item button" href="#">Niveau 4</a>
			 <a class="bar-item button" href="#">Niveau 5</a>
		 <div class="container">
		 <h4 class="margin-top">Formation de Belline</h4>
		 </div>
			 <a class="bar-item button" href="#">Niveau 1</a>
			 <a class="bar-item button" href="#">Niveau 2</a>
			 <a class="bar-item button" href="#">Niveau 3</a>
			 <a class="bar-item button" href="#">Niveau 4</a>
			 <a class="bar-item button" href="#">Niveau 5</a>
			 <div class="container">
		 <h4 class="margin-top">Formation Numerologie</h4>
		 </div>
			 <a class="bar-item button" href="#">Niveau 1</a>
			 <a class="bar-item button" href="#">Niveau 2</a>
			 <a class="bar-item button" href="#">Niveau 3</a>
			 <a class="bar-item button" href="#">Niveau 4</a>
			 <a class="bar-item button" href="#">Niveau 5</a>
			 <div class="container">
		 <h4 class="margin-top">Formation Astrologie</h4>
		 </div>
			 <a class="bar-item button" href="#">Niveau 1</a>
			 <a class="bar-item button" href="#">Niveau 2</a>
			 <a class="bar-item button" href="#">Niveau 3</a>
			 <a class="bar-item button" href="#">Niveau 4</a>
			 <a class="bar-item button" href="#">Niveau 5</a>
		
		<div class="container">
		 <h4 class="margin-top">Formation Réferentiel de Naissance</h4>
		 </div>
			 <a class="bar-item button" href="#">Niveau 1</a>
			 <a class="bar-item button" href="#">Niveau 2</a>
			 <a class="bar-item button" href="#">Niveau 3</a>
			 <a class="bar-item button" href="#">Niveau 4</a>
			 <a class="bar-item button" href="#">Niveau 5</a>
		</div>
	</div>


	<!-- partie detail de menu Nav nav_tutorials -->
	 <div id="nav_tutorials" class="light-grey card-2 hide-small navex" style="display: none;">
	 <span onclick="close_nav('tutorials')" class="button xlarge display-topright barex">×</span><br>
	 <div class="row-padding bar-block">
	 	   <div class="col l3 m6">
			     <h3 class="margin-top">Tutoriels Tarot</h3>
			   	 <a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Introduction">Niveau 1</a>
				 <a class="bar-item button" href="#">Niveau 2</a>
				 <a class="bar-item button" href="#">Niveau 3</a>
				 <a class="bar-item button" href="#">Niveau 4</a>
				 <a class="bar-item button" href="#">Niveau 5</a>
		  </div>
		  <div class="col l3 m6">
			     <h3 class="margin-top">Tutoriels Oracle Gé</h3>
			   	 <a class="bar-item button" href="#">Niveau 1</a>
				 <a class="bar-item button" href="#">Niveau 2</a>
				 <a class="bar-item button" href="#">Niveau 3</a>
				 <a class="bar-item button" href="#">Niveau 4</a>
				 <a class="bar-item button" href="#">Niveau 5</a>
		  </div><div class="col l3 m6">
			     <h3 class="margin-top">Tutoriels Oracle de Belline</h3>
			   	 <a class="bar-item button" href="#">Niveau 1</a>
				 <a class="bar-item button" href="#">Niveau 2</a>
				 <a class="bar-item button" href="#">Niveau 3</a>
				 <a class="bar-item button" href="#">Niveau 4</a>
				 <a class="bar-item button" href="#">Niveau 5</a>
		  </div><div class="col l3 m6">
			     <h3 class="margin-top">Tutoriels Numerologie</h3>
			   	 <a class="bar-item button" href="#">Niveau 1</a>
				 <a class="bar-item button" href="#">Niveau 2</a>
				 <a class="bar-item button" href="#">Niveau 3</a>
				 <a class="bar-item button" href="#">Niveau 4</a>
				 <a class="bar-item button" href="#">Niveau 5</a>
		  </div><div class="col l3 m6">
			     <h3 class="margin-top">Tutoriels Astrologie</h3>
			   	 <a class="bar-item button" href="#">Niveau 1</a>
				 <a class="bar-item button" href="#">Niveau 2</a>
				 <a class="bar-item button" href="#">Niveau 3</a>
				 <a class="bar-item button" href="#">Niveau 4</a>
				 <a class="bar-item button" href="#">Niveau 5</a>
		  </div><div class="col l3 m6">
			     <h3 class="margin-top">Tutoriels Réferentiel de Naissance </h3>
			   	 <a class="bar-item button" href="#">Niveau 1</a>
				 <a class="bar-item button" href="#">Niveau 2</a>
				 <a class="bar-item button" href="#">Niveau 3</a>
				 <a class="bar-item button" href="#">Niveau 4</a>
				 <a class="bar-item button" href="#">Niveau 5</a>
		  </div>
		  </div>
	 <br class="hidesm">
	</div> 

	<!-- partie detail de menu Nav nav_resultats -->
	<div id="nav_resultats" class="light-grey card-2 hide-small navex" style="display: none;">
	<span onclick="close_nav('resultats')" class="button xlarge display-topright barex">×</span><br>
	<div class="row-padding bar-block">
	   <div class="col l6 m5">
	             <h3 class="margin-top">Résultats Quiz</h3>
	             <a class="bar-item button" href="${pageContext.request.contextPath}/resultTarot">Résultats Tarot</a>
	             <a class="bar-item button" href="#">Résultats Oracle Gé</a>
	             <a class="bar-item button" href="#">Résultats Oracle de Belline</a>
	             <a class="bar-item button" href="#">Résultats Numerologie</a>
	             <a class="bar-item button" href="#">Résultats Astrologie</a>
	             <a class="bar-item button" href="#">Résultats Réferentiel de Naissance</a>
	     
	      </div>
	       <div class="col l6 m6">
	             <h3 class="margin-top">Résultats Certification</h3>
	             <a class="bar-item button" href="#">Certification Tarot</a>
	             <a class="bar-item button" href="#">Certification Oracle Gé</a>
	             <a class="bar-item button" href="#">Certification Oracle de Belline</a>
	             <a class="bar-item button" href="#">Certification Numerologie</a>
	             <a class="bar-item button" href="#">Certification Astrologie</a>
	             <a class="bar-item button" href="#">Certifications Réferentiel de Naissance</a>
	     
	      </div>
	 </div>
	 <br class="hidesm">
	</div>

	<!-- partie detail de menu Nav nav_settings -->
	<div id="nav_settings" class="light-grey card-2 hide-small navex padding" style="display: none;">
	<div class=" bar-block">
	   <div class="col l12 m12">
	         <a class="bar-item button " href="${pageContext.request.contextPath}/logout">Déconnexion</a>
	         <a class="bar-item button " href="${pageContext.request.contextPath}/changePassword">Changer le mot de passe</a>
	   </div>
	 </div>
	</div>
	
	<!-- MAIN -->
	<div class="main" id="main">
	<div class="display-container black" id="certsection">
	    <img src="${pageContext.request.contextPath}/images/book.png" style="max-width:100%;margin:auto;display:block" >
	    <div class="certoverlay">
	  	  <br class="hide-small hide-medium">
	      <h2>Bienvenue à Certification support divinatoire</h2>
	      <h3>Ce site est dédié à l'apprentissage de plusieurs outils liés aux divinations</h3>
	       <p>
			<br>Vous pouvez consulter notre support des tutoriels!
			<br>Vous pouvez tester votre niveau!
			<br>Vous pouvez vérifier vos résultats!</p>
	    </div>
	</div>

	<div class="row margin-bottom">
		 <div class="col l6 center " style="padding:3%">
			  <h1>Tarot</h1>
			  <p class="xlarge text-dark-grey">Tarot de Marseille </p>
			  <p> Cette Formation contient 5 Niveaux, des audios, des exercices et documents pour vous permettre de travailler à votre rythme. </p> 
			  <a href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Introduction" class="button dark-grey">FORMATION</a>
			  <a href="${pageContext.request.contextPath}/resultTarot" class="button dark-grey">RÉSULTATS</a>	  
		 </div>
		 <div class="col l6" style="padding:3%">
			  <div class="hide-small light-grey card-2" style="padding:16px;">
			       <img src="${pageContext.request.contextPath}/images/tarotMarseilleDefault.jpg" style="max-width:100%;margin:auto;display:block">	   
			  </div>
		 </div>
	</div>

	<div class="row light-grey hide-medium hide-small">
		 <div class="col l6" style="padding-top:40px;padding:3%;">
			  <div class="hide-small light-grey card-2" style="padding:16px;">
			       <img src="${pageContext.request.contextPath}/images/oracleGeDefault.jpg" style="max-width:100%;margin:auto;display:block">
			  </div>
		 </div>
		 <div class="col l6 center " style="padding:3%">
			  <h1>Oracle Gé</h1>
			  <p class="xlarge">Oracle Gé</p>
				<p> Cette Formation contient 5 Niveaux, des audios, des exercices et documents pour vous permettre de travailler à votre rythme. </p> 
			  <a href="#" class="button dark-grey">FORMATION</a>
			   <a href="#" class="button dark-grey">RÉSULTATS</a>
		 </div>
	</div>

	<div class="row margin-bottom">
		 <div class="col l6 center " style="padding:3%">
			  <h1>Oracle Belline </h1>
			  <p class="xlarge text-dark-grey">Oracle de Belline </p> 
			 <p> Cette Formation contient 5 Niveaux, des audios, des exercices et documents pour vous permettre de travailler à votre rythme. </p>   
			   <a href="#" class="button dark-grey">FORMATION</a>
			   <a href="#" class="button dark-grey">RÉSULTATS</a>	  
		 </div>
		 <div class="col l6" style="padding:3%">
			  <div class="hide-small light-grey card-2" style="padding:16px;">
			       <img src="${pageContext.request.contextPath}/images/oracleBellineDefault.jpg" style="max-width:100%;margin:auto;display:block" >	   
			  </div>
		 </div>
	</div>

	<div class="row light-grey hide-medium hide-small">
		 <div class="col l6 " style="padding-top:40px;padding:3%;">
			  <div class="hide-small light-grey card-2" style="padding:16px;">
			       <img src="${pageContext.request.contextPath}/images/numerologyDefault.jpg" style="max-width:100%;margin:auto;display:block" >		  
			  </div>
		 </div>
		 <div class="col l6 center " style="padding:3%">
			  <h1>Numerologie</h1>
			  <p class="xlarge">Numerologie</p>
			  <p> Cette Formation contient 5 Niveaux, des audios, des exercices et documents pour vous permettre de travailler à votre rythme. </p> 
				<a href="#" class="button dark-grey">FORMATION</a>
			   <a href="#" class="button dark-grey">RÉSULTATS</a>
		 </div>
	</div>
	
	<div class="row margin-bottom">
		 <div class="col l6 center " style="padding:3%">
			  <h1>Astrologie</h1>
			  <p class="xlarge text-dark-grey">Astrologie</p>
				<p> Cette Formation contient 5 Niveaux, des audios, des exercices et documents pour vous permettre de travailler à votre rythme. </p> 		  
			  <a href="#" class="button dark-grey">FORMATION</a>
			   <a href="#" class="button dark-grey">RÉSULTATS</a>	  
		 </div>
		 <div class="col l6" style="padding:3%">
			  <div class="hide-small light-grey card-2" style="padding:16px;">
			       <img src="${pageContext.request.contextPath}/images/astrologyDefault.jpg" style="max-width:100%;margin:auto;display:block" >	   
			  </div>
		 </div>
	</div>

	<div class="row light-grey hide-medium hide-small">
		 <div class="col l6" style="padding-top:40px;padding:3%;">
			  <div class="hide-small light-grey card-2" style="padding:16px;">
			       <img src="${pageContext.request.contextPath}/images/referentielDefault.jpg" style="max-width:50%;margin:auto;display:block" >	  
			  </div>
		 </div>
		 <div class="col l6 center " style="padding:3%">
			  <h1>Référentiel</h1>
			  <p class="xlarge">Référentiel de Naissance</p>
				<p> Cette Formation contient 5 Niveaux, des audios, des exercices et documents pour vous permettre de travailler à votre rythme. </p> 		  
		     	<a href="#" class="button dark-grey">FORMATION</a>
			    <a href="#" class="button dark-grey">RÉSULTATS</a>
		 </div>
	</div>

	<div class="white center padding-large padding-16" style="padding-bottom:36px!important">
	  <h2 class="xxlarge">Feedback</h2>
	  <h4 class="text-dark-grey">Avez-vous des idées?</h4>
	  <div class="content hide-device">
	    <div class="row-padding" style="margin:32px -16px">
	      <div class="col l6 s12">
	        <iframe src="/howto/tryhow_css_sidenav_ifr.htm" style="width:100%;border:5px solid #ddd;height:300px"></iframe>
	      </div>
	      <div class="col l6 hide-small hide-medium">
	        <iframe src="/howto/tryhow_css_sidenav_ifr2.htm" style="width:100%;border:5px solid #ddd;height:300px"></iframe>
	      </div>
	    </div>
	  </div>
	  <p><a href='${pageContext.request.contextPath}/feedback' class="button dark-grey padding-large mobile">CONTACTEZ NOUS</a></p>
	</div>
	
	<div class="display-container black" id="certsection">
	    <img src="${pageContext.request.contextPath}/images/mystic.jpg" style="max-width:100%;margin:auto;display:block" alt="W3 Certificates"> 
	</div>
	<div class="container dark-grey center padding-32">
		 <p class="medium">
		 WikiCosmos is optimized for learning, testing, and training to improve readings and basic understanding. 
		 Tutorials, certifcation, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of
		 all content.<br>
		 <a href="#" class="hover-text-blue">Copyright 2019</a> All Rights Reserved.<br><br></p>
		 <br class="hidesm">
	</div>
	
	
	
</div>
<!--END MAIN -->



<script>

	function open_nav(x) {
	  if (document.getElementById("nav_" + x).style.display == "block") {
	    close_nav(x);
	  } else {
	    close_nav("tutorials");
	    close_nav("resultats");
	    close_nav("settings");

	    document.getElementById("nav_" + x).style.display = "block";
	    if (document.getElementById("navbtn_" + x)) {
	      document.getElementById("navbtn_" + x).getElementsByTagName("i")[0].style.display = "none";
	      document.getElementById("navbtn_" + x).getElementsByTagName("i")[1].style.display = "inline";
	    } 
	   
	  }
	}
	function close_all_nav() {
	  close_nav("tutorials");
	  close_nav("resultats");
	 close_nav("settings");

	  close();
	}
	function close_nav(x) {
	  document.getElementById("nav_" + x).style.display = "none";
	  if (document.getElementById("navbtn_" + x)) {
	    document.getElementById("navbtn_" + x).getElementsByTagName("i")[0].style.display = "inline";
	    document.getElementById("navbtn_" + x).getElementsByTagName("i")[1].style.display = "none";
	  }
	  
	}

</script>


</body>
</html>