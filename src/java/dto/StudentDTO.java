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
    

    public StudentDTO() {
    }

    public StudentDTO(int Id_Student, String Username, String Password) {
        this.Id_Student = Id_Student;
        this.Username = Username;
        this.Password = Password;
    }    

    public StudentDTO(String Username, String Password) {
        this.Username = Username;
        this.Password = Password;
    }

    
    
    
    /**
     * @return the Id_Student
     */
    public int getId_Student() {
        return Id_Student;
    }

    /**
     * @param Id_Student the Id_Student to set
     */
    public void setId_Student(int Id_Student) {
        this.Id_Student = Id_Student;
    }

    /**
     * @return the Username
     */
    public String getUsername() {
        return Username;
    }

    /**
     * @param Username the Username to set
     */
    public void setUsername(String Username) {
        this.Username = Username;
    }

    /**
     * @return the Password
     */
    public String getPassword() {
        return Password;
    }

    /**
     * @param Password the Password to set
     */
    public void setPassword(String Password) {
        this.Password = Password;
    }   

   
    
}
