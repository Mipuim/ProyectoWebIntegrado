<%-- 
    Document   : Reclamaciones.jsp
    Created on : 7 sept 2024, 12:02:26
    Author     : salar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Libro de Reclamaciones</title>
        <link rel="stylesheet" href="estilos/estilosFormulario.css">

    </head>
    <body>
        <div class="containerForm">
            <div>
                <header >
                    <h1>LIBRO DE RECLAMACIONES</h1> 
                    <h2>HOJA DE RECLAMACIÓN</h2>
                    <p class="numero">Nº 000000001</p>
                </header>
                <div class="form-princ">
                    <form action="formulario.jsp" method="post" class="form-container">
                        <!-- Pagina 1 -->  
                        <div class="pagina">

                            <div class="titulo">
                            <p>1. DATOS DEL CONSUMIDOR RECLAMANTE</p>

                                <div class="campo">
                                    <label for="nombre">Nombre:</label><br>
                                    <input type="text" id="nombre" name="nombre" required><br><br>
                                </div>
                                <div class="campo">
                                    <label for="domicilio">Domicilio:</label><br>
                                    <input type="text" id="domicilio" name="domicilio" required><br><br>
                                </div>
                                <div class="campo">
                                    <label for="dni">DNI / CE:</label><br>
                                    <input type="text" id="dni" name="dni" required><br><br>
                                </div>
                                <div class="campo">
                                    <label for="telefono">Teléfono / E-mail:</label><br>
                                    <input type="text" id="telefono" name="telefono" required><br><br>
                                </div>

                            </div>
                        </div> 
                        <hr> 
                        <p></p>
                        <!-- Pagina 2 -->  
                        <div class="pagina">

                            <div class="titulo">
                                <p>2. IDENTIFICACIÓN DEL BIEN CONTRATADO</p>

                                <div class="campo">
                                    <label for="producto">Producto o Servicio:</label><br>
                                    <input type="text" id="producto" name="producto" required><br><br>
                                </div>
                                <div class="campo">
                                     <label for="montoReclamado">Monto Reclamado:</label><br>
                                    <input type="text" id="montoReclamado" name="montoReclamado"><br><br>
                                </div>
                                <div class="campo">
                                    <label for="descripcion">Descripción:</label><br>
                                    <textarea id="descripcion" name="descripcion" rows="4" required></textarea><br><br>
                                </div>

                            </div>
                        </div>
                        <hr> 
                        <p></p>
                        <!-- Pagina 2 -->  
                        <div class="pagina">

                            <div class="titulo">
                                <p>3. DETALLE DE LA RECLAMACIÓN Y PEDIDO DEL CONSUMIDOR</p>
                                <div class="campo">
                                    <input type="radio" id="reclamo" name="tipo" value="reclamo" required>
                                    <label for="reclamo">Reclamo</label><br>

                                    <input type="radio" id="queja" name="tipo" value="queja">
                                    <label for="queja">Queja</label><br><br>
                                </div>
                                <div class="campo">
                                        <label for="detalle">Detalle:</label><br>
                                        <textarea id="detalle" name="detalle" rows="4" required></textarea><br><br>
                                </div>
                                <div class="campo">
                                    <label for="pedido">Pedido:</label><br>
                                    <textarea id="pedido" name="pedido" rows="2" required></textarea><br><br>
                                </div>
                                <div class="campo">
                                    <input type="submit" value="Enviar">
                                </div>

                            </div>
                        </div>    
                    </form>               
                </div>
            </div>    
        </div>
    </body>
</html>
