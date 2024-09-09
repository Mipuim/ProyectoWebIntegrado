<%-- 
    Document   : indexPreguntas
    Created on : 9 set. 2024, 12:22:18
    Author     : SARA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Preguntas Frecuentes</title>
        
        <link href="estilos/estilosPrincipal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="header">header</div>
        <div class="header">nav</div>
        <div class="contenedor">
            <div class="titulo"></div>
            <div class="formulario">
                <jsp:include page="preguntas.jsp"/>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>  
    </body>
</html>
