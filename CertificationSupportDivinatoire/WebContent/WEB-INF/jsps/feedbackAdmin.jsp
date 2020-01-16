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
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=3"> 
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
		
		<div class="row margin-bottom">
			 <div class="col l4 center" style="padding:3%;">
				  <h1>Feedback</h1>
				  <div class="panel info intro">
				  <p>
					Vous pouvez vérifier les Commentaires enregistrés dans votre base de données par les voyants/Formateurs.
					<br>Vous pouvez supprimer les commentaires déjà vus de la base de Données.
				  </p>
				  </div>		  
				  <form   action="deleteFeedback" method="post" onSubmit="return RowIDValidation();">		
								<input type="hidden" name="rowid" class="input rowid" id = "rowid" value=""/>
								<button type="submit" name="submit" class="button dark-grey"> Supprimer Feedback</button>
				 </form>	
		     </div>
			 <div class="col l8" style="padding:3%;">
				  <div class="hide-small hide-medium light-grey card-2" style="padding:16px;">
						
								
											<% Object s = request.getAttribute("deleteResult");
												if(s != null)
												{
													%>
													<font size="2" color="#607d8b">*<%=(String)s%></font>
													<%
												}
											%>
										
										<table id="grid-table" class="table-all notranslate "></table>
										<div id="grid-pager"></div>
				</div>
			 </div>
		</div>
	</div>
	<!--END MAIN -->


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

	<div class="container dark-grey center padding-32">
		 <p class="medium">
		 WikiCosmos is optimized for learning, testing, and training to improve readings and basic understanding. 
		 Tutorials, Quizzes, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of
		 all content.<br>
		 <a href="#" class="hover-text-blue">Copyright 2019</a> All Rights Reserved.<br><br></p>
		 <br class="hidesm">
	</div>
	
<script type="text/javascript">
	$('#nav_settings').mouseleave(function() {
	    $('#nav_settings').hide();
	});
	/*confirmation of the delete */
	function RowIDValidation(){
	
		if(document.getElementById("rowid").value==null || document.getElementById("rowid").value.trim()==''){
			alert("Veuillez sélectionner la ligne de Feedback à supprimer !");
			
		return false;
		}else {
			var retVal = confirm("Etes-vous sûr de vouloir supprimer le Feedback avec l'ID ="+document.getElementById("rowid").value+"??");
            if( retVal == false ) {
               return false;
            }
		}
		return true;
		}
	
	
	function getSelectedRowID() {
  		var grid = $("#grid-table");
      	var rowKey = grid.jqGrid('getGridParam',"selrow");         
      	if (rowKey )
      	 document.getElementById("rowid").value =rowKey;
     		
		}
  	
	
	jQuery(function($) {
		var grid_selector = "#grid-table";
		var pager_selector = "#grid-pager";              

		jQuery(grid_selector).jqGrid({
			url: '${pageContext.request.contextPath}/feedbackXml.jsp',
            datatype: "xml",
            colModel: [
                {label: "Feedback ID", name: 'fid', width: 50,sortable:false,resizable:false},
                {label: "Matricule",name: 'Matricule', width:50,sortable:false,resizable:false},
                {label: "Username", name: 'Username',width: 50 ,sortable:false,resizable:false},
                {label : "Comment",name: 'Comment',sortable:false,resizable:false}, 

            ],
            autowidth: true,
            autoheight: true,
            rowNum:10,
			rowList:[10,20,40],
			viewrecords: true,
			pager : pager_selector,
			altRows: true,                                                 
			multiselect: false,
			multiboxonly: true,
			caption: "Liste des Commentaires , Erreurs et suggestions",
			
			loadComplete : function() {
					var table = this;
					setTimeout(function(){
								updatePagerIcons(table);
					}, 0);
			},
		
			onSelectRow: getSelectedRowID,
			loadonce:true,

	        }).trigger("reloadGrid", {
	        	fromServer: true, page: 1 
	        });			


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
		
	
	});
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