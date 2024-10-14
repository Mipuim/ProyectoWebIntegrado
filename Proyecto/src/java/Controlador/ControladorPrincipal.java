package Controlador;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Categoria;
import Modelo.Usuario;
import DAO.CategoriaDAO;
import DAO.UsuarioDAO;

@WebServlet(name = "ControladorPrincipal", urlPatterns = {"/ControladorPrincipal"})
public class ControladorPrincipal extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

/*        int mostrarIdMaterial = new MaterialDAO().siguienteIdMaterial();
        List<Material> listarMateriales = new MaterialDAO().listarMaterial(); //linea con error
        System.out.println("Número de materiales: " + listarMateriales.size());
        List<Categoria> listarCategorias = new CategoriaDAO().listarCategoria();

//        String accion = request.getParameter("accion");
//
//        if (accion != null && accion.equals("paginaInicial")) {
        request.setAttribute("listarCategorias", listarCategorias);
        request.setAttribute("mostrarIdMaterial", mostrarIdMaterial);
        request.setAttribute("listarMateriales", listarMateriales);
        
        request.getRequestDispatcher("/Vista/formularioMateriales.jsp").forward(request, response);

//        }*/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
/*
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        String nombre = request.getParameter("nombre");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        int idCategoria = Integer.parseInt(request.getParameter("categoria"));
        
        String nombreCategoria = new CategoriaDAO().obtenerNombreCategoria(idCategoria);
        Categoria categoria = new Categoria(idCategoria, nombreCategoria);
        
        Material nuevoMaterial = new Material(codigo, nombre, cantidad, categoria);
        boolean materialDAO = new MaterialDAO().agregarMaterial(nuevoMaterial);
        
        int mostrarIdMaterial = new MaterialDAO().siguienteIdMaterial();
        List<Material> listarMateriales = new MaterialDAO().listarMaterial();
        System.out.println("Número de materiales: " + listarMateriales.size());
        List<Categoria> listarCategorias = new CategoriaDAO().listarCategoria();
        
        request.setAttribute("listarCategorias", listarCategorias);
        request.setAttribute("mostrarIdMaterial", mostrarIdMaterial);
        request.setAttribute("listarMateriales", listarMateriales);
        
        request.getRequestDispatcher("/Vista/formularioMateriales.jsp").forward(request, response);
*/    
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
