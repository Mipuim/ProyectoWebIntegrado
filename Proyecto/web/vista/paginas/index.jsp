<%-- 
    Document   : index
    Created on : 3 set. 2024, 13:44:51
    Author     : SARA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href="estilos/style.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>
        <div class="contenedor">
            <form action="">
                <h1>Login</h1>
                <div class="input-box">
                    <input type="text" placeholder="Username" required>
                    <i class='bx bxs-user'></i>
                </div>
                <div class="input-box">
                    <input type="password" placeholder="Password" required>
                    <i class='bx bxs-lock-alt'></i>
                </div>
                <div class="remember">
                    <label><input type="checkbox">Remember me</label>
                    <a href="#">Forgot password?</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <div class="register-lin">
                    <p>Don't have an account?
                    <a href="#">Register</a> </p>
                </div>
            </form>
        </div>    
        <div class="ola1">1</div>
        <div class="ola2">2</div>
        <div class="ola3">3</div>
    </body>
</html>
