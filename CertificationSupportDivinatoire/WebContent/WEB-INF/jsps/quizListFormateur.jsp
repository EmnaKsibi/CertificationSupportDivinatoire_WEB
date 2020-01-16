<%@ page language="java" contentType="text/html; charset=UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<link rel="icon" href="/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/W3.css?v=8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=201">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.5/css/ui.jqgrid.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.5/js/jquery.jqgrid.min.js"></script>
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
	  <a class="bar-item button barex hover-blue padding-16" href='${pageContext.request.contextPath}/homeFormateur' >ACCUEIL </a>
	   <a class="bar-item button barex hover-blue padding-16"href='${pageContext.request.contextPath}/quizList'>QUIZ</a>
	  <a class="bar-item button barex hover-blue padding-16" href="javascript:void(0)" onclick="open_nav('resultats')" id="navbtn_resultats">RÉSULTATS <i class="fa fa-caret-down" style="display: inline;"></i><i class="fa fa-caret-up" style="display:none"></i></a>
	  <div class="right">
			<a class="bar-item button barex hover-blue padding-16 "  onclick="open_nav('settings')" id="navbtn_settings" style="text-transform: uppercase;">${sessionScope.user}<i class="fa fa-cogs" style="display: inline;"></i><i class="fa fa-cogs" style="display: none;"></i></a>
	  </div>
	</div>

	<!-- partie detail de menu Nav nav_resultats -->
	 <div id="nav_resultats" class="light-grey card-2 hide-small navex" style="display: none;">
	 <span onclick="close_nav('resultats')" class="button xlarge display-topright barex">×</span><br>
	 <div class="row-padding bar-block">
		   <div class="col l3 m6">
				     <h3 class="margin-top">Résultats Tarot</h3>
				   	 <a class="bar-item button" href="${pageContext.request.contextPath}/resultFormateur?levelToCheck=TarotMarseilleNiveau1">Niveau 1</a>
				   	 <a class="bar-item button" href="${pageContext.request.contextPath}/resultFormateur?levelToCheck=TarotMarseilleNiveau2">Niveau 2</a>
				   	 <a class="bar-item button" href="${pageContext.request.contextPath}/resultFormateur?levelToCheck=TarotMarseilleNiveau3">Niveau 3</a>
				   	 <a class="bar-item button" href="${pageContext.request.contextPath}/resultFormateur?levelToCheck=TarotMarseilleNiveau4">Niveau 4</a>
				   	 <a class="bar-item button" href="${pageContext.request.contextPath}/resultFormateur?levelToCheck=TarotMarseilleNiveau5">Niveau 5</a>
				  </div>
			  <div class="col l3 m6">
				     <h3 class="margin-top">Résultats Oracle Gé</h3>
				   	 <a class="bar-item button" href="#">Niveau 1</a>
					 <a class="bar-item button" href="#">Niveau 2</a>
					 <a class="bar-item button" href="#">Niveau 3</a>
					 <a class="bar-item button" href="#">Niveau 4</a>
					 <a class="bar-item button" href="#">Niveau 5</a>
			  </div><div class="col l3 m6">
				     <h3 class="margin-top">Résultats Oracle de Belline</h3>
				   	 <a class="bar-item button" href="#">Niveau 1</a>
					 <a class="bar-item button" href="#">Niveau 2</a>
					 <a class="bar-item button" href="#">Niveau 3</a>
					 <a class="bar-item button" href="#">Niveau 4</a>
					 <a class="bar-item button" href="#">Niveau 5</a>
			  </div><div class="col l3 m6">
				     <h3 class="margin-top">Résultats Numerologie</h3>
				   	 <a class="bar-item button" href="#">Niveau 1</a>
					 <a class="bar-item button" href="#">Niveau 2</a>
					 <a class="bar-item button" href="#">Niveau 3</a>
					 <a class="bar-item button" href="#">Niveau 4</a>
					 <a class="bar-item button" href="#">Niveau 5</a>
			  </div><div class="col l3 m6">
				     <h3 class="margin-top">Résultats Astrologie</h3>
				   	 <a class="bar-item button" href="#">Niveau 1</a>
					 <a class="bar-item button" href="#">Niveau 2</a>
					 <a class="bar-item button" href="#">Niveau 3</a>
					 <a class="bar-item button" href="#">Niveau 4</a>
					 <a class="bar-item button" href="#">Niveau 5</a>
			  </div><div class="col l3 m6">
				     <h3 class="margin-top">Résultats Réferentiel de Naissance </h3>
				   	 <a class="bar-item button" href="#">Niveau 1</a>
					 <a class="bar-item button" href="#">Niveau 2</a>
					 <a class="bar-item button" href="#">Niveau 3</a>
					 <a class="bar-item button" href="#">Niveau 4</a>
					 <a class="bar-item button" href="#">Niveau 5</a>
		  </div>
		 </div>
		 <br class="hidesm">
	</div>


	<!-- partie menu Nav vertical sidebar-->
	<div class="sidebar collapse white card-2" id="mySidenav">
		 <div class="bar-block">
		 <div class="container">
		  <h4 class="margin-top">Quiz Tarot</h4>
		 </div>
			 <a class="bar-item button" href="#jqGridTarot"">Niveau 1</a>
			 <a class="bar-item button" href="#jqGridTarot">Niveau 2</a>
			 <a class="bar-item button" href="#jqGridTarot">Niveau 3</a>
			 <a class="bar-item button" href="#jqGridTarot">Niveau 4</a>
			 <a class="bar-item button" href="#jqGridTarot">Niveau 5</a>
		 <div class="container">
		  <h4 class="margin-top">Quiz Oracle Gé</h4>
		 </div>
			 <a class="bar-item button" href="#quizOracleGe">Niveau 1</a>
			 <a class="bar-item button" href="#quizOracleGe">Niveau 2</a>
			 <a class="bar-item button" href="#quizOracleGe">Niveau 3</a>
			 <a class="bar-item button" href="#quizOracleGe">Niveau 4</a>
			 <a class="bar-item button" href="#quizOracleGe">Niveau 5</a>
		 <div class="container">
		 <h4 class="margin-top">Quiz Numerologie</h4>
		 </div>
			 <a class="bar-item button" href="#quizNumerologie">Niveau 1</a>
			 <a class="bar-item button" href="#quizNumerologie">Niveau 2</a>
			 <a class="bar-item button" href="#quizNumerologie">Niveau 3</a>
			 <a class="bar-item button" href="#quizNumerologie">Niveau 4</a>
			 <a class="bar-item button" href="#quizNumerologie">Niveau 5</a>
			 <div class="container">
		 <h4 class="margin-top">Quiz Astrologie</h4>
		 </div>
			 <a class="bar-item button" href="#quizAstrologie">Niveau 1</a>
			 <a class="bar-item button" href="#quizAstrologie">Niveau 2</a>
			 <a class="bar-item button" href="#quizAstrologie">Niveau 3</a>
			 <a class="bar-item button" href="#quizAstrologie">Niveau 4</a>
			 <a class="bar-item button" href="#quizAstrologie">Niveau 5</a>
		
		<div class="container">
		 <h4 class="margin-top">Quiz Réferentiel de Naissance</h4>
		 </div>
			 <a class="bar-item button" href="#quizReferentiel">Niveau 1</a>
			 <a class="bar-item button" href="#quizReferentiel">Niveau 2</a>
			 <a class="bar-item button" href="#quizReferentiel">Niveau 3</a>
			 <a class="bar-item button" href="#quizReferentiel">Niveau 4</a>
			 <a class="bar-item button" href="#quizReferentiel">Niveau 5</a>
		<div class="container">
		<h4 class="margin-top">Quiz de Belline</h4>
		</div>
			 <a class="bar-item button" href="#quizBelline">Niveau 1</a>
			 <a class="bar-item button" href="#quizBelline">Niveau 2</a>
			 <a class="bar-item button" href="#quizBelline">Niveau 3</a>
			 <a class="bar-item button" href="#quizBelline">Niveau 4</a>
			 <a class="bar-item button" href="#quizBelline">Niveau 5</a>
		</div>
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
	<div class="main" id="main" >
	

	<div class="row margin-bottom" id="quizTarot">
		 <div class="col l4 center " style="padding:3%;">
			  <h1>Tarot</h1>
			  <p class="xlarge text-dark-grey ">Quiz Tarot de Marseille</p>
			  <div class="panel info intro">
			  <p>
				Vous pouvez vérifier le quiz pour le tarot de Marseille en cliquant sur l'icône <i class="fa fa-plus-circle"></i>.
			  </p>
			  </div>
			  <a href="${pageContext.request.contextPath}/feedback"  class="button dark-grey">Soumettre une Erreur</a>
	    </div>
		 <div class="col l8" style="padding:3%;">
			  <div class="hide-small hide-medium light-grey card-2"style="padding:16px;">
					<table id="jqGridTarot"></table>
					<div id="jqGridPagerTarot" ></div>
			  </div>
		 </div>
	</div>

	<div class="row light-grey margin-bottom" id="quizOracleGe">
		 <div class="col l8" style="padding:3%">
			  <div class="hide-small hide-medium light-grey card-2">
					<table id="jqGridOracleGe"></table>
					<div id="jqGridPagerOracleGe"  ></div>
			   </div>
		 </div>
		 <div class="col l4 center " style="padding:3%">
			  <h1>Oracle Gé</h1>
			   <p class="xlarge text-dark-grey ">Quiz Oracle Gé </p>
			  <div class="panel info intro">
			  <p>
				Vous pouvez vérifier le quiz pour Oracle Gé en cliquant sur l'icône <i class="fa fa-plus-circle"></i>.
			  </p>
			  </div>
			  <a href="${pageContext.request.contextPath}/feedback"  class="button dark-grey">Soumettre une Erreur</a>
	    </div>
	</div>

	<div class="row margin-bottom"id="quizNumerologie">
		 <div class="col l4 center " style="padding:3%;">
			  <h1>Numerologie</h1>
			  <p class="xlarge text-dark-grey ">Quiz Numerologie </p>
			  <div class="panel info intro">
			  <p>
				Vous pouvez vérifier le quiz pour Numerologie en cliquant sur l'icône <i class="fa fa-plus-circle "></i>.
			  </p>
			  </div>
			  <a href="${pageContext.request.contextPath}/feedback"  class="button dark-grey">Soumettre une Erreur</a>
	    </div>
		 <div class="col l8" style="padding:3%;">
			  <div class="hide-small hide-medium light-grey card-2" >
					<table id="jqGridNumerologie"></table>
					<div id="jqGridPagerNumerologie"  ></div>
	
			  </div>
		 </div>
	</div>
	
	<div class="row light-grey margin-bottom"id="quizAstrologie">
		 <div class="col l8" style="padding:3%">
			  <div class="hide-small hide-medium light-grey card-2">
					<table id="jqGridAstrologie"></table>
					<div id="jqGridPagerAstrologie"></div>	
			   </div>
		 </div>
		 <div class="col l4 center " style="padding:3%">
			  <h1>Astrologie</h1>
			  <p class="xlarge text-dark-grey ">Quiz Astrologie</p>
			  <div class="panel info intro">
				  <p>
					Vous pouvez vérifier le quiz pour l'Astrologie en cliquant sur l'icône <i class="fa fa-plus-circle"></i>.
				  </p>
			  </div>
			  <a href="${pageContext.request.contextPath}/feedback"  class="button dark-grey">Soumettre une Erreur</a>
		
	    </div>
	</div>

	<div class="row margin-bottom"id="quizReferentiel">
		 <div class="col l4 center " style="padding:3%;">
			  <h1>Réferentiel </h1>
			 <p class="xlarge text-dark-grey ">Quiz Réferentiel de Naissance </p>
			  <div class="panel info intro">
			  <p>
				Vous pouvez vérifier le quiz pour Réferentiel de Naissance en cliquant sur l'icône <i class="fa fa-plus-circle"></i>.
			  </p>
			  </div>
			  <a href="${pageContext.request.contextPath}/feedback"  class="button dark-grey">Soumettre une Erreur</a>
	    </div>
		 <div class="col l8" style="padding:3%;">
			  <div class="hide-small hide-medium light-grey card-2" >
					<table id="jqGridReferentiel"></table>
					<div id="jqGridPagerReferentiel"  ></div>
			  </div>
		 </div>
	</div>
	
	<div class="row light-grey margin-bottom" id="quizBelline">
		 <div class="col l8" style="padding:3%">
			  <div class="hide-small hide-medium light-grey card-2">
					<table id="jqGridBelline"></table>
					<div id="jqGridPagerBelline"  ></div>
			   </div>
		 </div>
		 <div class="col l4 center " style="padding:3%">
			  <h1>Belline</h1>
			   <p class="xlarge text-dark-grey ">Quiz Belline </p>
			  <div class="panel info intro">
			  <p>
				Vous pouvez vérifier le quiz pour Belline en cliquant sur l'icône <i class="fa fa-plus-circle"></i>.
			  </p>
			  </div>
			  <a href="${pageContext.request.contextPath}/feedback"  class="button dark-grey">Soumettre une Erreur</a>
	    </div>
	</div>

	<!--Footer -->
	<div class="display-container black " id="certsection">
	    <img src="${pageContext.request.contextPath}/images/book.png" style="max-width:100%;margin:auto;display:block" >
	    <div class="certoverlay hide-small ">
	  	  <br class="hide-small hide-medium">
	      <h2>Bienvenue à Certification support divinatoire</h2>
	      <h3>Ce site est dédié à l'apprentissage de plusieurs outils liés aux divinations</h3>
	       <p>
			<br>Vous pouvez examiner la liste des voyants!
			<br>Vous pouvez consulter la liste de quiz et les réponses!		
			<br>Vous pouvez examiner l'avancement de chaque voyant!
			</p>
	    </div>
	</div>
	<div class="container dark-grey center padding-32 ">
			 <p class="medium">
			 WikiCosmos is optimized for learning, testing, and training to improve readings and basic understanding. 
			 Tutorials, Quizzes, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of
			 all content.<br>
			 <a href="#" class="hover-text-blue">Copyright 2019</a> All Rights Reserved.<br><br></p>
			 <br class="hidesm">
	</div>
	
	
