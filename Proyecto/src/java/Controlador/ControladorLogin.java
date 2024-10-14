/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
import javax.servlet.http.HttpSession; //para validar la sesion iniciada
/**
 *
 * @author SARA
 */
@WebServlet(name = "ControladorLogin", urlPatterns = {"/ControladorLogin"})
public class ControladorLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        request.getRequestDispatcher("/vista/paginas/login.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        // Obtener parámetros del formulario de inicio de sesión
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contra");
        System.out.println("correo : " +correo+"\n contraseña : "+contraseña);
        
        // Instancia de UsuarioDAO para validar el login
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usuario = usuarioDAO.validarLogin(correo, contraseña);
        
        if (usuario != null) { //significa que si existe el usuario y esta validado con su id
            // Login exitoso: crear una sesión y redirigir a la página principal
            System.out.println("usuario existe.. iniciar sesión");
            HttpSession sesion = request.getSession(); //crear sesión
            sesion.setAttribute("usuarioLogueado", usuario);
            
            // Redirigir a la página de inicio (home.jsp o lo que corresponda)
            request.getRequestDispatcher("/vista/paginas/inicio.jsp").forward(request, response);
        } else {
            // Login fallido: enviar de vuelta a la página de login con un mensaje de error
            System.out.println("Login fallido");
            request.setAttribute("errorLogin", "Correo o contraseña incorrectos.");
            request.getRequestDispatcher("/vista/paginas/login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
