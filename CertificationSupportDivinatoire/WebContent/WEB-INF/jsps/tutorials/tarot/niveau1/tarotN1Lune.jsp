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
  	    #main {
        padding: 45px 25px 30px 25px;  	
		}
		.sidebar {
			z-index:3;
			width:230px;
			overflow:hidden !important;
			position:absolute !important;
			margin-bottom:-155px;
			}
			
		 .sticky {
		  position: fixed;
		  top: 0;
		  width: 100%;			
		  z-index:4;
		  
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
   <div class="header" id="myHeader">
		<div style="position: relative; min-height: 100%; top: 0px;" class="">
			<div class="bar theme card-2 wide notranslate">	
				  <a href='${pageContext.request.contextPath}/homeUser' class=" bar-item button barex hover-blue padding-16 "><i class="fa fa-home"></i>  ACCUEIL</a>		  
				  <div class="right">
					 <a class="bar-item button barex hover-blue padding-16" href='${pageContext.request.contextPath}/logout'>DÉCONNEXION</a>
				  </div>
			</div>
		</div>
	</div>
	
	<!-- Menu GAUCHE -->
	<div class="sidebar collapse light-grey card-2 " id="mySidenav">
		 <div class="bar-block">
		 	<div class="container">
		 		<h4 class="margin-top ">TAROT NIVEAU 1</h4>
		 	</div>	
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Introduction">Introduction</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Bateleur">Bateleur</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Papesse">Papesse</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Imperatrice">Impératrice</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Empereur">Empereur</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Pape">Pape</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Amoureux">Amoureux</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Chariot">Chariot</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Justice">Justice</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Hermite">Hermite</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/RoueDeFortune">Roue de Fortune</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Force">Force</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Pendu">Pendu</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/ArcaneSansNom">Arcane Sans Nom</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Temperance">Tempérance</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Diable">Diable</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/MaisonDieu">Maison Dieu</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Etoile">Etoile</a>
				<a class="bar-item button active" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Lune">Lune</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Soleil">Soleil</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Jugement">Jugement</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Monde">Monde</a>
				<a class="bar-item button" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Mat">Mat</a>
			 <div class="container">
			  <h4 class="margin-top">TAROT NIVEAU  2</h4>
			 </div>
				 <a class="bar-item button" href="#">sousTitre 1</a>
				 <a class="bar-item button" href="#">sousTitre 2</a>
				 <a class="bar-item button" href="#">sousTitre 3</a>
				 <a class="bar-item button" href="#">sousTitre 4</a>
				 <a class="bar-item button" href="#">sousTitre 5</a>
			 <div class="container">
			 <h4 class="margin-top">TAROT NIVEAU 3</h4>
			 </div>
				 <a class="bar-item button" href="#">sousTitre 1</a>
				 <a class="bar-item button" href="#">sousTitre 2</a>
				 <a class="bar-item button" href="#">sousTitre 3</a>
				 <a class="bar-item button" href="#">sousTitre 4</a>
				 <a class="bar-item button" href="#">sousTitre 5</a>
			 <div class="container">
				<h4 class="margin-top">TAROT NIVEAU 4</h4>
			</div>
				<a class="bar-item button" href="#">sousTitre 1</a>
				 <a class="bar-item button" href="#">sousTitre 2</a>
				 <a class="bar-item button" href="#">sousTitre 3</a>
				 <a class="bar-item button" href="#">sousTitre 4</a>
				 <a class="bar-item button" href="#">sousTitre 5</a>
			<div class="container">
				<h4 class="margin-top">TAROT NIVEAU 5</h4>
			</div>
			    <a class="bar-item button" href="#">sousTitre 1</a>
				 <a class="bar-item button" href="#">sousTitre 2</a>
				 <a class="bar-item button" href="#">sousTitre 3</a>
				 <a class="bar-item button" href="#">sousTitre 4</a>
				 <a class="bar-item button" href="#">sousTitre 5</a>
		</div>	
	</div>

	
	
	
	<!-- MAIN -->
	<div class="main" id="main" >
	 	<div class="col l12 m12 " >
	        <div class="tutorialTitle">
	            <strong>Lune</strong> <br>
	            <em>Tarot de Marseille Niveau 1</em> 	
	        </div>
			<div class="clear nextprev ">	
       		   <br><br>
			   <a class="right btn blue" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Soleil">Suivant »</a>
			   	<a class="left btn blue" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Etoile">« Précédant</a>

			</div>
			<hr>
			<h2>Lune Introduction</h2>
			<p class="intro">
				Le jeu de Tarot dans sa grande tradition respecte une architecture qui n’est en aucun cas le fruit du hasard. <br>
				Sa structure parfaite et complexe est unité et cohérence interne exceptionnelle. <br>
				Bien des auteurs ont passé leur vie à la recherche de ses secrets comme on le ferait avec les pièces d’un puzzle ou les fragments d’objets archéologiques.<br>
				Voici la répartition de ces 22 cartes pour lesquelles on privilégiera le terme de « lames » ou « arcanes » :<br>
				– 22 arcanes majeurs numérotés de 1 à 21, auxquels s’ajoute Le Mat qui ne porte pas de nombre.<br>
				La subdivision des vingt-deux lames majeures diffère souvent selon les différents courants de pensées et traditions ésotériques. <br>
				En considérant que ces arcanes sont autant de portes à ouvrir pour accéder à la sagesse et à une conscience lumineuse, il est important de ne pas s’enfermer dans des dogmes et des systèmes de décryptage rigides.
			</p>
			<hr>
			<h2>Lune Mot clé</h2>
			<ul>
				<li>Sa structure <b>parfaite</b> et <b>complexe</b>.</li>
				<li>Sa structure parfaite <b>complexe</b>.</li>
			 	<li>Sa structure parfaite et <b>complexe</b>.</li>
				<li>Sa structure: <b>"complexe"</b>.</li>
			</ul>
			<hr>
			<h2>Lune Audio</h2>
			<div>
				<p>Écoutez le cours suivant pour renforcer vos idées.</p>
				<audio src="${pageContext.request.contextPath}/audio/TarotMarseilleNiveau1Lune.mp3" controls controlsList="nodownload" ></audio>
			</div>
			<hr>
			<div class="row margin-bottom">
				<div class="col l6 ">
				 	<h2>Lune Quiz</h2>
				 	 <ul>
						<li>cette petite introduction est évaluée par un quiz.</li>
						<li>Afin de passer au niveau suivant, vous devez réussir ce test.</li>
						<li> <i class="fa fa-exclamation-triangle"></i>Quiz Précédant doit être validé <b class="text-red">avant</b> de passer ce test!</li>
					</ul>
					
					<a id="startQuizButton" href="${pageContext.request.contextPath}/takeExam?niveau=TarotMarseilleNiveau1&&test=Lune&&previousExamToValidate=Etoile" class="button dark-grey">Répondez au quiz maintenant</a>		  				 		
				</div>
			 	<div class="col l6" style="padding:3%">
				   <img src="${pageContext.request.contextPath}/images/TarotMarseilleNiveau1Lune.jpg" style="max-width:90%;margin:auto;display:block">	   
			 	</div> 
			</div>
			<br>
			<div class="clear nextprev">
				<a class="right btn blue" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Soleil">Suivant »</a>
			    <a class="left btn blue" href="${pageContext.request.contextPath}/TarotMarseilleNiveau1/Etoile">« Précédant</a>

			</div>
			<br>
		</div>
	</div>
	<!--END MAIN -->



	<!--FOOTER -->
	<div id="footer" class="footer container white">
	</div>
<!--END MAIN -->



<script>
window.onscroll = function() {myFunction()};
var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}	

</script>


</body>
</html>