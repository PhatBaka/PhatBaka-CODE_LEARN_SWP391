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

/**
 *
 * @author nearl
 */
public class TeacherDAO {

    private static final String LOGIN = "SELECT Id_Teacher, Username, Password, Name, Phone_Num, Information,Email,Avatar FROM Teacher "
            + "WHERE Username = ? AND Password = ?";

    public static TeacherDTO getAccount(String teachername, String password) throws ClassNotFoundException, SQLException {
        TeacherDTO acc = null;
        Connection conn = DBUtils.getConnection();
        if (conn != null) {
            PreparedStatement ptm = conn.prepareStatement(LOGIN);
            ptm.setString(1, teachername);
            ptm.setString(2, password);
            ResultSet rs = ptm.executeQuery();
            if (rs != null && rs.next()) {
                int id_teacher = rs.getInt("Id_Teacher");
                String name = rs.getString("Name");
                String phone_num = rs.getString("Phone_Num");
                String information = rs.getString("Information");
                String email = rs.getString("Email");
                String avatar = rs.getString("Avatar");
                acc = new TeacherDTO(id_teacher, teachername, password, name, phone_num, information,email,avatar);
            }
            conn.close();
        }
        return acc;
    }
    
 public static boolean editTeacherProfile(TeacherDTO dto) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        String sql = "update dbo.Teacher set Name = ?, Phone_Num = ?, Information = ?, Avatar = ?, Email = ? where Username = ?";
        if (dto == null) {
            return false;
        }
        try {
            con = DBUtils.getConnection();
            stm = con.prepareStatement(sql);
            stm.setString(1, dto.getName());
            stm.setString(2, dto.getPhone_Num());
            stm.setString(3, dto.getInformation());
            stm.setString(4, dto.getAvatar());
            stm.setString(5, dto.getEmail());
            stm.setString(6, dto.getUserName());
            int effectedRows = stm.executeUpdate();
            if (effectedRows > 0) {
                return true;
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

    public static boolean createTeacherAccount(TeacherDTO dto) throws ClassNotFoundException, SQLException {
        if (dto == null) {
            return false;
        }
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "insert into dbo.Teacher (Username, Password) values (?, ?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, dto.getUserName());
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
}
