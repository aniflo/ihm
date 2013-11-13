<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Ajout d'un nouveau contact</title>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
	<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"> 
</head>
<body>
	<%@ include file="header.jsp" %>
	<h2>Ajout d'un nouveau contact</h2>
    <div class="row-fluid">
		
		<%@ include file="menu.jsp" %>
	  	
	  	<div class="span9">	
			<sf:form method="POST" modelAttribute="contact">
				<fieldset>
					<table>
					
						<tr>
							<td>nom:</td>
							<td><sf:input path="nom" required="required" placeholder="nom"/></td>
						</tr>
						<tr>
							<td>prénom:</td>
							<td><sf:input path="prenom" required="required" placeholder="prénom"/></td>
						</tr>
						<tr>
							<td>email:</td>
							<td><sf:input path="email" type="email" placeholder="example@mail.com"/><br/></td>
						</tr>
						<tr>
							<td>Date de naissance:</td>
							<td><sf:input path="dateDeNaissance" required="required" placeholder="jj/mm/aaaa"/></td>
						</tr>
						<tr>
							<td>actif:</td>
							<td><sf:select path="actif" > 
								<option value="true">oui</option>
								<option value="false">non</option> 
							</sf:select></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit"
								value="Ok, j'ajoute un contact !" /></td>
						</tr>
					</table>
				</fieldset>
			</sf:form>
		</div>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>