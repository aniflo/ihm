<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head> 
    <title>Getting Started: Handing Form Submission</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
    <h2>Votre formulaire a bien été enregistré</h2>
 	<!-- display all the adresses contained in the HASHMAP  -->
 	<c:forEach items="${adresses}" var="adresse">  
	    <p> alias:  ${adresse.value.alias}</p>
	    <p> numero:  ${adresse.value.numero} </p>
	    <p>rue:   ${adresse.value.rue} </p>
	    <p>code postale: ${adresse.value.codepostale }</p>
	    <p>ville: ${adresse.value.ville }</p>
	    <hr/>
  	</c:forEach>
  	
 	<!-- display all the adresses contained in the HASHMAP  -->
 	<c:forEach items="${contacts}" var="contact">  
	    <p>alias:  ${contact.value.alias}</p>
	    <p>nom:  ${contact.value.nom} </p>
	    <p>prénom:   ${contact.value.prenom} </p>
	    <p>email: ${contact.value.email}</p>
	    <p>Date de naissance: ${contact.value.dateDeNaissance}</p>
	    <p>actif: ${contact.value.actif}</p>
	    <p>adresse :${contact.value.adresse}</p>
	    <hr/>
  	</c:forEach>
  	
	<p><a href="contact">Ajouter un contact</a></p>
	<p><a href="adresse">Ajouter une adresse</a></p>
	<p><a href="welcome">retour à l'acceuil</a></p>
</body>
</html>