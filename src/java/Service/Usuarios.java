package Service;

/*
<%-- 
    Document   : index
    Author     : Esteban Aricapa y Wilber Hinestroza
--%>
 */

public class Usuarios {
    private String usu;
    private String contra;
    private String nomb;
    private String eps;
    private String gmail;
    private String cedula;

    public Usuarios(String usu, String contra,String nomb, String eps, String gmail, String ced) {
        this.usu = usu;
        this.contra = contra;
        this.nomb = nomb;
        this.eps = eps;
        this.gmail = gmail;
        this.cedula = ced;
    }

    public String getUsu() {
        return usu;
    }

    public String getContra() {
        return contra;
    }
    
    public String getNombre() {
        return nomb;
    }
    
    public String getEps() {
        return eps;
    }

    public String getGmail() {
        return gmail;
    }
    
    public String getCedula() {
        return cedula;
    }
}
