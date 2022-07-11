/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.sql.Date;

/**
 *
 * @author nearl
 */
public class ExamDTO {
    private int Id_Exam;
    private String Name;
    private String Question;
    private Date date;
    
    public ExamDTO(){}

    public ExamDTO(String Name, String Question, Date date) {
        this.Name = Name;
        this.Question = Question;
        this.date = date;
    }
   
    public ExamDTO(int Id_Exam, String Name, String Question, Date date) {
        this.Id_Exam = Id_Exam;
        this.Name = Name;
        this.Question = Question;
        this.date = date;
    }

    public void setId_Exam(int Id_Exam) {
        this.Id_Exam = Id_Exam;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setQuestion(String Question) {
        this.Question = Question;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getId_Exam() {
        return Id_Exam;
    }

    public String getName() {
        return Name;
    }

    public String getQuestion() {
        return Question;
    }

    public Date getDate() {
        return date;
    }
    
}
