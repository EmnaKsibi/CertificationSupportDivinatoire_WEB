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
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=23"> 
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
	   <a class="bar-item button hover-white padding-16 hidesm" href="javascript:void(0)" onclick="open()"><i class="fa"></i></a>
	   <a class="bar-item button barex hover-blue padding-16" href='${pageContext.request.contextPath}/homeUser' >ACCUEIL </a>
	   <a class="bar-item button barex hover-blue padding-16 " href="javascript:void(0)" onclick="open_nav('tutorials')" id="navbtn_tutorials" style="visibility: visible;">TUTORIELS <i class="fa fa-caret-down" style="display: inline;"></i><i class="fa fa-caret-up" style="display: none;"></i></a>
	   <a class="bar-item button barex hover-blue padding-16" href="javascript:void(0)" onclick="open_nav('resultats')" id="navbtn_resultats">RÉSULTATS <i class="fa fa-caret-down" style="display: inline;"></i><i class="fa fa-caret-up" style="display:none"></i></a>
	  <div class="right">
			<a class="bar-item button barex hover-blue padding-16 "  onclick="open_nav('settings')" id="navbtn_settings" style="text-transform: uppercase;">${sessionScope.user}<i class="fa fa-cogs" style="display: inline;"></i><i class="fa fa-cogs" style="display: none;"></i></a>
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
	<div class="main" id="main" >
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
	     <div class="col l4 center" style="padding:3%;">
	          <h1>Résultats</h1>
	          <p class="xlarge text-dark-grey ">Tarot de Marseille </p>
	          <div class="panel info intro">
	            Vous pouvez Consulter l'avancement et les résultats de chaque niveau en cliquant sur l'icône <i class="fa fa-plus-circle"></i>.
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
	<input type="hidden" name = "hiddenExamLevelTocheck" id = "hiddenExamLevelTocheck" value="<%=session.getAttribute("levelResultToCheck")%>">
	<input type="hidden" name = "hiddenMatriculeTocheck" id = "hiddenMatriculeTocheck" value="<%=session.getAttribute("matricule")%>">
	<input type="hidden" name = "hiddenExamResultToCheck" id = "hiddenExamResultToCheck" value="<%=session.getAttribute("examResultToCheck")%>">
	<!--END MAIN -->



	<!--Footer -->
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
  
  
    

<script type="text/javascript"  >
	$('#nav_settings').mouseleave(function() {
	    $('#nav_settings').hide();
	});
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

	
	
	
 var mydata= [
        { titre: "Tarot Marseille Niveau 1" ,niveau: "TarotMarseilleNiveau1" },
        { titre: "Tarot Marseille Niveau 2" ,niveau: "TarotMarseilleNiveau2" },
        { titre: "Tarot Marseille Niveau 3" ,niveau: "TarotMarseilleNiveau3" },
        { titre: "Tarot Marseille Niveau 4" ,niveau: "TarotMarseilleNiveau4" },
        { titre: "Tarot Marseille Niveau 5" ,niveau: "TarotMarseilleNiveau5" },

        ]  
        
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

 
    

jQuery(function($) {
    jQuery("#MasterGrid").jqGrid({
        datatype: "local",
        data: mydata,           

         colNames: ['Tarot de Marseille par Niveau','niveau'],
         colModel: [
                { name: 'titre',width:100 ,resizable:false,search:false,sortable: false  },
                { name: 'niveau',hidden:true  }
			],
        autowidth: true,
        autoheight: true,
        rowNum:10,
        viewrecords: true,
        pager: "#MasterGridPager",
        altRows: true,                                                 
        multiselect: false,
        multiboxonly: true,
        caption : "Résultats Pour : ${sessionScope.user}",
        
        loadComplete : function() {
                var table = this;
                setTimeout(function(){
                            updatePagerIcons(table);
                }, 0);
        },
        subGrid: true, 
        subGridRowExpanded: showChildGrid, 
            
        loadonce:true,

	    }).trigger("reloadGrid", {
	    	fromServer: true, page: 1 
	    });    
    function showChildGrid(parentRowID, parentRowKey) {
        var childGridID = parentRowID + "_table";  
        var childGridPagerID = parentRowID + "_pager";
       
      
        var rowNiveauKey = $('#MasterGrid').jqGrid('getCell',parentRowKey,'niveau');   
        document.getElementById("hiddenExamLevelTocheck").value=rowNiveauKey;
        
        $('#' + parentRowID).append('<table id=' + childGridID + '></table><div id=' + childGridPagerID + ' class=scroll></div>');

        $("#" + childGridID).jqGrid({
            url : '${pageContext.request.contextPath}/resultXml.jsp',
            postData: {levelToCheck : document.getElementById("hiddenExamLevelTocheck").value
                       ,matricule : document.getElementById("hiddenMatriculeTocheck").value},
            mtype: "GET",        
            datatype: "xml",
           
            colNames : ['ID', 'Matricule', 'Pseudo', 'Test','Niveau','N° Questions',
                 'Réponses Correctes', 'Date', 'Evaluation'],
            colModel: [
                     { label: 'rid', name: 'rid', key: true,  hidden : true},
                     { label: 'matricule', name: 'matricule', hidden : true},
                     { label: 'name', name: 'name',  hidden: true },
                     { label: 'exam', name: 'exam',   sortable: true,width:100 ,sorttype: "text",resizable:false},
                     { label: 'examlevel', name: 'examlevel',   sortable: true ,sorttype: "text",resizable:false, hidden : true },
                     { label: 'noofqos', name: 'noofqos'  , sortable: true ,sorttype: "number",resizable:false,search:false},
                     { label:'rightans', name: 'rightans' , sortable: true ,sorttype: "number",resizable:false ,search:false},
                     { label:'stime', name: 'stime',   sortable: false  ,resizable:false,search:false},
                     { label:'status', name: 'status',  sortable: true  ,width:100,sorttype: "text",resizable:false  },
                 ],
            autowidth: true,
            autoheight: true,
            altRows: true,                                                 
            viewrecords: true,
            rownumbers: true,
            loadonce:true,
            loadComplete : function() {       
            	
                var rowIDs = jQuery("#"+childGridID).getDataIDs();
                for ( var i = 0; i < rowIDs.length; i = i + 1) {    
                    rowData = jQuery("#"+childGridID).getRowData(rowIDs[i]);
                    if (rowData.status == "Failed") {
                        jQuery("#"+childGridID).setCell(rowIDs[i],'exam', '', {'color' : '#000000   ','font-weight': 'bold'}, '');
                        jQuery("#"+childGridID).setCell(rowIDs[i],
                                'status', '', {
                                    'background-color' : '#FA8072','font-weight': 'bold'
                                }, '');
                    
                    }else if(rowData.status == "Passed"){
                        
                        jQuery("#"+childGridID).setCell(rowIDs[i],'exam', '', {'color' : '#000000   ','font-weight': 'bold'}, '');
                        jQuery("#"+childGridID).setCell(rowIDs[i],
                                'status', '', {
                                    'background-color' : '#0be00b','font-weight': 'bold'
                                }, '');
                    }else {
                        jQuery("#"+childGridID).setCell(rowIDs[i],'exam', '', {'color' : '#808080'}, '');
                        jQuery("#"+childGridID).setCell(rowIDs[i],'status', '', {'background-color' : '#DCDCDC'}, '');

                    }
                } 
               
            },
            caption: rowNiveauKey,

            loadonce:true,

        }).trigger("reloadGrid", {
        	fromServer: true, page: 1 
        });  

    }
});
            
 </script>
</body>
</html>