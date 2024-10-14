
package Controlador;

import DAO.UsuarioDAO;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SARA
 */
@WebServlet(name = "ControladorRegistro", urlPatterns = {"/ControladorRegistro"})
public class ControladorRegistro extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        //no lo utilizamos porque no necesitamos obtener información 
        // Redirigir al formulario de registro
        request.getRequestDispatcher("vista/paginas/registroUsuario.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String nombre = request.getParameter("nombre");
        String dni = request.getParameter("dni");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contra");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("telefono");
        long rolId = 2;
        
        // Validación del nombre (solo letras, no vacío)
        String nombrePattern = "^([A-Z][a-z]+)(\\s[A-Z][a-z]+)*$";
        if (nombre == null || !nombre.matches(nombrePattern)) {
            System.out.println("Nombre inválido.");
            request.setAttribute("errorRegistro", "El nombre debe contener solo letras y no estar vacío.");
            request.getRequestDispatcher("/vista/paginas/registroUsuario.jsp").forward(request, response);
            return;
        }
        // Validación del DNI (solo números, 8 caracteres)
        String dniPattern = "^[0-9]{8}$";
        if (dni == null || !dni.matches(dniPattern)) {
            System.out.println("DNI inválido.");
            request.setAttribute("errorRegistro", "El DNI debe tener 8 dígitos.");
            request.getRequestDispatcher("/vista/paginas/registroUsuario.jsp").forward(request, response);
            return;
        }
        // Validación del formato del correo electrónico (expresión regular)
        String emailPattern = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        if (correo == null || !correo.matches(emailPattern)) {
            // Si el formato del correo es inválido
            System.out.println("Formato de correo inválido.");
            request.setAttribute("errorLogin", "Por favor, ingresa un correo electrónico válido.");
            request.getRequestDispatcher("/vista/paginas/registroUsuario.jsp").forward(request, response);
            return; // Termina el proceso si la validación falla
        }   
        // Validación de la longitud mínima de la contraseña (mínimo 6 caracteres)
        String contraseñaPattern = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\\$%\\^&\\*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?]).{6,}$";
        if (contraseña == null || !contraseña.matches(contraseñaPattern)) {
            // Si la contraseña no cumple con los requisitos
            System.out.println("Contraseña no cumple con los requisitos.");
            request.setAttribute("errorLogin", "La contraseña debe tener al menos 6 caracteres, incluyendo una mayúscula, una minúscula, un número y un símbolo especial.");
            request.getRequestDispatcher("/vista/paginas/registroUsuario.jsp").forward(request, response);
            return; // Termina el proceso si la validación falla
        }
        // Validación de la dirección (no puede estar vacía)
        if (direccion == null || direccion.trim().isEmpty()) {
            System.out.println("Dirección inválida.");
            request.setAttribute("errorRegistro", "La dirección no puede estar vacía.");
            request.getRequestDispatcher("/vista/paginas/registroUsuario.jsp").forward(request, response);
            return;
        }
        // Validación del teléfono (solo dígitos, mínimo 9 caracteres)
        String telefonoPattern = "^[0-9]{9,}$";
        if (telefono == null || !telefono.matches(telefonoPattern)) {
            System.out.println("Teléfono inválido.");
            request.setAttribute("errorRegistro", "El teléfono debe contener al menos 9 dígitos.");
            request.getRequestDispatcher("/vista/paginas/registroUsuario.jsp").forward(request, response);
            return;
        }
        
        // Si todas las validaciones pasan, continuar con el proceso (guardar usuario o realizar acciones)
        // Instancia de UsuarioDAO para registrar el usuario    
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean registroExitoso = usuarioDAO.registrarUsuario(nombre, dni, correo, contraseña, direccion, telefono, rolId);

        if (registroExitoso) {
            System.out.println("registro de usuario exitoso");
            response.sendRedirect("ControladorLogin"); // Redirige a la página de inicio después del registro
        } else {
            System.out.println("error en el registro de usuario");
            request.setAttribute("errorRegistro", "Error al registrar el usuario. Inténtelo de nuevo.");
            request.getRequestDispatcher("vista/paginas/registroUsuario.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
