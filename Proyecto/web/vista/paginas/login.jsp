<%-- 
    Document   : index
    Created on : 3 set. 2024, 13:44:51
    Author     : SARA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        
        <link href="${pageContext.request.contextPath}/estilos/style.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.14.3/sweetalert2.all.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert2/11.14.3/sweetalert2.min.css" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        
        
        <title>Login</title>
        
    </head>
    <body>
        
        <c:if test="${not empty errorLogin}">
            <%
                if (request.getAttribute("errorLogin") != null) {
            %>
                <script>
                    $(document).ready(function() {
                        Swal.fire({
                            icon: "error",
                            title: "<%= request.getAttribute("errorLogin") %>",
                        });
                    });
                </script>
            <%
                }
            %>
        </c:if>
        
            
       
                
        <div class="contenedor">
            <form action="ControladorLogin" method="POST">
                <h1>Login</h1>
                <div class="input-box">
                    <input type="text" id="correo" name="correo" placeholder="E-mail" required>
                    <i class='bx bxs-user'></i>
                </div>
                <div class="input-box">
                    <input type="password" id="contra" name="contra" placeholder="Password" required>
                    <i class='bx bxs-lock-alt'></i>
                </div>
                <div class="remember">
                    <label><input type="checkbox">Remember me</label>
                    <a href="#">Forgot password?</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <div class="register-lin">
                    <p>Don't have an account?
                    <a href="ControladorRegistro">Register</a> </p>
                </div>
            </form>
            

            
        
        </div>
        
        
        <div class="ola1">1</div>
        <div class="ola2">2</div>
        <div class="ola3">3</div>
        
    </body>
</html>
