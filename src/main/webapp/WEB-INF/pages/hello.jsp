<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="fr">
<head>
	<meta charset="utf-8"/>
	<title>Carnet d'addreses</title>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
<!-- <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"> -->
</head>

<body>

	<header>
		<h1>${message}</h1>	
	</header>
	
	<div class="menu">
		<p><a href="contact">Ajouter un contact</a></p>
		<p><a href="adresse">Ajouter une adresse</a></p>
		<p><a href="welcome">retour à l'acceuil</a></p>
	</div>
	
	<footer>
	Application Web développée par Florent ANICET et Shanthan SIVARAJAH
	</footer>
</body>
</html>