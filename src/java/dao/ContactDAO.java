/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.ContactDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nearl
 */
public class ContactDAO {

    public static ContactDTO SearchingContact(int studentID) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SELECT * from dbo.Contact where Id_Student = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, studentID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ContactDTO(
                        rs.getInt("Id_Student"),
                        rs.getString("Email_User"),
                        rs.getString("Parents_inf"),
                        rs.getString("Phone_Num"),
                        rs.getString("School"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
            ps.close();
            rs.close();
        }
        return null;
    }
    
    public static boolean addContact(ContactDTO dto) throws SQLException{
        Connection con = null;
        PreparedStatement stm = null;
        String sql = "insert into dbo.Contact (Id_Student, Email_User, Parents_inf, Phone_Num, School) values (?, ?, ?, ?, ?)";
        if (dto == null) {
            return false;
        }
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, dto.getId_Student());
            stm.setString(2, dto.getEmail_User());
            stm.setString(3, dto.getParents_inf());
            stm.setString(4, dto.getPhone_Num());
            stm.setString(5, dto.getSchool());
            int effectedRows = stm.executeUpdate();
            if (effectedRows>0) {
                return true;
            }
        } catch ( Exception ex ) {
            
        } finally {
            if (con!=null) {
                con.close();
            } 
            if (stm!=null) {
                stm.close();
            }
        }
        return false;
    }
    
    public static boolean editContact(ContactDTO dto) throws SQLException{
        Connection con = null;
        PreparedStatement stm = null;
        String sql = "update dbo.Contact set Email_User = ?, Parents_inf = ?, Phone_num = ?, School = ? where Id_Student = ?";
        if (dto == null) {
            return false;
        }
        try {
            stm = con.prepareStatement(sql);
            stm.setString(1, dto.getEmail_User());
            stm.setString(2, dto.getParents_inf());
            stm.setString(3, dto.getPhone_Num());
            stm.setString(4, dto.getSchool());
            stm.setInt(5, dto.getId_Student());
            int effectedRows = stm.executeUpdate();
            if (effectedRows>0) {
                return true;
            }
        } catch ( Exception ex ) {
            
        } finally {
            if (con!=null) {
                con.close();
            } 
            if (stm!=null) {
                stm.close();
            }
        }
        return false;
    }
}
