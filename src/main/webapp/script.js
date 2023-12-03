/* function loadDoc() {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        myFunction(this);
    }
    xhttp.open("GET", "itinerarios_onibus.xml");
    xhttp.send();
} */

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
    let table="<tr><th>Onibus</th><th>Numero</th><th>Partida</th><th>Destino</th></tr>";
    for (let i = 0; i < x.length; i++) {
        table += "<tr><td>" +
        x[i].getElementsByTagName("NOME")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("NUMERO")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("PARTIDA")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("DESTINO")[0].childNodes[0].nodeValue +
        "</td></tr>";
    }
    document.getElementById("cards").innerHTML = table;
}