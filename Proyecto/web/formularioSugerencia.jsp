<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="estilos/Sugerencia.css" rel="stylesheet" type="text/css"/>
        <title>Formulario de sugerencias</title>
    </head>
    <body>
        <div class="form-container">
        <h2>Formulario de Sugerencias</h2>
        <form>
            <div class="input-group">
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="calificacion">Calificación</label>
                <select id="calificacion" name="calificacion" required>
                    <option value="" disabled selected>Seleccione una opción</option>
                    <option value="5">Excelente</option>
                    <option value="4">Muy bueno</option>
                    <option value="3">Bueno</option>
                    <option value="2">Regular</option>
                    <option value="1">Malo</option>
                </select>
            </div>
            <div class="input-group">
                <label for="mensaje">Mensaje de sugerencia o queja</label>
                <textarea id="mensaje" name="mensaje" required></textarea>
            </div>
            <button type="submit">Enviar</button>
        </form>
    </div>
    </body>      
</html>
