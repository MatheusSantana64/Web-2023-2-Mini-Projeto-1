<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> <!-- Define o tipo de documento como HTML -->
<html> <!-- Documento HTML -->
<head> <!-- Cabeçalho do documento -->
	<link rel="stylesheet" href="./styles.css">
    <script src="./script.js"></script>
	<style>
		table, th, td {
			border: 1px solid black;
			border-collapse: collapse;
		}
		th, td {
			padding: 5px;
		}
	</style>
</head>
<body> <!-- Corpo do documento -->
    <jsp:include page="header.html"/> <!-- Inclui o header (Arquivo header.html) -->

	<h1>Exemplo Ajax com XML</h1>
	<table id="cards"></table>

</body>
</html>