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
public class CategoryDTO {
    private int Id_Cate;
    private String Name;
    private String Description;
    
    public CategoryDTO(){}

    public CategoryDTO(int Id_Cate, String Name, String Description) {
        this.Id_Cate = Id_Cate;
        this.Name = Name;
        this.Description = Description;
    }

    public void setId_Cate(int Id_Cate) {
        this.Id_Cate = Id_Cate;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public int getId_Cate() {
        return Id_Cate;
    }

    public String getName() {
        return Name;
    }

    public String getDescription() {
        return Description;
    }
    
}
