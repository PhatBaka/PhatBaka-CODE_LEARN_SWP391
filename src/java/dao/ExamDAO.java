/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.ExamDTO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nearl
 */
public class ExamDAO {
    private static final String ADD_EXAM = "INSERT INTO Exam(Id_Exam,  Name, Question, Exam_Date) VALUES (?,?,?,?)";
    
    private static final String DELETE_EXAM = "";// sua sau
    
    private static final String EDIT_EXAM = "UPDATE Exam SET Name = ?, Question = ?, Exam_Date = ? WHERE Id_Exam = ?"; // 
    
    private  static final String SEARCH_EXAM = "SELECT Id_Exam, Name, Question, Exam_Date FROM Exam WHERE Name like ?";
    
    private  static final String NOTI_EXAM = "SELECT Id_Exam, Name, Question, Exam_Date FROM Exam WHERE Exam_Date BETWEEN ? AND ?";
        public static final String GET_EXAM = "SELECT Id_Exam, Name, Exam_Date, Hour, Question FROM dbo.Exam WHERE Id_Course = ?";
    public static ExamDTO getExam(int id_course) throws ClassNotFoundException, SQLException{
        ExamDTO exam = null;
        int check = id_course;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(GET_EXAM);
            ptm.setInt(1, id_course);
            ResultSet rs = ptm.executeQuery();
            if(rs!=null && rs.next()){
                int id_exam = rs.getInt("Id_Exam");
                String name = rs.getString("Name");
                Date exam_date = rs.getDate("Exam_Date");
                int hour = rs.getInt("Hour");
                String question = rs.getString("Question");
                exam = new ExamDTO(id_exam, name, exam_date, hour, question, id_course);
            }
            conn.close();
        }
        return exam;
    }
    
//    public static int addNewExam(ExamDTO exam) throws ClassNotFoundException, SQLException{
//        int result = 0;
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(ADD_EXAM);
//            ptm.setString(1, exam.getName());
//            ptm.setString(2, exam.getQuestion());
//            ptm.setDate(3, exam.getDate());
//            result = ptm.executeUpdate();
//            conn.close();
//        }     
//        return result;
//    }
    
    public static int deleteExam(int id) throws ClassNotFoundException, SQLException{
        int result = 0;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(DELETE_EXAM);
            ptm.setInt(1, id);
            result = ptm.executeUpdate();
            conn.close();
        }
        return result;
    }
    
//    public static int updateExam(ExamDTO exam) throws ClassNotFoundException, SQLException{
//        int result = 0;
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(EDIT_EXAM);
//            ptm.setString(1, exam.getName());
//            ptm.setString(2, exam.getQuestion());
//            ptm.setDate(3, exam.getDate());
//            ptm.setInt(4, exam.getId_Exam());
//            result = ptm.executeUpdate();
//            conn.close();
//        }
//        return result;
//    }
    
    public static  List<ExamDTO> getListExam(String search) throws SQLException, ClassNotFoundException{
        List<ExamDTO> list = null;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(SEARCH_EXAM);
            ptm.setString(1, search);
            ResultSet rs = ptm.executeQuery();
            while(rs != null && rs.next()){
                list.add(new ExamDTO());
            }
            conn.close();
           
        }
        return list;
    }
    
    public static  List<ExamDTO> getNotiExam() throws SQLException, ClassNotFoundException{
        List<ExamDTO> list = new ArrayList<>();
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            LocalDate date = java.time.LocalDate.now();
            Date startDate = Date.valueOf(date);
            Date endDate = new Date(1997,3,10);
            long time = startDate.getTime() + (7*24*60*60*1000);
            endDate.setTime(time);
            PreparedStatement ptm = conn.prepareStatement(NOTI_EXAM);
            ptm.setDate(1, startDate);
            ptm.setDate(2, endDate);
            ResultSet rs = ptm.executeQuery();
            while(rs.next()){
                list.add(new ExamDTO(rs.getInt("Id_Exam"),rs.getString("Name"),null,rs.getDate("Exam_Date")));
            }
            conn.close();
           
        }
        return list;
    }

    
    public ExamDTO SearchingExam(String Search) throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
               conn = DBUtils.getConnection();
               String sql = "SELECT * from dbo.exam where Name like ?  ";
               ps = conn.prepareStatement(sql);
               ps.setString(1, "%" + Search + "%");

               rs = ps.executeQuery();
               while (rs.next()) {
                   return new ExamDTO(rs.getInt("Id_Exam"),
                           rs.getString("Name"),
                           rs.getString("Question"),
                           rs.getDate("Exam_Date"));

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
       public int GetTotalExam() throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SElect COUNT(*) from dbo.exam  ";
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

    public List<ExamDTO> PagingExam(int Index) throws SQLException {
        List<ExamDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SElect COUNT(*) from dbo.exam"
                    + "Order BY Id_Exam  "
                    + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (Index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ExamDTO(rs.getInt(sql), 
                        rs.getString(sql),
                        rs.getString(sql),
                        rs.getDate(sql)));

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
