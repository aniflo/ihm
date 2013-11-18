<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<%@ include file="head.jsp" %>
<body>
	<%@ include file="header.jsp" %>
	<h2><spring:message code="add.title.address" /></h2>
    <div class="row-fluid">
	  	
		<%@ include file="menu.jsp" %>
	  	
	  	<div class="span9">
			<sf:form method="POST" modelAttribute="address">
				<fieldset>
					<table>

						<tr>
							<td><spring:message code="form.number" /></td>
							<td><sf:input path="numero" required="required" value="${address.numero}"/></td>
						</tr>
						<tr>
							<td><spring:message code="form.street" /></td>
							<td><sf:input path="rue" required="required" value="${address.rue}"/></td>
						</tr>
						<tr>
							<td><spring:message code="form.postalCode" /></td>
							<td><sf:input path="codepostal" value="${address.codepostal}"/><br/>
								
							</td>
						</tr>
						<tr>
							<td><spring:message code="form.city" /></td>
							<td><sf:input path="ville" value="${address.ville}"/></td>
						</tr>
						
						<tr>
							<td colspan="2"><input type="submit"
								value=<spring:message code="button.edit" /> /></td>
						</tr>
					</table>
				</fieldset>
			</sf:form>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>