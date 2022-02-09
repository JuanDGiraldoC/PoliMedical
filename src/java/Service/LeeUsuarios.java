package Service;

/*
<%-- 
    Document   : index
    Author     : Esteban Aricapa y Wilber Hinestroza
--%>
 */

import static Service.Bitacora.add;
import static Service.Bitacora.librery;
import java.io.*;
import java.util.ArrayList;

public class LeeUsuarios {
private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Usuarios> librery = new ArrayList<Usuarios>();
    static Usuarios usuario;

    public static ArrayList<Usuarios> leeUsuarios(String path) {
        try {
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String usu;
            String contra;
            String nombre;
            String eps;
            String gmail;
            String cedula;
            Usuarios usuario;
            
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                usu = tokensLinea[0];
                contra = tokensLinea[1];
                nombre = tokensLinea[2];
                eps = tokensLinea[3];
                gmail = tokensLinea[4];
                cedula = tokensLinea[5];

                usuario = new Usuarios(usu, contra,nombre, eps, gmail,cedula);
                librery.add(usuario);
                cont++;
                linea = br.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return librery;
    }
    
    public static Usuarios leeUsuario(String path) {
        try {
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String usu;
            String contra;
            String nombre;
            String eps;
            String gmail;
            String cedula;

            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                usu = tokensLinea[0];
                contra = tokensLinea[1];
                nombre = tokensLinea[2];
                eps = tokensLinea[3];
                gmail = tokensLinea[4];
                cedula = tokensLinea[5];

                usuario = new Usuarios(usu, contra,nombre, eps, gmail,cedula);
                cont++;
                linea = null;
                linea = br.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return usuario;
    }
    
    public static void EditarUsuario(Usuarios p, String path) throws IOException {
        try {
            librery = new ArrayList<Usuarios>();
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String usu;
            String contra;
            String nombre;
            String eps;
            String gmail;
            String cedula;

            Bitacora bita;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                usu = tokensLinea[0];
                System.out.println(usu);
                if (p.getUsu().equals(usu)) {
                    System.out.println("wow");
                    usu = p.getUsu();
                    contra = p.getContra();
                    nombre = p.getNombre();
                    eps = p.getEps();
                    gmail = p.getGmail();
                    cedula = p.getCedula();
                    
                    
                    usuario = new Usuarios(usu, contra,nombre, eps, gmail,cedula);
                    librery.add(usuario);
                    linea = null;
                } else {
                    usu = tokensLinea[0];
                    System.out.println(usu);
                    contra = tokensLinea[1];
                    System.out.println(contra);
                    nombre = tokensLinea[2];
                    System.out.println(nombre);
                    eps = tokensLinea[3];
                    System.out.println(eps);
                    gmail = tokensLinea[4];
                    System.out.println(gmail);
                    cedula = tokensLinea[5];
                    System.out.println(cedula);

                    usuario = new Usuarios(usu, contra,nombre, eps, gmail, cedula);
                    librery.add(usuario);
                    linea = null;
                }

            }
            BufferedWriter bw = new BufferedWriter(new FileWriter(path));
            bw.write("");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        for (int i = 0; i < 1; i++) {
            GuardaUsuario.add(librery.get(i), path);
        }
        
    }
    
    

    public static int getCont() {
        return cont;
    }

    public static void clearCont() {
        cont = 0;
    }    
}
