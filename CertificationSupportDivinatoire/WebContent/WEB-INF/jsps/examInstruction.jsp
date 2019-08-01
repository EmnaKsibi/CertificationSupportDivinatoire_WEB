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
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=12">

   <title>Certification Support Divinatoire</title>
</head>
<body>


<div class="row white padding hide-medium hide-small" style="margin-top:50px;">
 <div class="col s5 notranslate" style="margin:4px 0 6px 0">
 <a class="wikicosmos-logo" href="#underConstruction">Wikicosmos<span class="dotcom">.com</span></a></div>
 <div class="col s7 margin-top wide hide-medium hide-small">
  <div class="right" style="position:relative;top:5px;">CERTIFICATION SUPPORT DIVINATOIRE</div>  
 </div>
</div>
<hr>
<div class="row white padding center">
	  <h1>Quiz Instructions </h1>	
	  <div class="col s12 margin-top">
			<img src="${pageContext.request.contextPath}/images/${sessionScope.examLevel}${sessionScope.exam}.jpg" style="max-width:100%;margin:auto;display:block" >	   	
			<p class="large text-dark-grey ">
				 La durée totale du Quiz is <span class="text-blue">${sessionScope.quizDuration}</span> Minutes.<br>
				 Quiz contient <span class="text-blue">${sessionScope.totalNumberOfQuizQuestions}</span> Questions à choix unique.<br>
				 Pour réussir ce quiz, vous avez besoin de <span class="text-blue">${sessionScope.minScoreTopass}</span> bonnes réponses.<br>
				 
				 Lisez attentivement la question avant de répondre.<br>
				 Vous pouvez changer vos réponses avant de soumettre.<br>
			 </p>
			<button class="btn blue" onclick="location.href='${pageContext.request.contextPath}/exam'">Passer le Test »</button>
	</div>	
</div>


</body>
</html>