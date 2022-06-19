/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.auth;

import dao.AdminDAO;
import dao.StudentDAO;
import dao.TeacherDAO;
import dto.AdminDTO;
import dto.StudentDTO;
import dto.TeacherDTO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nearl
 */
public class LoginController extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String ERROR_PAGE = "Access/login.jsp";// trang login
    private static final String HOME_PAGE = "View/home.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
<<<<<<< Updated upstream
        String url = ERROR_PAGE;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        boolean valid = false;
        if (role.equals("Student")) {
            StudentDAO dao = new StudentDAO();
            valid =dao.checkLogin(username, password);
        } else if (role.equals("Teacher")) {
            TeacherDAO dao = new TeacherDAO();
            valid = dao.checkLogin(username, password);
        } else if (role.equals("Admin")) {
            AdminDAO dao = new AdminDAO();
            valid = dao.checkLogin(username, password);
=======
        String url = ERROR;
        try  {  
            HttpSession session = request.getSession();
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String role = request.getParameter("role").toLowerCase();
            Object acc = null;
            
            if(STUDENT_ROLE.equals(role)){
                acc = (StudentDTO)StudentDAO.getAccount(username, password);
                url = HOME; //chuyen den sau khi login
            }else if(TEACHER_ROLE.equals(role)){
                acc = (TeacherDTO)TeacherDAO.getAccount(username, password);
                url = HOME; //chuyen den sau khi login
            }else if(ADMIN_ROLE.equals(role)){
                acc = (AdminDTO)AdminDAO.getAccount(username, password);
                url = HOME; //chuyen den sau khi login
            }
            if(acc == null){
                request.setAttribute("ERROR", "User name or Password is invalid!!");
                url = ERROR;
            }else{
                session.setAttribute("ACCOUNT", acc);
                session.setAttribute("ROLE", role);
            }
>>>>>>> Stashed changes
        }
        if (valid) {
            url = HOME_PAGE;
        }
        response.sendRedirect(url);
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
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
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
