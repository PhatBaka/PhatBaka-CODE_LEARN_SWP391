/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.StudentDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author nearl
 */
public class StudentDAO {
    public static StudentDTO getAccount(String studentname, String password) 
            throws ClassNotFoundException, SQLException{
        String LOGIN = "SELECT Id_Student, Username, Password FROM Student WHERE Username = ? AND Password = ? ";
        StudentDTO acc = null;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(LOGIN);
            ptm.setString(1, studentname);
            ptm.setString(2, password);
            ResultSet rs = ptm.executeQuery();
            if(rs != null && rs.next()){
                int id_student = rs.getInt("Id_Student");
                
                acc = new StudentDTO(id_student, studentname, password);
            }
            conn.close();
        }
        return acc;
    }
    public static boolean createStudentAccount(StudentDTO dto) throws ClassNotFoundException, SQLException {
        if (dto == null){
            return false;
        }
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "insert into dbo.Student (Username, Password) values (?, ?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, dto.getUsername());
                stm.setString(2, dto.getPassword());
                int effectRows = stm.executeUpdate();
                if (effectRows > 0) {
                    return true;
                }
            }
        } finally {
            if (con != null) {
                con.close();
            }
            if (stm != null) {
                stm.close();
            }
        }
        return false;
    }
    
    public static boolean changePassword(String oldpassword, String newpassword, String username) throws ClassNotFoundException, SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        String changePass = "update dbo.Student set Password = ? where Username = ? and Password = ?";
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                stm = con.prepareStatement(changePass);
                stm.setString(1, newpassword);
                stm.setString(2, username);
                stm.setString(3, oldpassword);
                int effectedRows = stm.executeUpdate();
                if(effectedRows > 0){
                    return true;
                } 
            }
        } catch (Exception ex) {
                ex.printStackTrace();
        } finally {
            if (con != null) {
                con.close();
            }
            if (stm != null) {
                con.close();
            }
        }
        return false;
    }
}

