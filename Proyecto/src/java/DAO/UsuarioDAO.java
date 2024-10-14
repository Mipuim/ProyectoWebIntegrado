
package DAO;

import static java.lang.System.out;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import Modelo.Usuario;
import Conexion.Conexion;

public class UsuarioDAO implements IUsuarioDAO{
    
    @Override
    public Usuario validarLogin(String correo, String contraseña) {
        Usuario usuario = null;
        Connection cnn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String sql = "SELECT id, nombre, correo, rol_id, direccion, telefono, fecha_registro, estado_cuenta, dni FROM usuarios WHERE correo = ? AND contraseña = ?";

        try {
            cnn = new Conexion().getConexion();
            ps = cnn.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, contraseña);
            rs = ps.executeQuery();

            // Si existe un usuario que coincida con las credenciales
            if (rs.next()) {
                usuario = new Usuario();
                usuario.setIdUsuario(rs.getInt("id"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setRolId(rs.getLong("rol_id"));
                usuario.setDireccion(rs.getString("direccion"));
                usuario.setTelefono(rs.getString("telefono"));
                usuario.setFecha(rs.getTimestamp("fecha_registro").toLocalDateTime());
                usuario.setDni(rs.getString("dni"));
                usuario.setEstadoCuenta(rs.getString("estado_cuenta"));
            }

        } catch (Exception e) {
            e.printStackTrace();
            // Si tienes una salida para logs
            System.out.println("Error: " + e.getMessage());
        } finally {
            // Cerrar los recursos
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (cnn != null) cnn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return usuario; // Retorna el objeto Usuario si lo encuentra, o null si no
    } 
    
    @Override
    public boolean registrarUsuario(String nombre, String dni, String correo, String contraseña, 
                                String direccion, String telefono, long rolId) {
        Connection cnn = null;
        PreparedStatement ps = null;

        // SQL para insertar un nuevo usuario
        String sql = "INSERT INTO usuarios (nombre, dni, correo, contraseña, direccion, telefono, rol_id, fecha_registro, estado_cuenta) "
                     + "VALUES (?, ?, ?, ?, ?, ?, ?, NOW(), 0)";

        try {
            cnn = new Conexion().getConexion(); // Obtener conexión a la base de datos
            ps = cnn.prepareStatement(sql);

            // Asignar valores a los parámetros de la consulta
            ps.setString(1, nombre);
            ps.setString(2, dni);
            ps.setString(3, correo);
            ps.setString(4, contraseña);
            ps.setString(5, direccion);
            ps.setString(6, telefono);
            ps.setLong(7, rolId);

            // Ejecutar la inserción
            int filasAfectadas = ps.executeUpdate();

            return filasAfectadas > 0; // Retorna true si se insertó correctamente

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error: " + e.getMessage());
            return false; // Retorna false en caso de error
        } finally {
            // Cerrar los recursos
            try {
                if (ps != null) ps.close();
                if (cnn != null) cnn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
