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
    <h1>Result</h1>
 	<!-- display all the adresses contained in the HASHMAP  -->
 	<c:forEach items="${adresses}" var="adresse">  
    <p> alias:  ${adresse.value.alias}</p>
    <p> numero:  ${adresse.value.numero} </p>
    <p>rue:   ${adresse.value.rue} </p>
    <p>code postale: ${adresse.value.codepostale }</p>
    <p>ville: ${adresse.value.ville }</p>
  	</c:forEach>
    <a href="adresse">Ajouter une nouvelle adresse</a>
</body>
</html>