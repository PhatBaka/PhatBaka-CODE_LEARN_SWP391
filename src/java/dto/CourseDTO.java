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
public class CourseDTO {
    private int Id_Course;
    private int Id_Subject;
    private String Name;
    private String Description;
    private Date Date_Open;
    private Date Date_Close;
    private int Rating;
    
    public CourseDTO(){}

    public CourseDTO(int Id_Course, int Id_Subject, String Name, String Description, Date Date_Open, Date Date_Close, int Rating) {
        this.Id_Course = Id_Course;
        this.Id_Subject = Id_Subject;
        this.Name = Name;
        this.Description = Description;
        this.Date_Open = Date_Open;
        this.Date_Close = Date_Close;
        this.Rating = Rating;
    }

    public void setId_Course(int Id_Course) {
        this.Id_Course = Id_Course;
    }

    public void setId_Subject(int Id_Subject) {
        this.Id_Subject = Id_Subject;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public void setDate_Open(Date Date_Open) {
        this.Date_Open = Date_Open;
    }

    public void setDate_Close(Date Date_Close) {
        this.Date_Close = Date_Close;
    }

    public void setRating(int Rating) {
        this.Rating = Rating;
    }

    public int getId_Course() {
        return Id_Course;
    }

    public int getId_Subject() {
        return Id_Subject;
    }

    public String getName() {
        return Name;
    }

    public String getDescription() {
        return Description;
    }

    public Date getDate_Open() {
        return Date_Open;
    }

    public Date getDate_Close() {
        return Date_Close;
    }

    public int getRating() {
        return Rating;
    }
    
}
