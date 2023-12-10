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
    const onibus = xmlDoc.getElementsByTagName("ONIBUS");
    let cards = "";
    for (let i = 0; i < 8 && i < onibus.length; i++) {
        cards += `<div class="card"><h1>` +
                onibus[i].getElementsByTagName("NOME")[0].childNodes[0].nodeValue +
                "</h1><p>Numero: " +
                onibus[i].getElementsByTagName("NUMERO")[0].childNodes[0].nodeValue +
                "</p><p>Partida: " +
                onibus[i].getElementsByTagName("PARTIDA")[0].childNodes[0].nodeValue +
                "</p><p>Destino: " +
                onibus[i].getElementsByTagName("DESTINO")[0].childNodes[0].nodeValue +
                `</p><p class="func">` +
                onibus[i].getElementsByTagName("FUNCIONAMENTO")[0].childNodes[0].nodeValue +
                `</p></div>`;
    }
    document.getElementById("container_cards").innerHTML = cards;
}