/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.exam;

import dao.AnswerDAO;
import dao.EnrollDAO;
import dao.MarkReportDAO;
import dto.AnswerDTO;
import dto.EnrollDTO;
import dto.MarkReportDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nea
 */
public class GetListResultController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String DISPLAY = "../Exam/exam.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try{
            String url = DISPLAY;
            HttpSession session = request.getSession();
            String answer = request.getParameter("answer");
            int id_exam = new Integer(request.getParameter("id_exam"));
            int id_question = new Integer(request.getParameter("id_question"));
            int status = new Integer(request.getParameter("status"));
            int id_student = new Integer(request.getParameter("id_student"));
            float mark = new Float(request.getParameter("markOfAQuestion"));
            List<AnswerDTO> lstAnswers = new ArrayList<>();
            List<AnswerDTO> answers = (List<AnswerDTO>) session.getAttribute("ANSWERS");
            for(AnswerDTO ans: answers){
                if(id_exam == ans.getId_exam() && id_question == ans.getId_quesion() && answer.equals(ans.getAnswer())){
                    int stat= ans.getStatus();
                    lstAnswers.add(new AnswerDTO(id_exam, id_question, answer, ans.getStatus()));
                }
            }
            int number_answer_true = 0;
            if(lstAnswers != null){
                    if (lstAnswers.size() > 0){
                        for (AnswerDTO ans : lstAnswers) {
                            if (ans.getStatus() == 1) {
                                number_answer_true += 1; // co van de
                            }
                        }
                    } 
            }
            float markResult = number_answer_true * mark;
            int id_course = (int) session.getAttribute("id_course");
            if(markResult >= 5){
                
                int result = 0;
                
                String the1 = String.valueOf(MarkReportDAO.setResult(new MarkReportDTO(id_exam, id_student, markResult)));
                result = new Integer(the1);
                if (result > 0) {
                    String the = String.valueOf(EnrollDAO.updateEnroll(new EnrollDTO(id_course, id_student)));
                    result = new Integer(the);
                    session.setAttribute("status_result","Passed");
                }    
            }else{
                session.setAttribute("status_result","Not Passed");
            }

            session.setAttribute("markOfAQuestion", mark);
            session.setAttribute("LST_ANSWER", lstAnswers);
            session.setAttribute("RESULT",markResult);
            session.setAttribute("flag", "2");
            
            
            response.sendRedirect(url);
//            request.getRequestDispatcher("../Exam/exam.jsp").forward(request, response);
        }catch(Exception e){
            throw new Exception(e.getMessage());
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
            Logger.getLogger(GetListResultController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(GetListResultController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(GetListResultController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(GetListResultController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(GetListResultController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(GetListResultController.class.getName()).log(Level.SEVERE, null, ex);
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
