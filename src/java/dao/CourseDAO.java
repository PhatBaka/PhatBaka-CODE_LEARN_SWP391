/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.CourseDTO;
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
public class CourseDAO {

    ///Searching Course bằng Description và name 
    public CourseDTO SearchingCourse(String Search) throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SELECT * from dbo.Course where Name like ? OR Description like ? ";
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + Search + "%");
            ps.setString(2, "%" + Search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                return new CourseDTO(rs.getInt("Id_Course"), 
                        rs.getInt("Id_Subject"), 
                        rs.getString("Name"), 
                        rs.getString("Description"),
                        rs.getDate("Date_Open"),
                        rs.getDate("Date_Close"), 
                        rs.getInt("Rating"));

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
    
    
    /// Tìm tổng sản phẩm để Paging
        public int GetTotalCourse() throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SElect COUNT(*) from dbo.Course  ";
            ps = conn.prepareStatement(sql);
             rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
            ps.close();
            rs.close();
        }
        return 0;

    }

    public List<CourseDTO> PagingCourse(int Index) throws SQLException {
        List<CourseDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SElect COUNT(*) from dbo.Course"
                    + "Order BY Id_Course  "
                    + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (Index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new CourseDTO(rs.getInt("Id_Course"), 
                        rs.getInt("Id_Subject"), 
                        rs.getString("Name"), 
                        rs.getString("Description"),
                        rs.getDate("Date_Open"),
                        rs.getDate("Date_Close"), 
                        rs.getInt("Rating")));

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
