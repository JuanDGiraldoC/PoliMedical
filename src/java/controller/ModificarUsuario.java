package controller;

import Service.GuardaUsuario;
import Service.LeeUsuarios;
import Service.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
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

public class ModificarUsuario extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String usu = request.getParameter("usu");
            System.out.println(usu);
            String nomb = request.getParameter("nombre");
            System.out.println(nomb);
            String eps = request.getParameter("eps");
            System.out.println(eps);
            String gmail = request.getParameter("correo");
            System.out.println(gmail);
            String cedula = request.getParameter("cedula");
            System.out.println(cedula);
            String contra1 = request.getParameter("contraA");
            System.out.println(contra1);
            String contra2 = request.getParameter("contraB");
            System.out.println(contra2);
            
            if(contra1.equals(contra2))
            {
                System.out.println("joder");
                Usuarios user = new Usuarios(usu, contra1, nomb, eps, gmail, cedula);
                request.setAttribute("atribProd", user);
                ServletContext sc = this.getServletContext();
                LeeUsuarios.EditarUsuario(user,"C:/Proyecto Integrador/PoliMedical/Usuarios.txt");
                System.out.println("entrando");
                request.getRequestDispatcher("InfUsuario").forward(request, response);
            }
            else
            {
                System.out.println("saliendo");
                request.getRequestDispatcher("InfUsuario").forward(request, response);
            }
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
