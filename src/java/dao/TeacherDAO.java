/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;

import dto.TeacherDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nearl
 */
public class TeacherDAO {
      public List<TeacherDTO> DeleteTeacher(String name) throws SQLException {
        List<TeacherDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "DELETE FROM Teacher WHERE Name = ? ";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new TeacherDTO(rs.getInt("Id_Teacher"),
                        rs.getString("UserName"),
                        rs.getString("Password"),
                        rs.getString("Name"),
                        rs.getString("Phone_Num"),
                        rs.getString("Information")));

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
            ps.close();
            rs.close();
        }
        return list;

    }
      
      public List<TeacherDTO> AddTeacher(int Id_Teachers, String UserName, String Password,String Name,String Phone_Num,String Information ) throws SQLException {
        List<TeacherDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = " INSERT INTO Teacher\n" +
                    "VALUES (? ,?, ?, ?, ?, ? );";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, Id_Teachers);
                 ps.setString(2, UserName);
                 ps.setString(2, Password);
                 ps.setString(2, Name);
                 ps.setString(2, Phone_Num);
                 ps.setString(2, Information);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new TeacherDTO(rs.getInt("Id_Teacher"),
                        rs.getString("UserName"),
                        rs.getString("Password"),
                        rs.getString("Name"),
                        rs.getString("Phone_Num"),
                        rs.getString("Information")));

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
            ps.close();
            rs.close();
        }
        return list;

    }
      
      
}
