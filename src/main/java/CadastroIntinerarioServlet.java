import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import java.io.IOException;
import java.io.PrintWriter;

// Define a rota do Servlet
@WebServlet("/cadIntinerario")
public class CadastroIntinerarioServlet extends HttpServlet {

    // Método para lidar com solicitações GET
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtém o nome da região da solicitação
        String busreginame = request.getParameter("busreginame");
        try {
            // Lê o arquivo XML e armazena no doc
            Document doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(getServletContext().getRealPath("/pontos_regiao.xml"));
            // Obtém todas as regiões do arquivo XML
            NodeList regiaoList = doc.getElementsByTagName(busreginame);
            // Define o tipo de conteúdo da resposta e a codificação de caracteres
            response.setContentType("text/html; charset=UTF-8");
            // Obtém o escritor da resposta
            PrintWriter out = response.getWriter();

            // Obtém o elemento do região atual (Converte o nó em elemento)
            Element regiaoElement = (Element) regiaoList.item(0);

            // Obtém todos os pontos de parada da região
            NodeList stopList = regiaoElement.getElementsByTagName("PARADAS").item(0).getChildNodes();
            // Define a codificação de caracteres da resposta
            response.setCharacterEncoding("UTF-8");
            
            // Itera sobre cada ponto de parada
            for (int j = 0; j < stopList.getLength(); j++) {
                // Obtém o nó do ponto de parada atual
                Node stop = stopList.item(j);
                // Verifica se o nó é um elemento
                if (stop.getNodeType() == Node.ELEMENT_NODE) {
                    // Escreve o ponto de parada na resposta
                    out.println(((Element) stop).getTextContent());
                }
            }
        } catch (Exception e) {
            // Imprime a pilha de chamadas da exceção
            e.printStackTrace();
        }
    }
}