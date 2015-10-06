/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package biblioteca.models;

/**
 *
 * @author DARIO PC
 */
public class Autor extends Usuario{
    
    private String nombre;
    
    
    public Autor(String nombre, String telefono, String direccion){
        super(nombre, telefono, direccion);
        this.nombre = nombre;
    }

    public Autor() {
    }
    
     public String getNombre() {
        return nombre;
    }

      public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
