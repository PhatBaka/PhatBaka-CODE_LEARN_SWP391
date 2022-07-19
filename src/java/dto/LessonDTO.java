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
public class LessonDTO {
    private int Id_Lesson;
    private int Id_Subject;
    private String Name;
    private String URL;
    
    public LessonDTO(){}

    public LessonDTO(int Id_Lesson, int Id_Subject, String Name, String URL) {
        this.Id_Lesson = Id_Lesson;
        this.Id_Subject = Id_Subject;
        this.Name = Name;
        this.URL = URL;
    }

    public void setId_Lesson(int Id_Lesson) {
        this.Id_Lesson = Id_Lesson;
    }

    public void setId_Subject(int Id_Subject) {
        this.Id_Subject = Id_Subject;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public int getId_Lesson() {
        return Id_Lesson;
    }

    public int getId_Subject() {
        return Id_Subject;
    }

    public String getName() {
        return Name;
    }

    public String getURL() {
        return URL;
    }
    
    
}
