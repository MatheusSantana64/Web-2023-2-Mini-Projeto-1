<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Link para o arquivo CSS -->
    <link rel="stylesheet" href="styles.css">
    <!-- Importa a biblioteca jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        // Quando o documento estiver pronto
        $(document).ready(function() {
            // Quando o valor do elemento com id "busSelect" mudar
            $("#busSelect").change(function() {
                // Obtém o valor do elemento com id "busSelect"
                var busName = $(this).val();
                // Faz uma solicitação GET para a rota "busRoute" (BusRouteServlet) com o nome do ônibus como parâmetro
                $.get("busRoute", {busName: busName}, function(data) {
                    // Atualiza o conteúdo do elemento com id "route" com os pontos de parada do ônibus
                    $("#route").html(data.replace(/\n/g, "<br>"));
                });
            });
        });
    </script>
</head>
<body>
    <!-- Inclui o header -->
    <jsp:include page="header.html"/>
	
	<h1 class="h1-itinerarios">Itinerarios</h1>
	<h2 class="h2-itinerarios">Consulta por itinerários de ônibus</h2>
	
    <!-- Elemento select para escolher um ônibus -->
    <select id="busSelect">
		<option value="" selected>SELECIONE UMA LINHA DE ÔNIBUS</option>
        <!-- Itera sobre cada ônibus -->
        <c:forEach var="bus" items="${buses}">
            <!-- Cria uma opção para cada ônibus -->
            <option value="${bus.name}">${bus.number} - ${bus.name}</option>
        </c:forEach>
    </select>

    <!-- Elemento para exibir os pontos de parada do ônibus -->
    <div id="route"></div>

    <!-- Inclui o footer -->
    <jsp:include page="footer.html"/>
</body>
</html>