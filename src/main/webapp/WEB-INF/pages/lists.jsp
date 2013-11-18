<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">

<%@ include file="head.jsp" %>
<body>
	<%@ include file="header.jsp" %>
    <h2>${messageList}</h2>
    
    <div class="row-fluid">
	  	<%@ include file="menu.jsp" %>
	  	
	 	<div id="contenu">
		  	<div class="span9">
			 	<!-- display all the contacts contained in the HASHMAP  -->
			 	<c:forEach items="${contacts}" var="contact">  
				    <p><a href="contact-${contact.value.contactAlias}" ><spring:message code="details.contact" /></a></p>
				    <p><spring:message code="form.surname" />  ${contact.value.nom} </p>
				    <p><spring:message code="form.name" />   ${contact.value.prenom} </p>
				    <hr/>
			  	</c:forEach>
			  	
		 	</div>
	  	</div>
  	</div>
  	
  	<%@ include file="footer.jsp" %>
</body>
</html>