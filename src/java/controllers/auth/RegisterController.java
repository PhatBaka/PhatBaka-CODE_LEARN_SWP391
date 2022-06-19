/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.auth;

import dao.StudentDAO;
import dao.TeacherDAO;
import dto.ErrorDTO;
import dto.StudentDTO;
import dto.TeacherDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nearl
 */
public class RegisterController extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
<<<<<<< Updated upstream
        RegisterErrorDTO errors = new RegisterErrorDTO();
        boolean foundError = false;
        String url = "";
=======
        ErrorDTO createErrors = new ErrorDTO();
        String url = "Access/register.jsp";
>>>>>>> Stashed changes
        try {
                if (role.equals("student")) {
                    StudentDAO dao = new StudentDAO();
                    StudentDTO dto = new StudentDTO(username, password);
                    boolean result = dao.createStudentAccount(dto);
                    if (result) {
                        url = "LOGIN_PAGE";
                    }
                } else if (role.equals("teacher")) {
                    TeacherDAO dao = new TeacherDAO();
                    TeacherDTO dto = new TeacherDTO(username, password);
                    boolean result = dao.createTeacherAccount(dto);
                    if (result) {
                        url = "LOGGIN_PAGE";
                    }
                }
        } catch (SQLException ex) {
            String msg = ex.getMessage();
            log("CreateAccountServlet _ SQL " + ex.getMessage());
            if (msg.contains("duplicate")) {
                createErrors.setUsernameIsExisted(username + " is existed.");
                request.setAttribute("CREATEERRORS", createErrors);
            }
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
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
