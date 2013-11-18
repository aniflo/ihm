<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<%@ include file="head.jsp" %>
<body>
	<%@ include file="header.jsp" %>
    <h2><spring:message code="details.contact" /> ${contact.nom} ${contact.prenom}</h2>
    
    <div class="row-fluid">
	  	<%@ include file="menu.jsp" %>
	  	
	 	<div id="contenu">
		  	<div class="span9">
			 	<!-- display the details of a contact -->
					    <p><spring:message code="form.surname" />  ${contact.nom} </p>
					    <p><spring:message code="form.name" />   ${contact.prenom} </p>
					    <p><spring:message code="form.email" /> ${contact.email}</p>
					    <p><spring:message code="form.birthdate" /> ${contact.dateDeNaissance}</p>
					    <p><spring:message code="form.active" /> ${contact.actif}</p>
					    <div>
				    	<a href="editer-contact-${contact.contactAlias}"><spring:message code="link.edit" /></a><br>
				    	<a href="supprimer-contact-${contact.contactAlias}"><spring:message code="link.delete" /></a>
				    </div>
				    <hr/>
			  	
			 	<!-- display all the adresses liked to the contact -->
			 	<c:forEach var="address" items="${addresses}" >  
				    <p><spring:message code="form.number" />  ${address.value.numero} </p>
				    <p><spring:message code="form.street" />  ${address.value.rue} </p>
				    <p><spring:message code="form.postalCode" /> ${address.value.codepostal }</p>
				    <p><spring:message code="form.city" /> ${address.value.ville }</p>
				    <div>
				    	<a href="editer-adresse-${contact.contactAlias}-${address.value.addressAlias}"><spring:message code="link.edit" /></a><br>
				    	<a href="supprimer-adresse-${contact.contactAlias}-${address.value.addressAlias}"><spring:message code="link.delete" /></a>
				    </div>
				    <hr/>
		  		</c:forEach>
		 	</div>
	  	</div>
  	</div>
  	
  	<%@ include file="footer.jsp" %>
</body>
</html>