<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="fr">
<head>
	<meta charset="utf-8"/>
	<title>Carnet d'addreses</title>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
	<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"> 
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="row-fluid">
		<%@ include file="menu.jsp" %>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>