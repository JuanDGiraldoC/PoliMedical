package controller;

import Service.Archivos;
import Service.Bitacora;
import Service.GuardaUsuario;
import Service.Usuarios;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
<%-- 
    Document   : index
    Author     : Esteban Aricapa y Wilber Hinestroza
--%>
 */
public class Descargar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Archivos archi;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        ArrayList<Archivos> librery = new ArrayList<Archivos>();
        
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            //Directorio
            String directory = "C:/Proyecto Integrador/PoliMedical/build/web/upload/";
            String fileName = request.getParameter("file");
            String actualFileName = directory + fileName;
            response.setContentType("APPLICATION/OCTET-STREAM");

            response.setHeader("Content-Disposition", "attachment;filename=" + fileName);

            try {
                File fileToDownload = new File(actualFileName);
                FileInputStream fileInputStream = new FileInputStream(fileToDownload);
                int i;
                while ((i = fileInputStream.read()) != -1) {
                    out.write(i);
                }
                fileInputStream.close();
                out.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

            //

            /*Usuarios user = new Usuarios(usu, contra, nomb, eps, gmail, cedula);
            request.setAttribute("atribProd", user);
            ServletContext sc = this.getServletContext();
            GuardaUsuario.add(user, "C:/Proyecto Integrador/PoliMedical/Usuarios.txt");
             */
            //request.setAttribute("Doc", librery);
            request.getRequestDispatcher("Documentos.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
