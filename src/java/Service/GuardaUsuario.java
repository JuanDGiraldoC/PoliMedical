package Service;

/*
<%-- 
    Document   : index
    Author     : Esteban Aricapa y Wilber Hinestroza
--%>
 */

import java.io.*;
import java.util.ArrayList;

public class GuardaUsuario {

    private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Usuarios> librery = new ArrayList<Usuarios>();

    public static void add(Usuarios p, String path) throws IOException {
        File archivo;
        FileWriter fw = null;
        PrintWriter pw = null;
        try {
//archivo = new File(ruta);
            archivo = new File(path);
            fw = new FileWriter(archivo, true);
            pw = new PrintWriter(fw);
            pw.println(p.getUsu() + "," + p.getContra() + "," + p.getNombre() + "," 
                    + p.getEps() + "," + p.getGmail() + "," + p.getCedula());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pw != null) {
                    pw.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void delete(String p, String path) throws IOException {
        try {
            librery = new ArrayList<Usuarios>();
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String usu;
            String contra;
            String eps;
            String nombre;
            String gmail;
            String cedula;

            Usuarios autors;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                usu = tokensLinea[0];
                if (usu != p) {
                    contra = tokensLinea[1];
                    nombre = tokensLinea[2];
                    eps = tokensLinea[3];
                    gmail = tokensLinea[4];
                    cedula = tokensLinea[5];

                    autors = new Usuarios(usu, contra,nombre, eps, gmail, cedula);
                    librery.add(autors);
                    cont++;
                    linea = br.readLine();
                } else {
                    cont++;
                    linea = br.readLine();
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
        for (int i = 0; i < librery.size(); i++) {
            add(librery.get(i), path);
        }
    }

    public static void ActualizarUsuario(Usuarios p, String path) throws IOException {
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

            Usuarios autors;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                usu = tokensLinea[0];
                if (p.getUsu() == usu) {
                    contra = p.getContra();
                    nombre = p.getNombre();
                    eps = p.getEps();
                    gmail = p.getGmail();
                    cedula = p.getCedula();

                    autors = new Usuarios(usu, contra,nombre, eps, gmail, cedula);
                    librery.add(autors);
                    cont++;
                    linea = br.readLine();
                } else {
                    usu = tokensLinea[0];
                    contra = tokensLinea[1];
                    nombre = tokensLinea[2];
                    eps = tokensLinea[3];
                    gmail = tokensLinea[4];
                    cedula = tokensLinea[5];

                    autors = new Usuarios(usu, contra,nombre, eps, gmail,cedula);
                    librery.add(autors);
                    cont++;
                    linea = br.readLine();
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
        for (int i = 0; i < librery.size(); i++) {
            add(librery.get(i), path);
        }
    }
}
