/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.MarkReportDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nearl
 */
public class MarkReportDAO {
    private static final String INPUT_RESULT = "INSERT Mark_Report(Id_Exam, Id_Student, Mark, Status) VALUES (?,?,?,?)";
    private static final String GET_MARK = "SELECT Id_Report, dbo.Mark_Report.Id_Exam, Id_Student, Mark, Status FROM dbo.Mark_Report, dbo.Exam WHERE dbo.Mark_Report.Id_Exam = dbo.Exam.Id_Exam AND Id_Student = ? AND Id_Course = ?";
    public static MarkReportDTO getMark(int id_student, int id_course) throws ClassNotFoundException, SQLException{
        MarkReportDTO mark = null;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(GET_MARK);
            ptm.setInt(1, id_student);
            ptm.setInt(2, id_course);
            ResultSet rs = ptm.executeQuery();
            while(rs.next() && rs != null){
                mark = new MarkReportDTO(rs.getInt("Id_Report"), rs.getInt("Id_Exam"), rs.getInt("Id_Student"), rs.getFloat("Mark"));
            }
            conn.close();
        }
        return mark;
    }
        public static int setResult(MarkReportDTO mark) throws ClassNotFoundException, SQLException{
            int result = 0;
            Connection conn = DBUtils.getConnection();
            if(conn != null){
                PreparedStatement ptm = conn.prepareStatement(INPUT_RESULT);
                ptm.setInt(1, mark.getId_Exam());
                ptm.setInt(2, mark.getId_Student());
                ptm.setFloat(3, mark.getMark());
                ptm.setString(4, "done");
                result = ptm.executeUpdate();
                conn.close();
            }
            return result;
        }
        public static MarkReportDTO SearchingReport(String Search) throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
               conn = DBUtils.getConnection();
               String sql = "SELECT * from dbo.report where Name like ?  ";
               ps = conn.prepareStatement(sql);
               ps.setString(1, "%" + Search + "%");

               rs = ps.executeQuery();
               while (rs.next()) {
                  return new MarkReportDTO(rs.getInt("Id_Report"),
                        rs.getInt("Id_Exam"),
                        rs.getInt("Id_Student"),
                        rs.getFloat("Mark"));

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
