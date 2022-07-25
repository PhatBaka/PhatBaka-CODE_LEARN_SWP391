/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author nearl
 */
public class MarkReportDTO {
    private int Id_Report;
    private int Id_Exam;
    private int Id_Student;
    private float Mark;
    
    public MarkReportDTO(){}

    public MarkReportDTO(int Id_Exam, int Id_Student, float Mark) {
        this.Id_Exam = Id_Exam;
        this.Id_Student = Id_Student;
        this.Mark = Mark;
    }
    
    

    public MarkReportDTO(int Id_Report, int Id_Exam, int Id_Student, float Mark) {
        this.Id_Report = Id_Report;
        this.Id_Exam = Id_Exam;
        this.Id_Student = Id_Student;
        this.Mark = Mark;
    }
    

    public void setId_Report(int Id_Report) {
        this.Id_Report = Id_Report;
    }

    public void setId_Exam(int Id_Exam) {
        this.Id_Exam = Id_Exam;
    }

    public void setId_Student(int Id_Student) {
        this.Id_Student = Id_Student;
    }

    public void setMark(float Mark) {
        this.Mark = Mark;
    }

    public int getId_Report() {
        return Id_Report;
    }

    public int getId_Exam() {
        return Id_Exam;
    }

    public int getId_Student() {
        return Id_Student;
    }

    public float getMark() {
        return Mark;
    }
    
    
}
