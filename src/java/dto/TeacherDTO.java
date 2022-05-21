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
public class TeacherDTO {
    private int Id_Teacher;
    private String UserName;
    private String Password;
    private String Name;
    private String Phone_Num;
    private String Information;
    
    public TeacherDTO(){}

    public TeacherDTO(int Id_Teacher, String UserName, String Password, String Name, String Phone_Num, String Information) {
        this.Id_Teacher = Id_Teacher;
        this.UserName = UserName;
        this.Password = Password;
        this.Name = Name;
        this.Phone_Num = Phone_Num;
        this.Information = Information;
    }

    public void setId_Teacher(int Id_Teacher) {
        this.Id_Teacher = Id_Teacher;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setPhone_Num(String Phone_Num) {
        this.Phone_Num = Phone_Num;
    }

    public void setInformation(String Information) {
        this.Information = Information;
    }

    public int getId_Teacher() {
        return Id_Teacher;
    }

    public String getUserName() {
        return UserName;
    }

    public String getPassword() {
        return Password;
    }

    public String getName() {
        return Name;
    }

    public String getPhone_Num() {
        return Phone_Num;
    }

    public String getInformation() {
        return Information;
    }
    
    
}
