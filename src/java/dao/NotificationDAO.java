/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.ExamDTO;
import dto.MarkReportDTO;
import dto.StudentDTO;
import dto.TeacherDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author This PC
 */
public class NotificationDAO {
       public static void InsertForNotification(ExamDTO exam) throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "INSERT INTO ExamDTO (Id_Exam,Name,question,date,Hour,Subject,Exam_Date) VALUES (?,?,?,?,?,?,?);";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, exam.getId_Exam());
            ps.setString(2, exam.getName());
            ps.setString(3, exam.getQuestion());
            ps.setString(5, exam.getHour());
            //ps.setString(6, exam.Id_Course());
            ps.setDate(7, exam.getExam_Date());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
            ps.close();
            rs.close();
        }

    }

    public static List<ExamDTO> ListNotification(int id) throws SQLException {
        List<ExamDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "Select * from dbo.Exam where Id_Exam = ? ";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ExamDTO(
                        
                        rs.getInt("Id_Exam"),
                        rs.getString("Name"),
                        rs.getDate("Exam_Date"),
                        rs.getString("Hour"),
                        rs.getString("question"),
                        rs.getInt("Id_Course")
                ));

            }
        } catch (ClassNotFoundException | SQLException e) {
        } finally {
            conn.close();
            ps.close();
            rs.close();
        }
        return list;

    }

    public static void main(String[] args) throws SQLException {
        NotificationDAO dao = new NotificationDAO();
        List<ExamDTO> lis = NotificationDAO.ListNotification(1);
        for (ExamDTO li : lis) {
            System.out.println(li.getHour() + li.getName());
        }
       
    }
}
