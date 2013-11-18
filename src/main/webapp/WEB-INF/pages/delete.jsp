<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="head.jsp" %>
<body>
	<%@ include file="header.jsp" %>
	<h2><spring:message code="update" /></h2>
	<div class="row-fluid">
		<%@ include file="menu.jsp" %>
	
		<div>
			${status}
		</div>
		<div>
			<a href="liste-contacts"><spring:message code="back.list.contact" /></a>
		</div>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>