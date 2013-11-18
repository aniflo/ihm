<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html lang="fr">
<%@ include file="head.jsp" %>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="row-fluid">
		<%@ include file="menu.jsp" %>
		<spring:message code="welcome.app" />
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>