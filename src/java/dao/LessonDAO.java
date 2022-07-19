/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.LessonDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nearl
 */
public class LessonDAO {

    public LessonDTO SearchingLesson(String Search) throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SELECT * from dbo.lesson where Name like ?  ";
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + Search + "%");

            rs = ps.executeQuery();
            while (rs.next()) {
                return new LessonDTO(rs.getInt("Id_Lesson"),
                        rs.getInt("Id_Subject"),
                        rs.getString("Name"),
                        rs.getString("URL"));

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

    public LessonDTO GetAllLesson() throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SELECT * from dbo.lesson ";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new LessonDTO(rs.getInt("Id_Lesson"),
                        rs.getInt("Id_Subject"),
                        rs.getString("Name"),
                        rs.getString("URL"));
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
