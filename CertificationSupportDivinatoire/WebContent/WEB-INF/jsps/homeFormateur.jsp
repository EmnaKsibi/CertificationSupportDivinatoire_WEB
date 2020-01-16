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
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=16">   
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.5/css/ui.jqgrid.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.5/js/jquery.jqgrid.min.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/css/ui.jqgrid.min.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/jquery.jqgrid.min.js"></script>     
   <style type="text/css">
		.sidebar {
			z-index:3;
			width:230px;
			overflow:hidden !important;
			position:absolute !important;
			margin-bottom:-155px;
			}
			.main{
					margin-left:0px !important ;
			
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
	
	<div class="row margin-bottom">
		 <div class="col l4 center" style="padding:3%;">
			  <h1>Voyants</h1>
			  <p class="xlarge text-dark-grey ">Liste des Voyants </p>
			  <div class="panel info intro">
			  <p>
				Vous pouvez vérifier les utilisateurs enregistrés dans votre base de données en tant que Voyants.
				<br>Vous pouvez Chercher un voyant par son "Pseudo" ou son "Matricule".
			  </p>
			  </div>
	 </div>
	 <div class="col l8" style="padding:3%;">
		 <div class="hide-small hide-medium light-grey card-2" >
				<table id="MasterGrid"></table>
				<div id="MasterGridPager"></div>
		 </div>
		 </div>
	</div>
	</div>
	<input type="hidden" name = "hiddenMatriculeTocheck" id = "hiddenMatriculeTocheck" value="<%=session.getAttribute("matricule")%>">




	<!--END MAIN -->



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
	<div class="container dark-grey center padding-32">
			 <p class="medium">
			 WikiCosmos is optimized for learning, testing, and training to improve readings and basic understanding. 
			 Tutorials, Quizzes, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of
			 all content.<br>
			 <a href="#" class="hover-text-blue">Copyright 2019</a> All Rights Reserved.<br><br></p>
			 <br class="hidesm">
	</div>
	
	
	
<script type="text/javascript"  >
		$('#nav_settings').mouseleave(function() {
		    $('#nav_settings').hide();
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


	jQuery(function($) {
		jQuery("#MasterGrid").jqGrid({
	    	url : '${pageContext.request.contextPath}/registeredUsersXml.jsp?droit=user',
	       datatype: "xml",
			mtype : 'GET',
			colNames : ['ID','Matricule' ,'Pseudo', 'Password'],
				
	       	colModel: [
	      		 { label: 'ID', name: 'ID', key: true,hidden:true},
	      		 { label: 'matricule', name: 'matricule', key: true,resizable:false,width: 150, sortable:true,sorttype: "number",
	      			 search:true, searchoptions: {attr: { placeholder: "Chercher un Matricule?" },}},
	      		 { label: 'username', name: 'username',sortable:true,sorttype: "text",resizable:false,
	          			 search:true, searchoptions: {attr: { placeholder: "Chercher un Pseudo?" },}},
	      		 { label: 'password', name: 'password' ,sortable:false,resizable:false,width: 100,search:false},
	      				  ],
	        autowidth: true,
	        autoheight: true,
	        loadonce:true,
	        rowNum:10,
			rowList:[10,20,40],
			viewrecords: true,
		    pager: "#MasterGridPager",
			altRows: true,                                                 
			multiselect: false,
			multiboxonly: true,
		
		    caption : "Liste des Voyants",
			loadComplete : function() {
					var table = this;
					setTimeout(function(){
								updatePagerIcons(table);
					}, 0);
			},
				
			}).jqGrid('filterToolbar',{
	           stringResult: true,
	           searchOperators: true,
	           ignoreCase: true,
	
	       }).trigger("reloadGrid", {
	        	fromServer: true, page: 1 
	       });         
	
	  
	});
 </script>
</body>
</html>