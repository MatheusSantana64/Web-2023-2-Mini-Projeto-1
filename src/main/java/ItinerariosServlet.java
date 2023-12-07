// Este Servlet lida com solicitações GET na rota /itinerarios (Quando acessa a página /itinerarios). Quando uma solicitação é feita para esta rota, o Servlet lê o arquivo XML itinerarios_onibus.xml, obtém todos os ônibus do arquivo e os adiciona a uma lista.
// Cada ônibus é representado como um mapa com duas entradas: o nome do ônibus e o número do ônibus. Então a lista de ônibus é definida como um atributo da solicitação e a solicitação é encaminhada para a página itinerarios.jsp.

// Importando as bibliotecas necessárias
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

// Define a rota do Servlet
@WebServlet("/itinerarios")
public class ItinerariosServlet extends HttpServlet {
    // Método para lidar com solicitações GET
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lê o arquivo XML e armazena em doc
            Document doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(getServletContext().getRealPath("/itinerarios_onibus.xml"));
            // Obtém todos os ônibus do arquivo XML
            NodeList busList = doc.getElementsByTagName("ONIBUS");
            // Cria uma lista para armazenar os ônibus
            ArrayList<Map<String, String>> buses = new ArrayList<>();
            // Itera sobre cada ônibus
            for (int i = 0; i < busList.getLength(); i++) {
                // Obtém o elemento do ônibus atual
                Element busElement = (Element) busList.item(i);
                // Cria um mapa para armazenar as informações do ônibus
                Map<String, String> busMap = new HashMap<>();
                // Adiciona o nome do ônibus ao mapa
                busMap.put("name", busElement.getElementsByTagName("NOME").item(0).getTextContent());
                // Adiciona o número do ônibus ao mapa
                busMap.put("number", busElement.getElementsByTagName("NUMERO").item(0).getTextContent());
                // Adiciona o mapa do ônibus à lista de ônibus
                buses.add(busMap);
            }
            // Define a lista de ônibus como um atributo da solicitação
            request.setAttribute("buses", buses);
            // Encaminha a solicitação para a página itinerarios.jsp
            request.getRequestDispatcher("/itinerarios.jsp").forward(request, response);
        } catch (Exception e) {
            // Imprime a pilha de chamadas da exceção
            e.printStackTrace();
        }
    }
}