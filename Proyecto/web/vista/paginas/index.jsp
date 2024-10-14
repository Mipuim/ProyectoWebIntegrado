<%-- 
    Document   : index
    Created on : 13 oct. 2024, 18:46:04
    Author     : SARA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--  
        %response.sendRedirect("/ControladorLogin");%>
            -->
        <% response.sendRedirect(request.getContextPath() + "/ControladorLogin"); %>
    </body>
</html>
