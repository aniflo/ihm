<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

	<sf:form method="POST" modelAttribute="adresse">
		<fieldset>
			<table>
			
				<tr>
					<td>alias :</td>
					<td><sf:input path="alias" /></td>
				</tr>
				<tr>
					<td>numero :</td>
					<td><sf:input path="numero" /></td>
				</tr>
				<tr>
					<td>rue :</td>
					<td><sf:input path="rue" /></td>
				</tr>
								<tr>
					<td>CP :</td>
					<td><sf:input path="codepostale" /><br/>
						
					</td>
				</tr>
								<tr>
					<td>Ville :</td>
					<td><sf:input path="ville" /></td>
				</tr>
				
								
				<tr>
					<td colspan="2"><input type="submit"
						value="Ok, j'ajoute une adresse !" /></td>
				</tr>
			</table>
		</fieldset>
	</sf:form>
	<p><a href="welcome">retour à l'acceuil</a></p>


