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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=15">    
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

	<!-- partie Menu Nav horizontal-->
	<div class="bar theme card-2 wide notranslate">
	 <a class="bar-item button barex hover-blue padding-16"href='${pageContext.request.contextPath}/homeAdmin' >ACCUEIL</a>
	 <a class="bar-item button barex hover-blue padding-16"href='${pageContext.request.contextPath}/feedbackResult'>FEEDBACK</a>
	   <a class="bar-item button barex hover-blue padding-16"href='${pageContext.request.contextPath}/register'>REGISTRATION</a>
	   <div class="right">
			<a class="bar-item button barex hover-blue padding-16 "  onclick="open_nav('settings')" id="navbtn_settings" style="text-transform: uppercase;">${sessionScope.user}<i class="fa fa-cogs" style="display: inline;"></i><i class="fa fa-cogs" style="display: none;"></i></a>
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
	
		<div class="display-container black " id="certsection">
		    <img src="${pageContext.request.contextPath}/images/book.png" style="max-width:100%;margin:auto;display:block" >
		    <div class="certoverlay hide-small ">
		  	  <br class="hide-small hide-medium">
		      <h2>Bienvenue à Certification support divinatoire</h2>
		      <h3>Ce site est dédié à l'apprentissage de plusieurs outils liés aux divinations</h3>
		       <p>
				<br>Vous pouvez examiner la liste des voyants!
				<br>Vous pouvez examiner la liste des Formateurs!
				<br>Vous pouvez ajouter un Nouveau Voyant/Formateurs!
				<br>Vous pouvez examiner Liste des Feedback et supprimer les commentaires déjà vus!
				</p>
		    </div>
		</div>

		<div class="row margin-bottom">
			 <div class="col l5 center" style="padding:3%;margin-top:100px">
				  <h1>REGISTRATION</h1>
				  <h2>Ajouter Un Nouveau Utilisateur</h2>
				  <div class="panel info intro">
				  <p>
					Vous pouvez ajouter des Formateurs/Voyants dans votre base de données en bien choisissant
					<b class="large text-red hover-text-black"> le rôle</b> pour votre nouvel utilisateur.
				  </p>
				  </div>		  
		    </div>
			 <div class="col l7" style="padding:3%;">
				  <div class="hide-small  light-grey card-2" style="padding:16px;">	  
				  <div style="border-radius:5px;background-color:#f2f2f2;padding:40px;">
						<form   name="register-form" class="register-form" action="checkRegister" method="post" enctype="multipart/form-data">
							<div>	<% Object s = request.getAttribute("err");
								if(s != null)
								{
									%>
									<font size="2" color="red">*<%=(String)s%></font>
									<%
								}
								%>
						    </div>
							<label for="matricule">Matricule</label>
							<input name="matricule" type="number" placeholder="Matricule..." id = "matricule"  pattern="[0-9]{1,30}" required title="(Numéros LonguerMax 30)"/>
							<label for="username">Pseudo</label>
							<input name="username" type="text" placeholder="Pseudo..." id = "username"  pattern="[a-z]{2,20}" required title="(Minuscule LonguerMax 20)"/>
														
							<label for="droit">Rôle de l'utilisateur</label>	
							<select name="droit" id="droit">
							  	<option value="" disabled selected >Voyant Ou Formateur??</option>
								<option value="user" > Voyant </option>
								<option value="formateur"> Formateur</option>
							</select>
							<input type="submit" class="register-form-button" name="submit" value="Enregistrer »" class="register" />
							<input type="reset" class="register-form-button" value="Correction «" name="reset">
						</form>
					</div>
				 </div>
			</div>
		</div>

		 <div class="display-container black" >
			 <img src="${pageContext.request.contextPath}/images/mystic.jpg" style="max-width:100%;margin:auto;display:block" alt="W3 Certificates"> 
		 </div>
		 <div class="container dark-grey center padding-32">
			<p class="medium">
			 WikiCosmos is optimized for learning, testing, and training to improve readings and basic understanding. 
			 Tutorials, Quizzes, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of
			 all content.<br>
			 <a href="#" class="hover-text-blue">Copyright 2019</a> All Rights Reserved.<br><br></p>
			 <br class="hidesm">
		</div>
	</div>
	


<!--END MAIN -->


<script type="text/javascript">
  function open_nav(x) {
	  if (document.getElementById("nav_" + x).style.display == "block") {
	    close_nav(x);
	  } else {
	    close_nav("settings");
	    document.getElementById("nav_" + x).style.display = "block";
	    if (document.getElementById("navbtn_" + x)) {
	      document.getElementById("navbtn_" + x).getElementsByTagName("i")[0].style.display = "none";
	      document.getElementById("navbtn_" + x).getElementsByTagName("i")[1].style.display = "inline";
	    } 
	  }
	}
	function close_all_nav() {
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