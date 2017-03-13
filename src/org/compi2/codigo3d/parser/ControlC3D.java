package org.compi2.codigo3d.parser;

/**
 *
 * @author esvux
 */
public class ControlC3D {
    
    private static int temp = 0;
    private static String c3d = "";
    private static String etqV = "";
    private static String etqF = "";
    private static int tempL = 0;
    private static String tetqV = "";
    private static String tetqF = "";
    private static String cadena = "";
    
    
    /**
     * Reinicia las variables estáticas relacionadas con la generación del
     * código de tres direcciones.
     */
    public static void reiniciar(){
        tempL = 0;
        temp = 0;
        c3d = "";
        etqF = "";
        etqV = "";
    }
    
    public static void reiniciarEtq(){
        etqF = "";
        etqV = "";
    }

    public static String getEtqV() {
        return etqV;
    }
    public static String getEtqF() {
        return etqF;
    }

    public static String getTetqV() {
        return tetqV;
    }

    public static String getTetqF() {
        return tetqF;
    }

    public static void setTetqV(String tetqV) {
        ControlC3D.tetqV = tetqV;
    }

    public static void setTetqF(String tetqF) {
        ControlC3D.tetqF = tetqF;
    }

    public static String getCadena() {
        return cadena;
    }

    public static void setCadena(String cadena) {
        ControlC3D.cadena = cadena;
    }
    
    
    
    /**
     * Genera el siguiente temporal.
     * @return El siguiente temporal (t$#)
     */
    public static String generaTemp(){
        return "t$"+temp++;
    }
    
    public static String generaTempL(){
        return "L"+tempL++;
    }
    
    /**
     * Agrega la sentencia que recibe como parámetro a la cadena de código
     * de tres direcciones que se va generando hasta ese momento.
     * @param sentencia Código 3D a agregar
     */
    public static void agregarC3D(String sentencia){
        c3d += sentencia;
    }
    
    public static void agregarC3DV(String sentencia){
        etqV += "," + sentencia;
    }
    
    public static void agregarC3DF(String sentencia){
        etqF += "," + sentencia;
    }
    
    public static void LimpiarC3DV(){
        etqV = "";
    }
    
    public static void LimpiarC3DF(){
        etqF = "";
    }
    
    
    /**
     * Devuelve el código 3D generao hasta el momento de su invocación.
     * @return Código 3D generado
     */
    public static String getC3D(){
        return c3d;
    }
    
}
