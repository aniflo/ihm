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
	<%@ include file="header.jsp" %>
	<h2>Ajout d'une nouvelle adresse</h2>
    <div class="row-fluid">
	  	
		<%@ include file="menu.jsp" %>
	  	
	  	<div class="span9">
			<sf:form method="POST" modelAttribute="address">
				<fieldset>
					<table>

						<tr>
							<td>numéro:</td>
							<td><sf:input path="numero" required="required" placeholder="numéro"/></td>
						</tr>
						<tr>
							<td>rue:</td>
							<td><sf:input path="rue" required="required" placeholder="rue"/></td>
						</tr>
						<tr>
							<td>CP:</td>
							<td><sf:input path="codepostal" placeholder="codepostal"/><br/>
								
							</td>
						</tr>
						<tr>
							<td>Ville:</td>
							<td><sf:input path="ville" placeholder="ville"/></td>
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
	<%@ include file="footer.jsp" %>
</body>
</html>