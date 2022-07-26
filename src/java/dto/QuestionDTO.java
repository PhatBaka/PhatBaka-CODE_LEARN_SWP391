/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Nea
 */
public class QuestionDTO {
    private int id_question;
    private String question_url;
    private int id_exam;
    private String answwer;
    private int status;

    public QuestionDTO(int id_question, String question_url, int id_exam, String answwer, int status) {
        this.id_question = id_question;
        this.question_url = question_url;
        this.id_exam = id_exam;
        this.answwer = answwer;
        this.status = status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getStatus() {
        return status;
    }
    
    public QuestionDTO(){}

    public QuestionDTO(int id_question, String question_url, int id_exam, String answwer) {
        this.id_question = id_question;
        this.question_url = question_url;
        this.id_exam = id_exam;
        this.answwer = answwer;
    }

    public void setId_question(int id_question) {
        this.id_question = id_question;
    }

    public void setQuestion_url(String question_url) {
        this.question_url = question_url;
    }

    public void setId_exam(int id_exam) {
        this.id_exam = id_exam;
    }

    public void setAnswwer(String answwer) {
        this.answwer = answwer;
    }

    public int getId_question() {
        return id_question;
    }

    public String getQuestion_url() {
        return question_url;
    }

    public int getId_exam() {
        return id_exam;
    }

    public String getAnswwer() {
        return answwer;
    }
    
}
//[Id_Question]
//      ,[Question_URL]
//      ,[Id_Exam]
//      ,[Answer]