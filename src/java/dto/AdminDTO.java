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
public class AdminDTO {
    private int Id_Admin;
    private String AdminName;
    private String Password;
    private String Notification;
    
    public AdminDTO(){}

    public AdminDTO(int Id_Admin, String AdminName, String Password, String Notification) {
        this.Id_Admin = Id_Admin;
        this.AdminName = AdminName;
        this.Password = Password;
        this.Notification = Notification;
    }

    public void setId_Admin(int Id_Admin) {
        this.Id_Admin = Id_Admin;
    }

    public void setAdminName(String AdminName) {
        this.AdminName = AdminName;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public void setNotification(String Notification) {
        this.Notification = Notification;
    }

    public int getId_Admin() {
        return Id_Admin;
    }

    public String getAdminName() {
        return AdminName;
    }

    public String getPassword() {
        return Password;
    }

    public String getNotification() {
        return Notification;
    }
    
    
}
