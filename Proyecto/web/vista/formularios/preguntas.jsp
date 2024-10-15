<%-- 
    Document   : preguntas
    Created on : 8 sept 2024, 18:36:29
    Author     : elenin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Preguntas Frecuentes</title>
        <link href="${pageContext.request.contextPath}/estilos/estilosPreguntas.css" rel="stylesheet" type="text/css"/>
        <script>
            function toggleAnswer(id) {
                var answer = document.getElementById(id);
                var question = document.querySelector(`[data-target="${id}"]`);
                if (answer.style.display === "none" || answer.style.display === "") {
                    answer.style.display = "block";
                    question.classList.add("active");
                } else {
                    answer.style.display = "none";
                    question.classList.remove("active");
                }
            }
        </script>
    </head>

    <body>
        <div class="faq-container">
            <h2 class="faq-header">Preguntas Frecuentes</h2>

            <div class="faq-item">
                <div class="faq-question" data-target="answer1" onclick="toggleAnswer('answer1')">¿Ofrecen garantía en los productos electrónicos?</div>
                <div class="faq-answer" id="answer1">Sí, todos nuestros productos electrónicos vienen con una garantía estándar del fabricante, que generalmente cubre entre 6 y 12 meses a partir de la fecha de compra. 
                    Algunos productos pueden tener una garantía extendida disponible por un costo adicional. Para más detalles, revisa la descripción específica del producto o contáctanos.</div>
            </div>

            <div class="faq-item">
                <div class="faq-question" data-target="answer2" onclick="toggleAnswer('answer2')">¿Cuánto tiempo tardan en procesar y enviar los pedidos?</div>
                <div class="faq-answer" id="answer2">Los pedidos se procesan dentro de 1-2 días hábiles después de la confirmación del pago. El tiempo de envío varía según tu ubicación, pero generalmente oscila entre 3 y 7 días hábiles. 
                    Ofrecemos opciones de envío exprés por un costo adicional para entregas más rápidas.</div>
            </div>

            <div class="faq-item">
                <div class="faq-question" data-target="answer3" onclick="toggleAnswer('answer3')">¿Qué métodos de pago aceptan?</div>
                <div class="faq-answer" id="answer3"> Aceptamos varios métodos de pago seguros, incluyendo tarjetas de crédito y débito (Visa, MasterCard, American Express), transferencias bancarias, PayPal y pagos contra entrega en algunas ubicaciones. 
                    Todos los pagos están protegidos mediante encriptación para garantizar la seguridad de tus datos.</div>
            </div>

            <div class="faq-item">
                <div class="faq-question" data-target="answer4" onclick="toggleAnswer('answer4')">¿Puedo devolver o cambiar un producto si no estoy satisfecho?</div>
                <div class="faq-answer" id="answer4"> Sí, ofrecemos una política de devolución de 14 días para productos que no hayan sido usados y estén en su empaque original. Si el producto llega defectuoso o dañado, puedes solicitar un cambio o un reembolso completo. 
                    Consulta nuestra política de devoluciones para obtener más detalles y pasos a seguir.</div>
            </div>

            <div class="faq-item">
                <div class="faq-question" data-target="answer5" onclick="toggleAnswer('answer5')">¿Ofrecen asistencia técnica para los productos comprados?</div>
                <div class="faq-answer" id="answer5"> Sí, proporcionamos asistencia técnica básica para todos los productos comprados en nuestra tienda. Puedes contactarnos a través de nuestro centro de ayuda en línea o vía telefónica para recibir soporte.
                    Además, algunos productos incluyen acceso a soporte técnico del fabricante.</div>
            </div>

            <!-- Añadir más preguntas -->

        </div>
    </body>
</html>


