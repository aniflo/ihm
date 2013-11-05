<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Carnet d'addresses</title>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
	<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"> 
</head>
<body>

	<h2>Ajout d'un nouveau contact</h2>
    <div class="row-fluid">
	  	<div class="span3">
		  	<div class="menu">
				<p><a href="contact">Ajouter un contact</a></p>
				<p><a href="adresse">Ajouter une adresse</a></p>
				<p><a href="welcome">retour � l'acceuil</a></p>
		  	</div>
	  	</div>
	  	
	  	<div class="span9">
			<sf:form method="POST" modelAttribute="adresse">
				<fieldset>
					<table>
						<tr>
							<td>alias:</td>
							<td><sf:input path="alias" required="required"/></td>
						</tr>
						<tr>
							<td>num�ro:</td>
							<td><sf:input path="numero" required="required" placeholder="num�ro"/></td>
						</tr>
						<tr>
							<td>rue:</td>
							<td><sf:input path="rue" required="required" placeholder="rue"/></td>
						</tr>
						<tr>
							<td>CP:</td>
							<td><sf:input path="codepostal" required="required" placeholder="codepostal"/><br/>
								
							</td>
						</tr>
						<tr>
							<td>Ville:</td>
							<td><sf:input path="ville" required="required" placeholder="ville"/></td>
						</tr>
						
						<tr>
							<td colspan="2"><input type="submit"
								value="Ok, j'ajoute une adresse !" /></td>
						</tr>
					</table>
				</fieldset>
			</sf:form>
		</div>
	</div>

</body>
</html>