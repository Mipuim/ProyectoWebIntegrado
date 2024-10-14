package Conexion;

import java.sql.*;

public class Conexion {

    public static Connection getConexion() {
        Connection conn = null;
        String baseDatos = "tiendita_foley1"; //cambiar nombre de bd si es necesario
        String url = "jdbc:mysql://localhost:3306/" + baseDatos; //cambiar el puerto si es necesario
        String user = "admin"; // usuario de mi mysql cada quien cambie este parametro si es necesario
        String password = "123456789"; //contraseña en mi mysql cada quien cambie este parametro si es necesario
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Se realizo la coneccion a la bd");
        } catch (Exception e) {
            System.out.println("Error al conectarnos a la bd revisar porfavor: " + e.getMessage());
            System.out.println("si sale error revisa los parametros de arriba");
        }
        return conn;
    }
}
