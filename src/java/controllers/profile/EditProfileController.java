/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.profile;

import dao.ContactDAO;
import dto.ContactDTO;
import dto.RegisterErrorDTO;
import dto.StudentDTO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nearl
 */
public class EditProfileController extends HttpServlet {
    private final String VIEW_CONTACT_PAGE = "View/contactview.jsp";
    private final String EDIT_CONTACT_PAGE = "Edit/editcontact.jsp";
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
        HttpSession session = request.getSession();
        String url = EDIT_CONTACT_PAGE;
        StudentDTO stuAcc = (StudentDTO) session.getAttribute("ACCOUNT");
        int id = stuAcc.getId_Student();
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String parent = request.getParameter("parentinf");
        String school = request.getParameter("school");
        try{
            ContactDTO dto = new ContactDTO(id, email, parent, phone, school);
            if(ContactDAO.editContact(dto)){
                ContactDTO contact = ContactDAO.SearchingContact(id);
                session.setAttribute("CONTACT", contact);
                url =  VIEW_CONTACT_PAGE;
            }
            else{
                url = EDIT_CONTACT_PAGE;
                }
            }
        catch(SQLException ex){
            RegisterErrorDTO errors = new RegisterErrorDTO();
            String msg = ex.getMessage();
            if(msg.contains("UQ__Contact__BC5BFB63B97AD3FB")){
                errors.setEmailIsExisted(email + " is existed.");
                request.setAttribute("EMAILERRORS", errors);
            } else if(msg.contains("UQ__Contact__7DC10DF017890E34")){
                errors.setPhoneIsExisted(phone + " is existed.");
                request.setAttribute("PHONEERRORS", errors);
            }
        }
        finally{
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
            Logger.getLogger(EditProfileController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(EditProfileController.class.getName()).log(Level.SEVERE, null, ex);
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
