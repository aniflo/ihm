<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
	<sf:form method="POST" modelAttribute="contact">
		<fieldset>
			<table>
			
				<tr>
					<td>*alias:</td>
					<td><sf:input path="alias" required="required"/></td>
				</tr>
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
					<td><sf:input path="email" required="required" type="email" placeholder="example@mail.com"/><br/></td>
				</tr>
				<tr>
					<td>Date de naissance:</td>
					<td><sf:input path="dateDeNaissance" required="required" placeholder="jj/mm/aa"/></td>
				</tr>
				<tr>
					<td>actif:</td>
					<td><sf:select path="actif" > 
						<option value="true">oui</option>
						<option value="false">non</option> 
					</sf:select></td>
				</tr>
				
				<tr>
					<td>associer une adresse:</td>
					<td><sf:select path="adresse" > 
						<c:forEach items="${adresses}" var="adresse"> 
							<option value="${adresse.key}">${adresse.key}</option>
						</c:forEach>
					</sf:select></td>
				</tr>
			
				<tr>
					<td colspan="2"><input type="submit"
						value="Ok, j'ajoute un contact !" /></td>
				</tr>
			</table>
		</fieldset>
	</sf:form>
	
	<p><a href="contact">Ajouter un contact</a></p>
	<p><a href="adresse">Ajouter une adresse</a></p>
	<p><a href="welcome">retour à l'acceuil</a></p>


</body>
</html>