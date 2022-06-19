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
public class ErrorDTO {
    private String usernameIsExisted;
<<<<<<< Updated upstream:src/java/dto/RegisterErrorDTO.java

    public RegisterErrorDTO(String usernameIsExisted) {
        this.usernameIsExisted = usernameIsExisted;
    }

    public RegisterErrorDTO() {
    }

    /**
     * @return the usernameIsExisted
     */
=======
    private String passwordNotMatch;
    
    public ErrorDTO() {
    }

    public String getPasswordNotMatch() {
        return passwordNotMatch;
    }

    public void setPasswordNotMatch(String passwordNotMatch) {
        this.passwordNotMatch = passwordNotMatch;
    }
    
    
    
>>>>>>> Stashed changes:src/java/dto/ErrorDTO.java
    public String getUsernameIsExisted() {
        return usernameIsExisted;
    }

    /**
     * @param usernameIsExisted the usernameIsExisted to set
     */
    public void setUsernameIsExisted(String usernameIsExisted) {
        this.usernameIsExisted = usernameIsExisted;
    }
    
    
}