</div>
<!--END MAIN -->	




<script type="text/javascript"  >
	//replace icons with FontAwesome icons like above
	function updatePagerIcons(table) {
		var replacement =
		{
			'ui-icon-seek-first' : 'ace-icon fa fa-angle-double-left bigger-140',
			'ui-icon-seek-prev' : 'ace-icon fa fa-angle-left bigger-140',
			'ui-icon-seek-next' : 'ace-icon fa fa-angle-right bigger-140',
			'ui-icon-seek-end' : 'ace-icon fa fa-angle-double-right bigger-140'
	
		};
		
		$('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function(){
			var icon = $(this);
			var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
				   
			if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
		})
	}

var mydata= [
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Bateleur" ,        attr: {niveau: {rowspan: "22"},   quizName: {rowspan: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Papesse"  ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Imperatrice",      attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Empereur",         attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Pape",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Amoureux",   	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Chariot" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Justice",      	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Hermite" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Roue de Fortune" , attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Force",     		attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Pendu" ,    	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Arcane Sans Nom",  attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Temperance",       attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Diable",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Maison Dieu" ,     attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Etoile" ,          attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Lune",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Soleil",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Jugement" ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Monde",            attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau1" ,quizName: "Mat" ,             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    
    
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz" ,        attr: {niveau: {rowspan: "22"},   quizName: {rowspan: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz"  ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",      attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",         attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",   	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",      	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz" , attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",     		attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz" ,    	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",  attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",       attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz" ,     attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz" ,          attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz" ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz",            attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau2" ,quizName: "Titre quiz" ,             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    
    
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz" ,        attr: {niveau: {rowspan: "22"},   quizName: {rowspan: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz"  ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",      attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",         attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",   	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",      	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz" , attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",     		attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz" ,    	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",  attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",       attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz" ,     attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz" ,          attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz" ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz",            attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau3" ,quizName: "Titre quiz" ,             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    
    
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz" ,        attr: {niveau: {rowspan: "22"},   quizName: {rowspan: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz"  ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",      attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",         attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",   	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",      	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz" , attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",     		attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz" ,    	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",  attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",       attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz" ,     attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz" ,          attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz" ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz",            attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau4" ,quizName: "Titre quiz" ,             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz" ,        attr: {niveau: {rowspan: "22"},   quizName: {rowspan: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz"  ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",      attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",         attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",   	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",      	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz" ,     	attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz" , attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",     		attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz" ,    	    attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",  attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",       attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz" ,     attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz" ,          attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",           attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz" ,        attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz",            attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    { niveau: "TarotMarseilleNiveau5" ,quizName: "Titre quiz" ,             attr: {niveau: {display: "none"}, quizName: {display: "1"}} },
    
    ],
    arrtSetting = function (rowId, val, rawObject, cm) {
        var attr = rawObject.attr[cm.name], result;
        if (attr.rowspan) {
            result = ' rowspan=' + '"' + attr.rowspan + '"';
        } else if (attr.display) {
            result = ' style="display:' + attr.display + '"';
        }
        return result;
    };    
    

