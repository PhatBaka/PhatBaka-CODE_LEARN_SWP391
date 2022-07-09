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
    private Date Exam_Date;
    private String Hour;
    private String question;

    private int Id_Course;

    public ExamDTO() {
    }

    public ExamDTO(String Name, String question, String Hour) {
        this.Name = Name;
        this.question = question;
        this.Hour = Hour;
    }

    public ExamDTO(int Id_Exam, String Name, Date Exam_Date, String Hour, String question, int Id_Course) {
        this.Id_Exam = Id_Exam;
        this.Name = Name;
        this.Exam_Date = Exam_Date;
        this.Hour = Hour;
        this.question = question;
        this.Id_Course = Id_Course;
    }

    public String getHour() {
        return Hour;
    }

    public void setHour(String Hour) {
        this.Hour = Hour;
    }

    public int getId_Course() {
        return Id_Course;
    }

    public void setId_Course(int Id_Course) {
        this.Id_Course = Id_Course;
    }

    public Date getExam_Date() {
        return Exam_Date;
    }

    public void setExam_Date(Date Exam_Date) {
        this.Exam_Date = Exam_Date;
    }

    public void setId_Exam(int Id_Exam) {
        this.Id_Exam = Id_Exam;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getId_Exam() {
        return Id_Exam;
    }

    public String getName() {
        return Name;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }
}
