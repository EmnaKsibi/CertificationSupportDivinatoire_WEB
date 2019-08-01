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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=19">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.js"></script>


	<title>Result</title>
 
  
  
  
  
  <script type="text/javascript">
  
  $(document).ready(function(){
	    $('#result td.status').each(function(){
	        if ($(this).text() == 'Failed') {
	            $(this).css('color','red');
	        }else if ($(this).text() == 'Passed') {
	            $(this).css('color','green');
	        }
	    });
	});

	</script>
</head>




<body>


<div class="row white padding hide-medium hide-small" style="margin-top:50px;">
 <div class="col s5 notranslate" style="margin:4px 0 6px 0">
 <a class="wikicosmos-logo" href="#underConstruction">Wikicosmos<span class="dotcom">.com</span></a></div>
 <div class="col s7 margin-top wide hide-medium hide-small">
  <div class="right" style="position:relative;top:5px;">CERTIFICATION SUPPORT DIVINATOIRE</div>  
 </div>
</div>
<div style="position: relative; min-height: 100%; top: 0px;" class="">
	<div class="bar theme card-2 wide notranslate">	
		 <a href='${pageContext.request.contextPath}/${sessionScope.examLevel}/${sessionScope.exam}#startQuizButton' class=" bar-item button barex hover-blue padding-16 "><i class="fa fa-home"></i>RETOUR</a>		  
		 <div class="right">
				 <a class="bar-item button barex hover-blue padding-16" href='${pageContext.request.contextPath}/logout'>DÉCONNEXION</a>
		  </div>
	  
	</div>
		
</div>

<div class="display-container white center" >
	<c:if test="${requestScope.status.equals('Failed')}">
		<img src="${pageContext.request.contextPath}/images/failed.jpg" style="max-width:100%;margin:auto;display:block" >    
	
	</c:if>
	<c:if test="${requestScope.status.equals('Passed')}">
		<img src="${pageContext.request.contextPath}/images/passed.jpg" style="max-width:100%;margin:auto;display:block" >    
	</c:if> 
	 
	<div class="row white center ">
	
		<table id="result">
		        <tr>
		        	<th>Niveau </th> 
			        <th>Quiz</th> 
			        <th>Date</th>
			        <th>N° Réponses Correctes</th>
			        <th>N° Réponses Minimales pour Réussir</th>
			        <th>Résultat</th>  
		        </tr>
				<tr>
				  <td><span>${sessionScope.examLevel}</span></td> 
				  <td><span>${sessionScope.exam}</span></td> 
		          <td><span>${sessionScope.started}</span></td>
				  <td><span>${requestScope.result}/${sessionScope.totalNumberOfQuizQuestions}</span></td>
		       	  <td><span>${sessionScope.minScoreTopass}/${sessionScope.totalNumberOfQuizQuestions}</span></td>
		       	  <td class="status"><b>${requestScope.status}</b></td>
		        </tr>
		</table> 
	     
	</div>
</div>










 



</body>
</html>