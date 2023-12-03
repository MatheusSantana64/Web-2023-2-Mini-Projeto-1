<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> <!-- Define o tipo de documento como HTML -->
<html> <!-- Documento HTML -->
<head> <!-- Cabeçalho do documento -->
	<link rel="stylesheet" href="./styles.css">
</head>
<body> <!-- Corpo do documento -->
    <header> <!-- Cabeçalho da página -->
        <img src="logo.png" alt="Logo" id="logo"> <!--Logo da página (Arquivo logo.png)-->
        <nav> <!-- Navegação -->
            <ul> <!-- Lista de navegação -->
                <li><a href="index.html">Home</a></li> <!-- Link para a página inicial -->
                <li> <!-- Item de lista com submenu -->
                    <a href="rotas.html">Rotas</a> <!-- Link para a página de rotas -->
                    <ul> <!-- Submenu -->
                        <li><a href="itinerarios.html">Itinerários</a></li> <!-- Link para a página de itinerários -->
                        <li><a href="itinerarios_cadastro.html">Cadastro de Itinerários</a></li> <!-- Link para a página de cadastro de itinerários -->
                    </ul>
                </li>
                <!-- Será necessário alterar cada item abaixo quando decidir qual será o nome de cada página-->
                <li><a href="Cadastro.html">Cadastro</a></li> <!-- Link para a página 3 -->
                <li><a href="item4.html">Item 4</a></li> <!-- Link para a página 4 -->
                <li><a href="item5.html">Item 5</a></li> <!-- Link para a página 5 -->
            </ul>
        </nav>
    </header>
</body>
</html>