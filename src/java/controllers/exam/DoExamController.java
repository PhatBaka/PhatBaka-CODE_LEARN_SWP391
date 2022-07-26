/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.exam;

import dao.AnswerDAO;
import dao.EnrollDAO;
import dao.ExamDAO;
import dao.MarkReportDAO;
import dao.QuestionDAO;
import dto.AnswerDTO;
import dto.EnrollDTO;
import dto.ExamDTO;
import dto.MarkReportDTO;
import dto.QuestionDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
public class DoExamController extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            int id_course = new Integer(request.getParameter("id_course"));
            int id_student = new Integer(request.getParameter("id_student"));
            EnrollDTO enroll = EnrollDAO.getEnroll(id_student, id_course);
            int user_status = -1;
            if (enroll != null) {
                user_status = enroll.getExam_status();
            }
            ExamDTO exam = null;
            if (user_status == 0) {
              
                    exam = ExamDAO.getExam(id_course);
                    if (exam != null) {
                        session.setAttribute("EXAM", exam);
                        List<QuestionDTO> question = QuestionDAO.getQuestion(exam.getId_exam());
                        if (question != null && question.size() > 0) {
                            session.setAttribute("QUESTION", question);
                            List<AnswerDTO> answers = null;
                            for (QuestionDTO ques : question) {
                                answers = AnswerDAO.getAnswers(exam.getId_exam(), ques.getId_question());
                            }
                            if (answers != null && answers.size() > 0) {
                                session.setAttribute("ANSWERS", answers);
                            }
                        }
                    }
                
            } else {
                MarkReportDTO mark = MarkReportDAO.getMark(id_student, id_course);
                String mark_report = String.valueOf(mark.getMark());
                session.setAttribute("MARK_REPORT", mark_report);
            }
            session.setAttribute("id_course", id_course);
            response.sendRedirect(DISPLAY);
//            else{
//                String[] user_status_name = user_status.split("_");
//                String name_exam = "exam_" + String.valueOf(new Integer(user_status_name[1] + 1));//exam_2 
//                exam = ExamDAO.getExam(id_course, name_exam);
//            }

        }
    }
//nt id_exam, String name, Date date, Date exam_date, int hour, String subject, String question, int id_course, 
//        int id_answer, int id_quesion, String answer, int status, int id_question, String question_url, String answwer
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
        } catch (SQLException ex) {
            Logger.getLogger(DoExamController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DoExamController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(DoExamController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DoExamController.class.getName()).log(Level.SEVERE, null, ex);
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
