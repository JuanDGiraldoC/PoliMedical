package controller;

import Service.LeeUsuarios;
import Service.Usuarios;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
/*
<%-- 
    Document   : index
    Author     : Esteban Aricapa y Wilber Hinestroza
--%>
 */
public class IniciarSesion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String usuario = request.getParameter("usuario");
        String contra = request.getParameter("contra");

        
        ArrayList<Usuarios> usua = new ArrayList<Usuarios>();
        
        usua = LeeUsuarios.leeUsuarios("C:/Proyecto Integrador/PoliMedical/Usuarios.txt");
        
        for (int i = 0; i < usua.size(); i++) {
            if (usuario.equals(usua.get(i).getUsu())) {
                System.out.println("Encontrado");
                if (contra.equals(usua.get(i).getContra())) {
                    
                    request.getRequestDispatcher("/InicioAdmin.jsp").forward(request, response);
                    System.out.println("Entró");
                    
                } else {

                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                }
            }else{
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
        }

        //request.getRequestDispatcher("/InicioAdmin.jsp").forward(request, response);
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
