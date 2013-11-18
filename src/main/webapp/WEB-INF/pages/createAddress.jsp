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
							<td><sf:input path="numero" required="required" placeholder="numéro"/></td>
						</tr>
						<tr>
							<td><spring:message code="form.street" /></td>
							<td><sf:input path="rue" required="required" placeholder="rue"/></td>
						</tr>
						<tr>
							<td><spring:message code="form.postalCode" /></td>
							<td><sf:input path="codepostal" placeholder="codepostal"/><br/>
								
							</td>
						</tr>
						<tr>
							<td><spring:message code="form.city" /></td>
							<td><sf:input path="ville" placeholder="ville"/></td>
						</tr>
						
						<tr>
							<td><spring:message code="form.associate.contact" /></td>
							<td><sf:select path="contactAlias" > 
								<c:forEach var="contact" items="${contacts}" > 
									<option value="${contact.key}">${contact.key}</option>
								</c:forEach>
							</sf:select></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit"
								value=<spring:message code="button.save" /> ></td>
						</tr>
					</table>
				</fieldset>
			</sf:form>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>