jQuery(function($) {
	jQuery("#jqGridTarot").jqGrid({
		datatype: "local",
		data: mydata,
		
		 colNames: ['Niveau', 'quizName'],
		    colModel: [
		        { name: 'quizName',    align: 'center', cellattr: arrtSetting,resizable:false ,
	      			 search:true, searchoptions: {attr: { placeholder: "Chercher un Quiz?" },}},
		        { name: 'niveau',width:100 ,align: 'center', cellattr: arrtSetting,resizable:false, 
	          			 search:true, searchoptions: {attr: { placeholder: "Chercher un Niveau?" },}},
		        ],
				
		loadonce: true,
       autowidth: true,
       autoheight: true,
       rowNum:44,
		viewrecords: true,
	    pager: "#jqGridPagerTarot",
		altRows: true,                                                 
		multiselect: false,
		multiboxonly: true,
	    caption : 'Tarot de Marseille Quiz Selon Niveau',
	  
	    cmTemplate: {sortable: false},
	    gridview: true,
	    hoverrows: false,
	    autoencode: true,
	    ignoreCase: true,
	  
		loadComplete : function() {
	            //update icons function
				var table = this;
				setTimeout(function(){
							updatePagerIcons(table);
				}, 0);					
		},
		subGrid: true, 
        subGridRowExpanded: showChildGrid, 
			
		}).jqGrid('filterToolbar',{
	           stringResult: true,
	           searchOperators: true,
	           ignoreCase: true,

	    });          
			
    function showChildGrid(parentRowID, parentRowKey) {
        var childGridID = parentRowID + "_table";  
        var childGridPagerID = parentRowID + "_pager";
		
        var quizLevelSelected = $('#jqGridTarot').jqGrid('getCell',parentRowKey,'niveau');   
		var quizTitleSelected = $('#jqGridTarot').jqGrid('getCell',parentRowKey,'quizName');   

        $('#' + parentRowID).append('<table id=' + childGridID + '></table><div id=' + childGridPagerID + ' class=scroll></div>');

        $("#" + childGridID).jqGrid({
        	url : '${pageContext.request.contextPath}/quizXml.jsp',
        	postData: {quizTitle : quizLevelSelected+quizTitleSelected},
        	datatype : 'xml',
    		mtype : 'POST',
    		
    		colNames : ['Question','correct'],
    	
    		   colModel: [
    		   { label: 'question', name: 'question',hidden : false, sortable:false,resizable:false,search:false  },
    		   { label:'correct', name: 'correct',hidden:false, sortable:false,width:90,resizable:false,search:false  }
    		],
          
            autowidth: true,
            autoheight: true,
			loadonce: true,
			altRows: true,                                                 
			viewrecords: true,
	        rownumbers: true,
	        loadComplete : function() {
				var table = this;
				setTimeout(function(){
							updatePagerIcons(table);
				}, 0);
				
			},  
            caption: "Quiz pour "+quizTitleSelected,	

        });
 }
});



	 
	function open_nav(x) {
	  if (document.getElementById("nav_" + x).style.display == "block") {
	    close_nav(x);
	  } else {
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
	$('#nav_settings').mouseleave(function() {
	    $('#nav_settings').hide();
	});
 </script>
 
 
 
 
 
</body>
</html>