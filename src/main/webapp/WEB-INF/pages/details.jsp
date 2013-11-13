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
    <h2>Détails du contact ${contact.nom} ${contact.prenom}</h2>
    
    <div class="row-fluid">
	  	<%@ include file="menu.jsp" %>
	  	
	 	<div id="contenu">
		  	<div class="span9">
			 	<!-- display the details of a contact -->
					    <p>nom:  ${contact.nom} </p>
					    <p>prénom:   ${contact.prenom} </p>
					    <p>email: ${contact.email}</p>
					    <p>Date de naissance: ${contact.dateDeNaissance}</p>
					    <p>actif: ${contact.actif}</p>
					    <div>
				    	<a href="editer-contact-${contact.contactAlias}">Editer</a><br>
				    	<a href="supprimer-contact-${contact.contactAlias}">Supprimer</a>
				    </div>
				    <hr/>
			  	
			 	<!-- display all the adresses liked to the contact -->
			 	<c:forEach var="address" items="${addresses}" >  
				    <p> numero:  ${address.value.numero} </p>
				    <p>rue:   ${address.value.rue} </p>
				    <p>code postal: ${address.value.codepostal }</p>
				    <p>ville: ${address.value.ville }</p>
				    <div>
				    	<a href="editer-adresse-${contact.contactAlias}-${address.value.addressAlias}">Editer</a><br>
				    	<a href="supprimer-adresse-${contact.contactAlias}-${address.value.addressAlias}">Supprimer</a>
				    </div>
				    <hr/>
		  		</c:forEach>
		 	</div>
	  	</div>
  	</div>
  	
  	<%@ include file="footer.jsp" %>
</body>
</html>