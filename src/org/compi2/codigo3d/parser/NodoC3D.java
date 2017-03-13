package org.compi2.codigo3d.parser;

/**
 * Clase sencilla para sintetizar información entre producciones.
 * Cuenta con un único atributo de tipo String, pero pueden agregársele
 * los atributos que se consideren necesarios.
 * @author esvux
 */
public class NodoC3D {
    private String cad;
    private String tempV;
    private String tempF;
    private String cadena;
    public NodoC3D(String cad) {
        this.cad = cad;
    }

    public NodoC3D(String cad, String tempV, String tempF) {
        this.cad = cad;
        this.tempV = tempV;
        this.tempF = tempF;
    }

    public NodoC3D(String cad, String tempV) {
        this.cad = cad;
        this.tempV = tempV;
    }

    public String getTempV() {
        return tempV;
    }

    public void setTempV(String tempV) {
        this.tempV = tempV;
    }

    public String getTempF() {
        return tempF;
    }

    public void setTempF(String tempF) {
        this.tempF = tempF;
    }

    public String getCadena() {
        return cadena;
    }

    public void setCadena(String cadena) {
        this.cadena = cadena;
    }
    
    
    
    public String getCad(){
        return cad;
    }
        
}
