<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Supprimer un contact</title>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
	<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"> 
</head>
<body>

	<sf:form method="POST" modelAttribute="contact">
		<fieldset>
			<table>
			
				<tr>
			<c:forEach var="contact" items="${contacts}">
            <tr>
            <sf:radiobuttons path="PersistanceManager.getContact(alias)" items="${contacts}"/>

            </tr>
        </c:forEach>
	</tr>
	</table></fieldset></sf:form>
</body>
</html>