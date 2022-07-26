/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import DBtills.DBUtils;
import dto.ContactDTO;
import dto.StudentDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author nguye
 */
public class PasswordDAO {
    public static boolean getNewPassword(String newPassword, String email) throws ClassNotFoundException, SQLException {
        Connection conn = null;
        PreparedStatement stm = null;
        try{
            conn = DBUtils.getConnection();
            String sql = "update dbo.Student set Password = ? where Id_Student in (select Id_Student from dbo.Contact Where Email_User = ?)";
            stm = conn.prepareStatement(sql);
            stm.setString(1, newPassword);
            stm.setString(2, email);
            int effectedRow = stm.executeUpdate();
            if(effectedRow > 0){
                return true;
            }
        }
        finally{
            if(conn != null){
                conn.close();
            }
            if(stm != null){
                conn.close();
            }
        }
        return false;
    }
}
