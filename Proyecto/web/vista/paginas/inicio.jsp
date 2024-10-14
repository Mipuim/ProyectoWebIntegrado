<%-- 
    Document   : inicio
    Created on : 3 set. 2024, 13:53:25
    Author     : SARA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href="estilos/estilosInicio.css" rel="stylesheet" type="text/css"/>
        <link href="estilos/estilosPrincipal.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="header">header</div>
        <div class="header">nav</div>
        <div class="imagenInicio">
                <img src="Imagenes/Banner.png" alt="Imagen a ancho completo" class="imagen-ancha"/>
        </div>
        <div class="contenedor">
            <div class="catProductos">
                <div class="titulo_cat_productos titulo"><b>CATEGORIAS</b> </div>
                <div class="cat_productos1">
                    <p>Audifonos</p>
                    <img src="Imagenes/Audifonos.png" alt="" class="imagenes-categoria"/>
                </div>
                <div class="cat_productos2">
                    <p>Componentes de PC</p>
                    <img src="Imagenes/ComponentesPC.png" alt="" class="imagenes-categoria"/>
                </div>
                <div class="cat_productos3">
                    <p>Laptops</p>
                    <img src="Imagenes/Laptops.png" alt="" class="imagenes-categoria"/>
                </div>
                <div class="cat_productos4">
                    <p>Tablets</p>
                    <img src="Imagenes/Tablets.png" alt="" class="imagenes-categoria"/>
                </div>
                <div class="cat_productos5">
                    <p>Mandos</p>
                    <img src="Imagenes/mandos.png" alt="" class="imagenes-categoria"/>
                </div>
            </div>
            
            <div class="detalles">
                <div class="foto2">
                    <img src="Imagenes/foto2.png" alt=""/>
                </div>
                <div class="foto3">  
                    <img src="Imagenes/foto3.png" alt=""/>
                </div>
                <div class="texto2">
                    <p>"Explora una selección exclusiva de los mejores productos en un solo destino."</p>
                </div>
                <div class="texto3">"Descubre nuestra gama de productos de élite."</div>
            </div>
            <div class="promos">
                <!--<div class="titulo_promociones titulo">Promociones</div>-->
                <div class="slider-frame">
                    <ul>
                        <li><img src="Imagenes/promo1.png" alt=""></li>
                        <li><img src="Imagenes/promo2.png" alt=""></li>
                        <li><img src="Imagenes/promo3.png" alt=""></li>
                        <li><img src="Imagenes/promo4.png" alt=""></li>
                    </ul>
                </div>
            </div>
            <%@ include file="/vista/componentes/footer.jsp" %>        
        </div>

    
    
    </body>
</html>
