package Service;

import java.time.*;
import java.time.format.*;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/*
<%-- 
    Document   : index
    Author     : Esteban Aricapa y Wilber Hinestroza
--%>
 */
public class Bitacora {

    private String nombre;
    private String data;
    private String date;
    static Bitacora bitas;
    private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Bitacora> librery = new ArrayList<Bitacora>();

    public Bitacora(String nomb, String data, String fecha) {
        this.nombre = nomb;
        this.data = data;
        
        LocalDate localDate = LocalDate.now();//For reference
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/LLLL/yyyy");
        fecha = localDate.format(formatter);
        System.out.println(fecha);
        
        this.date = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public String getData() {
        return data;
    }

    public String getDate() {
        return date;
    }

    public static void add(Bitacora p, String path) throws IOException {
        File archivo;
        FileWriter fw = null;
        PrintWriter pw = null;
        try {
//archivo = new File(ruta);
            archivo = new File(path);
            fw = new FileWriter(archivo, true);
            pw = new PrintWriter(fw);
            pw.println(p.getNombre() + "," + p.getData() + "," + p.getDate());
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
            librery = new ArrayList<Bitacora>();
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String nombre;
            String data;
            String date;

            Bitacora bita;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                nombre = tokensLinea[0];
                if (nombre.equals(p)) {
                    cont++;
                    linea = br.readLine();
                } else {

                    data = tokensLinea[1];
                    date = tokensLinea[2];

                    bita = new Bitacora(nombre, data, date);
                    librery.add(bita);
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

    public static void EditarBitacora(Bitacora p, String path) throws IOException {
        try {
            librery = new ArrayList<Bitacora>();
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String nombre;
            String data;
            String date;

            Bitacora bita;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                nombre = tokensLinea[0];
                if (p.getNombre().equals(nombre)) {
                    nombre = p.getNombre();
                    data = p.getData();
                    date = p.getDate();
                    
                    bita = new Bitacora(nombre, data, date);
                    librery.add(bita);
                    cont++;
                    linea = br.readLine();
                } else {
                    nombre = tokensLinea[0];
                    data = tokensLinea[1];
                    date = tokensLinea[2];

                    bita = new Bitacora(nombre, data, date);
                    librery.add(bita);
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
    
    public static Bitacora VerBitacora(String p, String path) throws IOException {
        
        try {
            librery = new ArrayList<Bitacora>();
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String traido;
            String traido1=p;
            String nombre;
            String data;
            String date;

            Bitacora bita;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                traido = tokensLinea[0];
                System.out.println("traido " + traido);
                System.out.println("traido1 " + traido1);
                if (traido.equals(traido1)) {
                    nombre = tokensLinea[0];
                    System.out.println(nombre);
                    data = tokensLinea[1];
                    date = tokensLinea[2];
                    
                    bita = new Bitacora(nombre, data, date);
                    bitas = new Bitacora(nombre, data, date);
                    System.out.println("me lleno con: "+ bitas.data);
                    System.out.println("deberia de llenarme con: "+ bita.getData());
                    linea = null;
                } else {
                    nombre = tokensLinea[0];
                    data = tokensLinea[1];
                    date = tokensLinea[2];

                    bita = new Bitacora(nombre, data, date);
                    librery.add(bita);
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
        System.out.println("aja eso");
        return bitas;
    }
}
