window.onload = function()
{
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        myFunction(this);
    }
    xhttp.open("GET", "itinerarios_onibus.xml");
    xhttp.send();
}

function myFunction(xml) {
    const xmlDoc = xml.responseXML;
    const x = xmlDoc.getElementsByTagName("ONIBUS");
    let cards = "";
    for (let i = 0; i < 8; i++) {
        console.log(i)
        cards += `<div class="card"><h1>` +
                x[i].getElementsByTagName("NOME")[0].childNodes[0].nodeValue +
                "</h1><p>Numero: " +
                x[i].getElementsByTagName("NUMERO")[0].childNodes[0].nodeValue +
                "</p><p>Partida: " +
                x[i].getElementsByTagName("PARTIDA")[0].childNodes[0].nodeValue +
                "</p><p>Destino: " +
                x[i].getElementsByTagName("DESTINO")[0].childNodes[0].nodeValue +
                `</p><p><button type="button" action="visualizar()"></p></div>`;
    }
    document.getElementById("container_cards").innerHTML = cards;
}