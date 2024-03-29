/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pages;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Jdbc;

/**
 *
 * @author W2-belay
 */
@WebServlet(name = "Registor", urlPatterns = {"/Registor"})
public class Registor extends HttpServlet {

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
        
        HttpSession session = request.getSession(false);
        
        String [] query = new String[8];
        query[0] = (String)request.getParameter("full_name");
        query[1] = (String)request.getParameter("address");
        query[3] = (String)request.getParameter("password");
        query[4] = (String)request.getParameter("dob"); 
        query[5] = (String)request.getParameter("dor");
        query[6] = (String)request.getParameter("status");
        query[7] = (String)request.getParameter("amount");
                 //String insert = "INSERT INTO `Users` (`username`, `password`) VALUES ('";
      
        Jdbc jdbc = (Jdbc)session.getAttribute("dbbean"); 
        
        if (jdbc == null)
            request.getRequestDispatcher("/WEB-INF/conErr.jsp").forward(request, response);
        
        if(query[0].equals("") || query[1].equals ("")|| query[3].equals("") || query[4].equals("") || query[5].equals("") || query[6].equals("")|| query[7].equals("")) {
            request.setAttribute("message", "None of them cannot be NULL");
        } 
         else {
            jdbc.insertreg(query);
            request.setAttribute("message", " all the values are added");
        }
         
        request.getRequestDispatcher("/WEB-INF/userlogin.jsp").forward(request, response);
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

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


}
