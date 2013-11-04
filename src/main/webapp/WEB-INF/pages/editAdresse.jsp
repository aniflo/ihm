<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<body>
	<sf:form method="POST" modelAttribute="adresse">
		<fieldset>
			<table>
			
				<tr>
					<td>alias:</td>
					<td><sf:input path="alias" required="required"/></td>
				</tr>
				<tr>
					<td>numéro:</td>
					<td><sf:input path="numero" required="required" placeholder="nom"/></td>
				</tr>
				<tr>
					<td>rue:</td>
					<td><sf:input path="rue" required="required" placeholder="nom"/></td>
				</tr>
				<tr>
					<td>CP:</td>
					<td><sf:input path="codepostale" required="required" placeholder="nom"/><br/>
						
					</td>
				</tr>
				<tr>
					<td>Ville:</td>
					<td><sf:input path="ville" required="required" placeholder="nom"/></td>
				</tr>
				
				<tr>
					<td colspan="2"><input type="submit"
						value="Ok, j'ajoute une adresse !" /></td>
				</tr>
			</table>
		</fieldset>
	</sf:form>
	<p><a href="contact">Ajouter un contact</a></p>
	<p><a href="adresse">Ajouter une adresse</a></p>
	<p><a href="welcome">retour à l'acceuil</a></p>

</body>
</html>