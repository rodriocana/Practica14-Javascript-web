<%-- 
    Document   : Indice
    Created on : 16 may 2024, 9:48:18
    Author     : Rodri
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="imagenes/icono.png" type="image/ico">
    <link rel="stylesheet" type="text/css" href="ESTILOS/Indice.css" title="style">
    <title>Indice</title>
</head>
<body style="background-image: url('./imagenes/azulfondo2.png'); background-repeat: no-repeat; background-attachment: fixed;">

<%
    // Recoger los datos del formulario
    String nombre = request.getParameter("nombre");
    String telefono = request.getParameter("telefono");
    String email = request.getParameter("email");
    String gradoSuperior = request.getParameter("GradoSuperior");

    // Guardar los datos en la sesión
    if (nombre != null) session.setAttribute("nombre", nombre);
    if (telefono != null) session.setAttribute("telefono", telefono);
    if (email != null) session.setAttribute("email", email);
    if (gradoSuperior != null) session.setAttribute("GradoSuperior", gradoSuperior);
    

%>

<header>
    <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menú</span>
</header>

<section id="Introducion">
    <center>
        <p>Bienvenidos la web diseñada para la práctica 14 de la recuperación de PSP, una web donde hablaré sobre herramientas web, Javascript y React.js.</p>
    </center>
</section>

<div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="Indice.jsp">Inicio</a>
    <a href="principal.html">Artículos</a>
    <a href="VideoJS.html">Video Javascript</a>
    <a href="ReproductorJavascript.html">Reproductor Javascript</a>
</div>

<section id="Sobremi">
    <li><b><u>Sobre mí</u></b></li>
    <p><i id="mayuscula">Mi nombre es <%= session.getAttribute("nombre") %>, resido en Sevilla y estoy estudiando un grado superior de <%= session.getAttribute("GradoSuperior") %>.</i></p>
    <li><b>Contacto</b></li>
    <p>Mi Teléfono móvil: <a href="tel:<%= session.getAttribute("telefono") %>"><%= session.getAttribute("telefono") %></a></p>
    <p>Mi email: <a href="mailto:<%= session.getAttribute("email") %>"><%= session.getAttribute("email") %></a></p>
</section>

<footer class="clear">
   <span id="contador">0h 0m 0s</span>
</footer>

<script>
    function openNav() {
        document.getElementById("mySidenav").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        document.getElementById("main").style.marginLeft= "0";
    }
    
    // a partir de aqui el contador de javascript

    var segundos = 0;
    var minutos = 30;
    var horas = 1;

    setInterval(function() {
        segundos--;
        if (segundos === -1) {
            segundos = 59;
            minutos--;
            if (minutos === -1) {
                minutos = 59;
                horas--;
                if (horas === -1) {
                    // Aquí puedes agregar un código para lo que quieras que suceda cuando el contador llegue a cero
                }
            }
        }
        document.getElementById("contador").innerText = horas + "h " + minutos + "m " + segundos + "s";
    }, 1000);
</script>
</body>
</html>