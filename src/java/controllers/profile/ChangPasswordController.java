/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.profile;

import dao.StudentDAO;
import dao.TeacherDAO;
import dto.ErrorDTO;
import dto.StudentDTO;
import dto.TeacherDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nguye
 */
@WebServlet(name = "ChangPasswordController", urlPatterns = {"/ChangPasswordController"})
public class ChangPasswordController extends HttpServlet {

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
            HttpSession session = request.getSession();
            ErrorDTO passwordError = new ErrorDTO();
            String oldpassword = request.getParameter("oldpassword");
            String newpassword = request.getParameter("newpassword");
            String role = (String) session.getAttribute("ROLE");
            boolean success = false;
            String url = "";
            try{
                if(role.equals("student")){
                    StudentDTO studentAcc = (StudentDTO) session.getAttribute("ACCOUNT");
                    success = StudentDAO.changePassword(oldpassword, newpassword, studentAcc.getUsername());
                } else if (role.equals("teacher")){
                    TeacherDTO teacherAcc = (TeacherDTO) session.getAttribute("ACCOUNT");
                    success = TeacherDAO.changePassword(oldpassword, newpassword, teacherAcc.getUserName());
                }
                if(success){
                    url = "Access/login.jsp";     
                } else{
                    passwordError.setPasswordNotMatch("Your password is not matched");
                    request.setAttribute("PASSWORDERROR", passwordError);
                }
            } catch (Exception ex){
                ex.printStackTrace();
            } finally{
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
