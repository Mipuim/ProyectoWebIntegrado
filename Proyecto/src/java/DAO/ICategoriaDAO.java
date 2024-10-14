package DAO;

import java.util.List;
import Modelo.Categoria;

public interface ICategoriaDAO {
    
    List<Categoria> listarCategoria();
    
    String obtenerNombreCategoria(int idCategoria);
}
