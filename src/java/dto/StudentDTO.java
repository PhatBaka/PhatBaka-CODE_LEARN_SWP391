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
public class StudentDTO {
    private int Id_Student;
    private String Username;
    private String Password;
    private String Notification;
    
    public StudentDTO(){}

    public StudentDTO(int Id_Student, String Username, String Password, String Notification) {
        this.Id_Student = Id_Student;
        this.Username = Username;
        this.Password = Password;
        this.Notification = Notification;
    }

    public void setId_Student(int Id_Student) {
        this.Id_Student = Id_Student;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public void setNotification(String Notification) {
        this.Notification = Notification;
    }

    public int getId_Student() {
        return Id_Student;
    }

    public String getUsername() {
        return Username;
    }

    public String getPassword() {
        return Password;
    }

    public String getNotification() {
        return Notification;
    }
    
    
    
}
