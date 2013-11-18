<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<%@ include file="head.jsp" %>
<body>
	<%@ include file="header.jsp" %>
    <h2><spring:message code="saved.title" /></h2>
    
    <div class="row-fluid">
	  	<%@ include file="menu.jsp" %>
	  	
	 	<div id="contenu">
		  	<div class="span9">

		 		<!-- display saved contact -->
		 		<c:choose>
			  		<c:when test="${contact != null}">
						    <p><spring:message code="form.surname" /> ${contact.nom} </p>
						    <p><spring:message code="form.name" /> ${contact.prenom} </p>
						    <p><spring:message code="form.email" /> ${contact.email}</p>
						    <p><spring:message code="form.birthdate" /> ${contact.dateDeNaissance}</p>
						    <p><spring:message code="form.active" /> ${contact.actif}</p>
						    <p><a href="contact"><spring:message code="link.create.contact" /></a></p>
						    <p><a href="contact-${contact.contactAlias}" ><spring:message code="details.contact" /> </a></p>
					    <hr/>
			  		</c:when>
					<c:when test="${contact == null && showContact == true}">
			  			<p> <spring:message code="save.failed" /></p>
			  			<p><a href="contact"><spring:message code="link.create.contact" /></a></p>
			  			<p><a href="contact-${contact.contactAlias}" ><spring:message code="details.contact" /> </a></p>
			  		</c:when>
		 		</c:choose>
			  	
			 	<!-- display saved address -->
			 	<c:choose>
					<c:when test="${address != null}">
					    <p><spring:message code="form.number" />  ${address.numero} </p>
					    <p><spring:message code="form.street" />   ${address.rue} </p>
					    <p><spring:message code="form.postalCode" /> ${address.codepostal }</p>
					    <p><spring:message code="form.city" /> ${address.ville }</p>
					    <p><a href="adresse"><spring:message code="link.create.address" /></a></p>
					    <hr/>
					</c:when>
					
					<c:when test="${address == null && showAddress == true}">
				  			<p> <spring:message code="save.failed" /></p>
				  			<p><a href="adresse"><spring:message code="link.create.address" /></a></p>
				  	</c:when>
				</c:choose>
		 	</div>
	  	</div>
  	</div>
  	
  	<%@ include file="footer.jsp" %>
</body>
</html>