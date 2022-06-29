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
public class ContactDTO {
    private int Id_Student;
    private String Email_User;
    private String Parents_inf;
    private String Phone_Num;
    private String School;
    
    public ContactDTO(){}

    public ContactDTO(String Email_User, String Parents_inf, String Phone_Num, String School) {
        this.Email_User = Email_User;
        this.Parents_inf = Parents_inf;
        this.Phone_Num = Phone_Num;
        this.School = School;
    }
    
    
    public ContactDTO(int Id_Student, String Email_User, String Parents_inf, String Phone_Num, String School) {
        this.Id_Student = Id_Student;
        this.Email_User = Email_User;
        this.Parents_inf = Parents_inf;
        this.Phone_Num = Phone_Num;
        this.School = School;
    }


    public void setId_Student(int Id_Student) {
        this.Id_Student = Id_Student;
    }

    public void setEmail_User(String Email_User) {
        this.Email_User = Email_User;
    }

    public void setParents_inf(String Parents_inf) {
        this.Parents_inf = Parents_inf;
    }

    public void setPhone_Num(String Phone_Num) {
        this.Phone_Num = Phone_Num;
    }

    public void setSchool(String School) {
        this.School = School;
    }

    public int getId_Student() {
        return Id_Student;
    }

    public String getEmail_User() {
        return Email_User;
    }

    public String getParents_inf() {
        return Parents_inf;
    }

    public String getPhone_Num() {
        return Phone_Num;
    }

    public String getSchool() {
        return School;
    }
    
    
}
