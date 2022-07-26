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
public class AnswerDTO {
    private int id_answer;
    private int id_exam;
    private int id_quesion;
    private String answer;
    private int status;
    public AnswerDTO(){}
    
    public AnswerDTO(int id_exam,int id_question,String answer,int status){
        this.id_exam = id_exam;
        this.id_quesion = id_question;
        this.answer = answer;
        this.status = status;
    }
    public AnswerDTO(int id_answer, int id_exam, int id_quesion, String answer, int status) {
        this.id_answer = id_answer;
        this.id_exam = id_exam;
        this.id_quesion = id_quesion;
        this.answer = answer;
        this.status = status;
    }

    public void setId_answer(int id_answer) {
        this.id_answer = id_answer;
    }

    public void setId_exam(int id_exam) {
        this.id_exam = id_exam;
    }

    public void setId_quesion(int id_quesion) {
        this.id_quesion = id_quesion;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getId_answer() {
        return id_answer;
    }

    public int getId_exam() {
        return id_exam;
    }

    public int getId_quesion() {
        return id_quesion;
    }

    public String getAnswer() {
        return answer;
    }

    public int getStatus() {
        return status;
    }
    
    
}
//[Id_Answer]
//      ,[Id_Exam]
//      ,[Id_Question]
//      ,[Answer]
//      ,[Status]