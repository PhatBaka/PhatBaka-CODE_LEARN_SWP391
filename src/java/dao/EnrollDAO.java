/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Dell G7 7590
 */
public class EnrollDAO implements Serializable {

    public static boolean enroll(int studentId, int courseId) throws ClassNotFoundException, SQLException {
        /* Get Parameters from HTML Forms from View files (.jsp,.html) */
        Connection con = null;
        PreparedStatement statement = null;
        int _studentId = studentId;
        int _courseId = courseId;
        try {
            con = DBUtils.getConnection();

            String sql = "INSERT INTO Enroll (Id_Student,Id_Course) "
                    + "VALUES (?,?)";

            statement = con.prepareStatement(sql);
            statement.setInt(1, _studentId);
            statement.setInt(2, _courseId);
            if (statement.executeUpdate() > 0) {
                return true;
            }
        } finally {
            if (statement != null) {
                statement.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return false;
    }

    public static boolean checkEnroll(int studentId, int courseId) throws ClassNotFoundException, SQLException {
        /* Get Parameters from HTML Forms from View files (.jsp,.html) */
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        int _studentId = studentId;
        int _courseId = courseId;
        try {
            con = DBUtils.getConnection();

            String sql = "SELECT Exam_Stats FROM Enroll "
                    + "WHERE Id_Student = ? "
                    + "AND Id_Course = ?";

            statement = con.prepareStatement(sql);
            statement.setInt(1, _studentId);
            statement.setInt(2, _courseId);
            if (rs.next()) {
                if (rs.getBoolean("Exam_Stats")) {
                    return true;
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return false;
    }

}
