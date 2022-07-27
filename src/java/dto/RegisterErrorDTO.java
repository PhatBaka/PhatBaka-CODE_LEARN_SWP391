/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author nguye
 */
public class RegisterErrorDTO {
    private String usernameIsExisted;
    private String emailIsExisted;
    private String phoneIsExisted;
    private String emailNotExisted;


    public String getEmailNotExisted() {
        return emailNotExisted;
    }

    
    
    public void setEmailNotExisted(String emailNotExisted) {
        this.emailNotExisted = emailNotExisted;
    }
    
    

    public RegisterErrorDTO() {
    
    }

    public String getUsernameIsExisted() {
        return usernameIsExisted;
    }

    public void setUsernameIsExisted(String usernameIsExisted) {
        this.usernameIsExisted = usernameIsExisted;
    }

    public String getEmailIsExisted() {
        return emailIsExisted;
    }

    public void setEmailIsExisted(String emailIsExisted) {
        this.emailIsExisted = emailIsExisted;
    }

    public String getPhoneIsExisted() {
        return phoneIsExisted;
    }

    public void setPhoneIsExisted(String phoneIsExisted) {
        this.phoneIsExisted = phoneIsExisted;
    }
    
    
}
