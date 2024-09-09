<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
            />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>TIENDA||FOLEY</title>
        <link href="estilos/slider.css" rel="stylesheet" type="text/css"/>
        <link href="estilos/menu.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <header>
            <nav>
                <div class="logo">
                    <a href="#">FOLEY</a>
                </div>
                <input type="checkbox" id="click" />
                <label for="click" class="mainicon">
                    <div class="menu">
                        <i class="bi bi-list"></i>
                    </div>
                </label>
                <ul>
                    <li><a href="#" class="active">Inicio</a></li>
                    <li><a href="#">Nosotros</a></li>
                    <li><a href="#">Sedes</a></li>
                    <li><a href="#">Redes Sociales</a></li>
                    <li><a href="#">Contactos</a></li>
                </ul>
            </nav>
        </header>
        <section class="containerSlide">
            <div class="slide">
                <div
                    class="itemSlide"
                    style="
                    background-image: url(https://images.unsplash.com/photo-1596742578443-7682ef5251cd?q=80&w=2154&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
                    "
                    >
                    <div class="content">
                        <div class="name">Smartphones</div>
                        <div class="des">
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
                        </div>
                        <button>Mas cositas...</button>
                    </div>
                </div>
                <div
                    class="itemSlide"
                    style="
                    background-image: url(https://wallpapers.com/images/featured/laptop-murjp1nk4lp1idlt.jpg);
                    "
                    >
                    <div class="content">
                        <div class="name">Laptops</div>
                        <div class="des">
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
                        </div>
                        <button>Mas cositas...</button>
                    </div>
                </div>
                <div
                    class="itemSlide"
                    style="
                    background-image: url(https://fotografias.lasexta.com/clipping/cmsimages02/2024/03/11/B66ADA7B-8AE7-413A-AAF0-6FDADDB76640/filtran-nuevos-detalles-proximos-ipad-apple-habra-sorpresas-camara_98.jpg?crop=1300,731,x0,y9&width=1900&height=1069&optimize=high&format=webply);
                    "
                    >
                    <div class="content">
                        <div class="name">Tablets</div>
                        <div class="des">
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
                        </div>
                        <button>Mas cositas...</button>
                    </div>
                </div>
                <div
                    class="itemSlide"
                    style="
                    background-image: url(https://media.es.wired.com/photos/64adb76f2ffab1a554bf9524/16:9/w_2560%2Cc_limit/amazon%2520prime%2520day%2520ofertas%2520videojuegos%25202023.jpg);
                    "
                    >
                    <div class="content">
                        <div class="name">Mandos</div>
                        <div class="des">
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
                        </div>
                        <button>Mas cositas...</button>
                    </div>
                </div>
                <div
                    class="itemSlide"
                    style="
                    background-image: url(https://wwwhatsnew.com/wp-content/uploads/2022/12/juegos.jpg);
                    "
                    >
                    <div class="content">
                        <div class="name">Consolas</div>
                        <div class="des">
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
                        </div>
                        <button>Mas cositas...</button>
                    </div>
                </div>
                <div
                    class="itemSlide"
                    style="
                    background-image: url(https://ergo2play.com/cdn/shop/articles/M314_1080x.jpg?v=1633105598);
                    "
                    >
                    <div class="content">
                        <div class="name">Perifericos Gamers</div>
                        <div class="des">
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
                        </div>
                        <button>Mas cositas...</button>
                    </div>
                </div>
            </div>

            <div class="button">
                <button class="prev"><i class="fa-solid fa-arrow-left"></i></button>
                <button class="next"><i class="fa-solid fa-arrow-right"></i></button>
            </div>
        </section>
        <script src="JavaScript/slider.js" type="text/javascript"></script>
    </body>
</html>
