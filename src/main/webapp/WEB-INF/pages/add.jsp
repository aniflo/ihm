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
    <h2>Enregistrement du formulaire</h2>
    
    <div class="row-fluid">
	  	<%@ include file="menu.jsp" %>
	  	
	 	<div id="contenu">
		  	<div class="span9">

		 		<!-- display saved contact -->
		 		<c:choose>
			  		<c:when test="${contact != null}">
						    <p>nom:  ${contact.nom} </p>
						    <p>prénom:   ${contact.prenom} </p>
						    <p>email: ${contact.email}</p>
						    <p>Date de naissance: ${contact.dateDeNaissance}</p>
						    <p>actif: ${contact.actif}</p>
						    <p><a href="contact">Créer un nouveau contact</a></p>
					    <hr/>
			  		</c:when>
					<c:when test="${contact == null && showContact == true}">
			  			<p> Aucun contact n'a été enregistré</p>
			  			<p><a href="contact">Créer un nouveau contact</a></p>
			  		</c:when>
		 		</c:choose>
			  	
			 	<!-- display saved address -->
			 	<c:choose>
					<c:when test="${address != null}">
					    <p> numéro:  ${address.numero} </p>
					    <p>rue:   ${address.rue} </p>
					    <p>code postal: ${address.codepostal }</p>
					    <p>ville: ${address.ville }</p>
					    <p><a href="adresse">Créer une nouvelle adresse</a></p>
					    <hr/>
					</c:when>
					
					<c:when test="${address == null && showAddress == true}">
				  			<p> Aucune adresse n'a été enregistré</p>
				  			<p><a href="adresse">Créer une nouvelle adresse</a></p>
				  	</c:when>
				</c:choose>
		 	</div>
	  	</div>
  	</div>
  	
  	<%@ include file="footer.jsp" %>
</body>
</html>