<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Adresse</title>
</head>
<body>


	<sf:form method="POST" modelAttribute="adresse">
		<fieldset>
			<table>
			
				<tr>
			<c:forEach var="adresse" items="${adresses}">
            <tr>
            <sf:radiobuttons path="PersistanceManager.getAdresse(alias)" items="${adresses}"/>

            </tr>
        </c:forEach>
	</tr>
	</table></fieldset></sf:form>
</body>
</html>