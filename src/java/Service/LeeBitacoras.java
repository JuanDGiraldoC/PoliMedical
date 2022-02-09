package Service;

/*
<%-- 
    Document   : index
    Author     : Esteban Aricapa y Wilber Hinestroza
--%>
 */

import java.io.*;
import java.util.ArrayList;

public class LeeBitacoras {
private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Bitacora> librery = new ArrayList<Bitacora>();

    public static ArrayList<Bitacora> leeBitacora(String path) {
        try {
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String nomb;
            String data;
            String date;

            Bitacora bita;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                nomb = tokensLinea[0];
                data = tokensLinea[1];
                date = tokensLinea[2];

                bita = new Bitacora(nomb, data,date);
                librery.add(bita);
                System.out.println("nombre:" + nomb);
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

    public static int getCont() {
        return cont;
    }

    public static void clearCont() {
        cont = 0;
    }    
}
