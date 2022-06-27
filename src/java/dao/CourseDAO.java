/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.CourseDTO;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nearl
 */
public class CourseDAO implements Serializable {

    public static List<CourseDTO> display() throws ClassNotFoundException, SQLException {
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        ArrayList<CourseDTO> list = new ArrayList<>();

        try {
            con = DBUtils.getConnection();
            if (con != null) {

                String sql = "SELECT TOP 3 Image, Name, Description, Rating FROM Course "
                        + "ORDER BY NEWID()";

                statement = con.prepareStatement(sql);
                rs = statement.executeQuery();
                while (rs.next()) {
                    list.add(new CourseDTO(rs.getString("Image"), rs.getString("Name"), rs.getString("Description"), rs.getInt("Rating")));
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
        return list;
    }

    public String getTeacherName(String courseName) throws ClassNotFoundException, SQLException {
        String name = "";
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;

        try {
            con = DBUtils.getConnection();
            if (con != null) {

                String sql = "SELECT Teacher.Name "
                        + "FROM Teacher JOIN Course "
                        + "ON Teacher.Id_Teacher = Course.Id_Teacher "
                        + "AND Course.Name = ?";

                statement = con.prepareStatement(sql);
                rs = statement.executeQuery();
                if(rs.next()) {
                    name = rs.getString("Name");
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
        return name;
    }

    public CourseDTO detail(String _courseName) throws ClassNotFoundException, SQLException {
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;

        try {
            con = DBUtils.getConnection();
            if (con != null) {
                CourseDTO course = new CourseDTO();
                String sql = "SELECT * FROM Course WHERE Name = ?";

                statement = con.prepareStatement(sql);
                statement.setString(1, _courseName);
                rs = statement.executeQuery();

                if (rs.next()) {
                    course = new CourseDTO(rs.getInt("Id_Course"), rs.getInt("Id_Subject"), rs.getInt("Id_Teacher"), rs.getNString("Name"), rs.getNString("Description"), rs.getDate("Date_Open"), rs.getDate("Date_Close"), rs.getInt("Rating"), rs.getString("Image"));
                }

                return course;
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
        return null;
    }

    public boolean add(int subjectId, String courseName, String description, String openDate, String closeDate) throws ClassNotFoundException, SQLException {
        /* Get Parameters from HTML Forms from View files (.jsp,.html) */
        Connection con = null;
        PreparedStatement statement = null;
        int _subjectId = subjectId;
        String _courseName = courseName;
        String _description = description;
        Timestamp _openDate = Timestamp.valueOf(openDate);
        Timestamp _closeDate = Timestamp.valueOf(closeDate);
        try {
            con = DBUtils.getConnection();

            String sql = "INSERT INTO Course (Id_Subject,Name,Description,Date_Open,Date_Close)\n"
                    + "VALUES (?,'?','?',?,?)";

            statement = con.prepareStatement(sql);
            statement.setInt(1, _subjectId);
            statement.setString(2, _courseName);
            statement.setString(3, _description);
            statement.setTimestamp(4, _openDate);
            statement.setTimestamp(5, _closeDate);
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

    public boolean delete(String courseName) throws ClassNotFoundException, SQLException {
        String _courseName = courseName;
        Connection con = null;
        PreparedStatement statement = null;
        int result = 0;

        try {
            String sql = "DELETE FROM Course WHERE courseName = '?'";

            con = DBUtils.getConnection();
            if (con != null) {
                statement = con.prepareStatement(sql);
                statement.setString(1, _courseName);
                if (statement.executeUpdate() > 0) {
                    return true;
                }
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

    public boolean update(int courseId, int subjectId, String courseName, String description, String openDate, String closeDate) throws ClassNotFoundException, SQLException {
        int _courseId = courseId;
        Connection con = null;
        PreparedStatement statement = null;
        int _subjectId = subjectId;
        String _courseName = courseName;
        String _description = description;
        Timestamp _openDate = Timestamp.valueOf(openDate);
        Timestamp _closeDate = Timestamp.valueOf(closeDate);

        try {
            String sql = "UPDATE Course "
                    + "SET Id_Subject = ?, Name = '?', Description = '?', Date_Open = ? , Date_Close = ? "
                    + "WHERE Id_Course = ?";
            con = DBUtils.getConnection();
            if (con != null) {
                statement = con.prepareStatement(sql);
                statement.setInt(1, _subjectId);
                statement.setString(2, _courseName);

                if (statement.executeUpdate() > 0) {
                    return true;
                }

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

    public List<CourseDTO> search(String courseName, int pagenum) throws SQLException, ClassNotFoundException {
        String _courseName = courseName;
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        ArrayList<CourseDTO> list = new ArrayList<>();

        try {
            String sql = "SELECT * FROM Course "
                    + "WHERE Name LIKE ? "
                    + "ORDER BY Id_Course "
                    + "OFFSET (?-1)*3 ROWS "
                    + "FETCH NEXT 3 ROWS ONLY";
            con = DBUtils.getConnection();
            if (con != null) {
                statement = con.prepareStatement(sql);
                statement.setString(1, "%" + _courseName + "%");
                statement.setInt(2, pagenum);

                rs = statement.executeQuery();

                while (rs.next()) {
                    list.add(new CourseDTO(rs.getInt("Id_Course"), rs.getInt("Id_Subject"), rs.getInt("Id_Teacher"), rs.getNString("Name"), rs.getNString("Description"), rs.getDate("Date_Open"), rs.getDate("Date_Close"), rs.getInt("Rating"), rs.getString("Image")));
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
        return list;
    }
}
