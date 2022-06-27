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
public class SubjectDTO {
    private int Id_Subject;
    private int Id_Cate;
    private int Id_Teacher;
    private String Name;
    
    public SubjectDTO(){}

    public SubjectDTO(int Id_Subject, int Id_Cate, int Id_Teacher, String Name) {
        this.Id_Subject = Id_Subject;
        this.Id_Cate = Id_Cate;
        this.Id_Teacher = Id_Teacher;
        this.Name = Name;
    }

    public void setId_Subject(int Id_Subject) {
        this.Id_Subject = Id_Subject;
    }

    public void setId_Cate(int Id_Cate) {
        this.Id_Cate = Id_Cate;
    }

    public void setId_Teacher(int Id_Teacher) {
        this.Id_Teacher = Id_Teacher;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getId_Subject() {
        return Id_Subject;
    }

    public int getId_Cate() {
        return Id_Cate;
    }

    public int getId_Teacher() {
        return Id_Teacher;
    }

    public String getName() {
        return Name;
    }
    
    
}
