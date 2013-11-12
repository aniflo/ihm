<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head> 
    <title>Getting Started: Handing Form Submission</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
	<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"> 
</head>
<body>
	<%@ include file="header.jsp" %>
    <h2>${messageList}</h2>
    
    <div class="row-fluid">
	  	<%@ include file="menu.jsp" %>
	  	
	 	<div id="contenu">
		  	<div class="span9">
			 	<!-- display all the contacts contained in the HASHMAP  -->
			 	<c:forEach items="${contacts}" var="contact">  
				    <p><a href="contact-${contact.value.contactAlias}" >d�tails</a></p>
				    <p>nom:  ${contact.value.nom} </p>
				    <p>pr�nom:   ${contact.value.prenom} </p>
				    <hr/>
			  	</c:forEach>
			  	
		 	</div>
	  	</div>
  	</div>
  	
  	<%@ include file="footer.jsp" %>
</body>
</html>