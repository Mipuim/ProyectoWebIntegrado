package Modelo;

import java.time.LocalDateTime;

public class Usuario {
    private int idUsuario;
    private String nombre;
    private String correo;
    private String contraseña;
    private long rolId;
    private String direccion;
    private String telefono;
    private LocalDateTime fecha;
    private String estadoCuenta;
    private String dni;

    public Usuario() {
    }

    public Usuario(int idUsuario, String nombre, String correo, String contraseña, long rolId, String direccion, String telefono, LocalDateTime fecha, String estadoCuenta, String dni) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.correo = correo;
        this.contraseña = contraseña;
        this.rolId = rolId;
        this.direccion = direccion;
        this.telefono = telefono;
        this.fecha = fecha;
        this.estadoCuenta = estadoCuenta;
        this.dni=dni;
    }

    public int getIdUsuario() {return idUsuario;}
    public void setIdUsuario(int idUsuario) {this.idUsuario = idUsuario;}
    public String getNombre() {    return nombre;}
    public void setNombre(String nombre) {    this.nombre = nombre;}
    public String getCorreo() {     return correo;}
    public void setCorreo(String correo) {this.correo = correo;}
    public String getContraseña() {    return contraseña;}
    public void setContraseña(String contraseña) {    this.contraseña = contraseña;}
    public long getRolId() {    return rolId;}
    public void setRolId(long rolId) { this.rolId = rolId;}
    public String getDireccion() {    return direccion; }
    public void setDireccion(String direccion) {    this.direccion = direccion;   }
    public String getTelefono() {     return telefono;  }
    public void setTelefono(String telefono) {    this.telefono = telefono;  }
    public LocalDateTime getFecha() {       return fecha;    }
    public void setFecha(LocalDateTime fecha) {        this.fecha = fecha;    }
    public String getEstadoCuenta() {        return estadoCuenta;    }
    public void setEstadoCuenta(String estadoCuenta) {        this.estadoCuenta = estadoCuenta;    }
    public String getDni() {        return estadoCuenta;    }
    public void setDni(String estadoCuenta) {        this.estadoCuenta = estadoCuenta;    }
    
}
