<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<%@ include file="head.jsp" %>
<body>
	<%@ include file="header.jsp" %>
	<h2><spring:message code="add.title.contact" /></h2>
    <div class="row-fluid">
		
		<%@ include file="menu.jsp" %>
	  	
	  	<div class="span9">	
			<sf:form method="POST" modelAttribute="contact">
				<fieldset>
					<table>
					
						<tr>
							<td><spring:message code="form.surname" /></td>
							<td><sf:input path="nom" required="required" placeholder="nom"/></td>
						</tr>
						<tr>
							<td><spring:message code="form.name" /> </td>
							<td><sf:input path="prenom" required="required" placeholder="prénom"/></td>
						</tr>
						<tr>
							<td><spring:message code="form.email" /></td>
							<td><sf:input path="email" type="email" placeholder="example@mail.com"/><br/></td>
						</tr>
						<tr>
							<td><spring:message code="form.birthdate" /></td>
							<td><sf:input path="dateDeNaissance" required="required" placeholder="jj/mm/aaaa"/></td>
						</tr>
						<tr>
							<td><spring:message code="form.active" /></td>
							<td><sf:select path="actif" > 
								<option value="true"><spring:message code="form.active.yes" /></option>
								<option value="false"><spring:message code="form.active.no" /></option> 
							</sf:select></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit"
								value=<spring:message code="button.save" />></td>
						</tr>
					</table>
				</fieldset>
			</sf:form>
		</div>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>