<%@ page language="java" import="com.sandra.certification.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/W3.css?v=10">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css?v=15">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" >
    <title>Certification Support Divinatoire</title>
	<script language ="javascript" >
        var tim;       
        var min = '${sessionScope.min}';
        var sec = '${sessionScope.sec}';
       
    	
    	
        function customSubmit(someValue){  
        	 document.questionForm.minute.value = min;   
        	 document.questionForm.second.value = sec; 
        	 document.questionForm.submit(); 
        	 }  
			
        function examTimer() {
            if (parseInt(sec) >0) {
			
			    document.getElementById("showtime").innerHTML = "Temps Restant :"+min+" Minutes ," + sec+" Secondes";
                sec = parseInt(sec) - 1;                
                tim = setTimeout("examTimer()", 1000);
            }
            else {
			
			    if (parseInt(min)==0 && parseInt(sec)==0){
			    	document.getElementById("showtime").innerHTML = "Temps Restant :"+min+" Minutes ," + sec+" Secondes";
				     alert("Time Up");
				     document.questionForm.minute.value=0;
				     document.questionForm.second.value=0;
				     document.questionForm.submit();
					 
			     }
				 
                if (parseInt(sec) == 0) {				
				    document.getElementById("showtime").innerHTML = "Temps Restant :"+min+" Minutes ," + sec+" Secondes";					
                    min = parseInt(min) - 1;
					sec=59;
                    tim = setTimeout("examTimer()", 1000);
                }
               
            }
        }
    </script>

</head>

<body onload="examTimer()">

<div class="row white padding hide-medium hide-small" style="margin-top:50px;">
 <div class="col s5 notranslate" style="margin:4px 0 6px 0">
 <a class="wikicosmos-logo" href="#underConstruction">Wikicosmos<span class="dotcom">.com</span></a></div>
 <div class="col s7 margin-top wide hide-medium hide-small">
  <div class="right" style="position:relative;top:5px;">CERTIFICATION SUPPORT DIVINATOIRE</div>  
 </div>
</div>
<hr class="hide-medium hide-small">

<h1>Quiz : ${sessionScope.exam}</h1>


<div class="container" style="padding:3% 7%">
	<div class="row white padding">	
	
		<%
		  int currentQuestion=((Exam)request.getSession().getAttribute("currentExam")).getCurrentQuestion();
		 %>
		<div id="showtime" class="left wide"></div>  
		<div class="right wide">Question Actuelle ${sessionScope.quest.questionNumber+1} / ${sessionScope.totalNumberOfQuizQuestions}</div>  
	</div>
 	<div class=" light-grey card-2" style="padding:16px;">
			<h4>${sessionScope.quest.question}</h4>
					
			<form action="exam" method="post" name="questionForm" style="padding:0px 2% ;">
				 <c:forEach var="choice" items="${sessionScope.quest.questionOptions}" varStatus="counter">
				 <input class="radio" type="radio" name="answer" value="${counter.count}">${choice}  <br/>
				 </c:forEach> <br/>  
				
				 <c:if test="${sessionScope.quest.questionNumber > 0}">
				 <input class="btn blue" type="submit" name="action" value="Précédent" onclick="customSubmit()" />
				 </c:if>
			   
			    <c:if test="${sessionScope.quest.questionNumber < sessionScope.totalNumberOfQuizQuestions-1}">
				<input class="btn blue" type="submit" name="action" value="Suivant" onclick="customSubmit()" />
				</c:if> 
				
				<input class="btn kaki right" type="submit" name="action" value="Terminer" onclick="customSubmit()" />	 
				
				<input type="hidden" name="minute"/> 
				<input type="hidden" name="second"/>
			</form>
	</div>
</div>


</body>
</html>