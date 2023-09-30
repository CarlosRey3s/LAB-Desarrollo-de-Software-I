/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ServerPrincipal;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author A21-PC25
 */
public class ServerPrincipal extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServerPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServerPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
         String accion = request.getParameter("accion");
         
        if(accion == null){
             request.getRequestDispatcher("/Login.html").forward(request, response);
        }else if (accion.equals("Login")){
             request.getRequestDispatcher("/Login.html").forward(request, response);
        }else if (accion.equals("RegistroEmpleado")){
            request.getRequestDispatcher("/RegistroEmpleado.html").forward(request, response);
        }else if (accion.equals("RegistroCliente")){
            request.getRequestDispatcher("/RegistroCliente.html").forward(request, response);
        }else if (accion.equals("Proveedores")){
           request.getRequestDispatcher("/Proveedores.html").forward(request, response);
        }else if (accion.equals("Facturas")){
           request.getRequestDispatcher("/Facturas.html").forward(request, response);
        }else if (accion.equals("Productos")){
           request.getRequestDispatcher("/Productos.html").forward(request, response);
        } 
        
        
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
       
      String accion = request.getParameter("accion");

if (accion.equals("Login")) {
    String usuario = request.getParameter("tfUsuario");
    String contrasenia = request.getParameter("tfContraseña");

    try (PrintWriter print = response.getWriter()) {
        if (usuario.equals("admin") && contrasenia.equals("root")) {
           
            request.getRequestDispatcher("/index.thml").forward(request, response);
           
        } else {
            print.println("<!DOCTYPE html>");
            print.println("<html>");
            print.println("<head>");
            print.println("<title> Login Sistema Agroservicio</title>");
            print.println("</head>");
            print.println("<body>");
            print.println("<h1>ERROR: El Usuario o la contraseña son erróneos.</h1>");
            print.println("</body>");
            print.println("</html>");
        }
    }
}

            
        
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
