<%-- 
    Document   : registroUsuario
    Created on : 13 oct. 2024, 19:47:33
    Author     : SARA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Usuario</title>
        <link href="${pageContext.request.contextPath}/estilos/style.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.14.3/sweetalert2.all.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.14.3/sweetalert2.min.css" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </head>
    <body>
        
        <c:if test="${not empty errorRegistro}">
            <%
                if (request.getAttribute("errorRegistro") != null) {
            %>
                <script>
                    $(document).ready(function() {
                        Swal.fire({
                            icon: "error",
                            title: "<%= request.getAttribute("errorRegistro") %>",
                        });
                    });
                </script>
            <%
                }
            %>
        </c:if>
        
        
        
        <div class="contenedor">
            <form action="ControladorRegistro" method="POST">
                <h1>Registrar Usuario</h1>
                <div class="input-box">
                    <input type="text" id="nombre" name="nombre" placeholder="Nombre completo" required>
                </div>
                <div class="input-box">
                    <input type="text" id="dni" name="dni" placeholder="DNI" required>
                </div>
                <div class="input-box">
                    <input type="email" id="correo" name="correo" placeholder="E-mail" required>
                </div>
                <div class="input-box">
                    <input type="password" id="contraseña" name="contra" placeholder="Contraseña" required>
                </div>
                <div class="input-box">
                    <input type="text" id="direccion" name="direccion" placeholder="Dirección" required>
                </div>
                <div class="input-box">
                    <input type="text" id="telefono" name="telefono" placeholder="Teléfono" required>
                </div>
                <button type="submit" class="btn">Registrar</button>
            </form> 
        </div>    
        <div class="ola1">1</div>
        <div class="ola2">2</div>
        <div class="ola3">3</div>
</form>
    </body>
</html>
