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

/**
 *
 * @author nearl
 */
public class StudentDAO {
    private static final String LOGIN = "SELECT Id_Student, Username, Password, Exam_Stats FROM Student "
            +                           "WHERE Username = ? AND Password = ? ";
    
    public static StudentDTO getAccount(String studentname, String password) throws ClassNotFoundException, SQLException{
        StudentDTO acc = null;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(LOGIN);
            ptm.setString(1, studentname);
            ptm.setString(2, password);
            ResultSet rs = ptm.executeQuery();
            if(rs != null && rs.next()){
                int id_student = rs.getInt("Id_Student");
                String exam_starts = rs.getString("Exam_Stats");
                acc = new StudentDTO(id_student, studentname, password, exam_starts);
            }
            conn.close();
        }
        return acc;
    }
    public static boolean createNewAccount(StudentDTO dto) throws ClassNotFoundException, SQLException {
        if (dto == null){
            return false;
        }
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "Insert Into Student("
                        + "Username, Password, Exam_Stats"
                        + ") values(?, ?, ?)";
                stm = con.prepareStatement(sql);
                stm.setString(1, dto.getUsername());
                stm.setString(2, dto.getPassword());
                stm.setString(3, "0");
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
    public StudentDTO SearchingStudent(String Search) throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
               conn = DBUtils.getConnection();
               String sql = "SELECT * from dbo.student where Name like ?  ";
               ps = conn.prepareStatement(sql);
               ps.setString(1, "%" + Search + "%");

               rs = ps.executeQuery();
               while (rs.next()) {
                   return new StudentDTO(rs.getInt("Id_Student"),
                           rs.getString("Username"), 
                           rs.getString("Password"), 
                           rs.getString("Notification"));

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

}

