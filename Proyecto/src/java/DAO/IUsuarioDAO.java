/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package DAO;

import Modelo.Usuario;

/**
 *
 * @author SARA
 */
public interface IUsuarioDAO {
    Usuario validarLogin(String correo, String contraseña);
    
    boolean registrarUsuario(String nombre, String dni, String correo, String contraseña, String direccion, String telefono, long rolId);
}
