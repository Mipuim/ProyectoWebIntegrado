package DAO;

import static java.lang.System.out;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import Modelo.Categoria;
import Conexion.Conexion;

public class CategoriaDAO implements ICategoriaDAO {

    @Override
    public List<Categoria> listarCategoria() {
        Connection cnn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT id, nombre FROM categorias";
        List<Categoria> lista = new ArrayList<>();
        try {
            cnn = new Conexion().getConexion();
            ps = cnn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
                Categoria c = new Categoria(
                        rs.getInt("id"),
                        rs.getString("nombre")
                );
                lista.add(c);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        } finally {
            if (rs != null) try {
                rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (ps != null) try {
                ps.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (cnn != null) try {
                cnn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return lista;
    }

    @Override
    public String obtenerNombreCategoria(int idCategoria) {
        String nombreCategoria = null;
        Connection cnn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT nombre FROM categorias WHERE idCategoria = ?";
        try {
            cnn = new Conexion().getConexion();
            ps = cnn.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                nombreCategoria = rs.getString("nombre");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
        
        return nombreCategoria;
    }

}
