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
public class EnrollDTO {
    private int id_enroll;
    private int id_course;
    private int id_student;
    private int exam_status;
    public EnrollDTO(){}

    public EnrollDTO(int id_course, int id_student) {
        this.id_course = id_course;
        this.id_student = id_student;
    }// co 1 bai exam nen khong can select
    

    public EnrollDTO(int id_enroll, int id_course, int id_student, int exam_status) {
        this.id_enroll = id_enroll;
        this.id_course = id_course;
        this.id_student = id_student;
        this.exam_status = exam_status;
    }

    public int getExam_status() {
        return exam_status;
    }

    public void setExam_status(int exam_status) {
        this.exam_status = exam_status;
    }



    public void setId_enroll(int id_enroll) {
        this.id_enroll = id_enroll;
    }

    public void setId_course(int id_course) {
        this.id_course = id_course;
    }

    public void setId_student(int id_student) {
        this.id_student = id_student;
    }

    public int getId_enroll() {
        return id_enroll;
    }

    public int getId_course() {
        return id_course;
    }

    public int getId_student() {
        return id_student;
    }
    
}
