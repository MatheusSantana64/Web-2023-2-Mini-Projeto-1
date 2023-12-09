<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> <!-- Define o tipo de documento como HTML -->
<html> <!-- Documento HTML -->
<head> <!-- Cabeçalho do documento -->
	<link rel="stylesheet" href="styles.css">
    <script src="./script.js"></script>
</head>
<body> <!-- Corpo do documento -->
    <jsp:include page="header.html"/> <!-- Inclui o header (Arquivo header.html) -->

	<h1 class="title_home">Principais linhas de ônibus</h1>
	<main id="container_cards">
    </main>

    <jsp:include page="footer.html"/> <!-- Inclui o footer (Arquivo footer.html) -->
</body>
</html>