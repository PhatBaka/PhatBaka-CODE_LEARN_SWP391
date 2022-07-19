///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package dao;
//
//import DBtills.DBUtils;
//import dto.ExamDTO;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
///**
// *
// * @author nearl
// */
//public class ExamDAO {
//    private static final String ADD_EXAM = "INSERT INTO Exam(Id_Exam,  Name, Question, Date) VALUES (?,?,?,?)";
//    
//    private static final String DELETE_EXAM = "";// sua sau
//    
//    private static final String EDIT_EXAM = "UPDATE Exam SET Name = ?, Question = ?, Date = ? WHERE Id_Exam = ?"; // 
//    
//    private  static final String SEARCH_EXAM = "SELECT Id_Exam, Name, Question, Date FROM Exam WHERE Name like ?";
//    
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
//    
//    public static int deleteExam(int id) throws ClassNotFoundException, SQLException{
//        int result = 0;
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(DELETE_EXAM);
//            ptm.setInt(1, id);
//            result = ptm.executeUpdate();
//            conn.close();
//        }
//        return result;
//    }
//    
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
//    
//    public static  List<ExamDTO> getListExam(String search) throws SQLException, ClassNotFoundException{
//        List<ExamDTO> list = null;
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(SEARCH_EXAM);
//            ResultSet rs = ptm.executeQuery();
//            while(rs != null && rs.next()){
//                
//                list.add(new ExamDTO());
//            }
//            conn.close();
//           
//        }
//        return list;
//    }
//    public ExamDTO SearchingExam(String Search) throws SQLException {
//
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//               conn = DBUtils.getConnection();
//               String sql = "SELECT * from dbo.exam where Name like ?  ";
//               ps = conn.prepareStatement(sql);
//               ps.setString(1, "%" + Search + "%");
//
//               rs = ps.executeQuery();
//               while (rs.next()) {
//                   return new ExamDTO(rs.getInt("Id_Exam"),
//                           rs.getString("Name"),
//                           rs.getString("Question"),
//                           rs.getDate("date"));
//
//               }
//           } catch (Exception e) {
//               e.printStackTrace();
//           } finally {
//               conn.close();
//               ps.close();
//               rs.close();
//           }
//           return null;
//
//    }
//       public int GetTotalExam() throws SQLException {
//
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//            conn = DBUtils.getConnection();
//            String sql = "SElect COUNT(*) from dbo.exam  ";
//            ps = conn.prepareStatement(sql);
//             rs = ps.executeQuery();
//            while (rs.next()) {
//                return rs.getInt(1);
//
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            conn.close();
//            ps.close();
//            rs.close();
//        }
//        return 0;
//
//    }
//
//    public List<ExamDTO> PagingExam(int Index) throws SQLException {
//        List<ExamDTO> list = new ArrayList<>();
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//            conn = DBUtils.getConnection();
//            String sql = "SElect COUNT(*) from dbo.exam"
//                    + "Order BY Id_Exam  "
//                    + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, (Index - 1) * 6);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new ExamDTO(rs.getInt(sql), 
//                        rs.getString(sql),
//                        rs.getString(sql),
//                        rs.getDate(sql)));
//
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            conn.close();
//            ps.close();
//            rs.close();
//        }
//        return list;
//
//    }
//
//        
//}
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package dao;
//
//import DBtills.DBUtils;
//import dto.ExamDTO;
//import java.sql.Connection;
//import java.sql.Date;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
///**
// * 
// *
// * @author nearl
// */
//
//public class ExamDAO {
//    private static final String ADD_EXAM = "INSERT INTO Exam(Id_Exam,  Name, Question, Date) VALUES (?,?,?,?)";
//    
//    private static final String DELETE_EXAM = "";// sua sau
//    
//    private static final String EDIT_EXAM = "UPDATE Exam SET Name = ?, Question = ?, Date = ? WHERE Id_Exam = ?"; // 
//    
//    private  static final String SEARCH_EXAM = "SELECT Id_Exam, Name, Question, Date FROM Exam WHERE Name like ?";
//    
//    private static final String GET_EXAM_ONES = "SELECT dbo.Exam.Id_Exam, Name, Date, Exam_Date, Hour, Subject, question, Id_Course, "
//            + "dbo.Question.Id_Question, Question_URL, dbo.Answer.Answer, Status, Id_Answer FROM dbo.Exam, dbo.Question, dbo.Answer "
//            + "WHERE dbo.Exam.Id_Course = ? AND dbo.Exam.Name = ? AND dbo.Exam.Id_Exam = dbo.Question.Id_Exam "
//            + "AND  dbo.Exam.Id_Exam = dbo.Answer.Id_Exam AND dbo.Question.Id_Question = dbo.Answer.Id_Question";
//    
//    public static final String GET_EXAM = "SELECT Id_Exam, Name, Exam_Date, Hour, Question FROM dbo.Exam WHERE Id_Course = ?";
//    public static ExamDTO getExam(int id_course) throws ClassNotFoundException, SQLException{
//        ExamDTO exam = null;
//        int check = id_course;
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(GET_EXAM);
//            ptm.setInt(1, id_course);
//            ResultSet rs = ptm.executeQuery();
//            if(rs!=null && rs.next()){
//                int id_exam = rs.getInt("Id_Exam");
//                String name = rs.getString("Name");
//                Date exam_date = rs.getDate("Exam_Date");
//                int hour = rs.getInt("Hour");
//                String question = rs.getString("Question");
//                exam = new ExamDTO(id_exam, name, exam_date, hour, question, id_course);
//            }
//            conn.close();
//        }
//        return exam;
//    }
////SELECT TOP (1000) [Id_Exam]
////      ,[Name]
////      ,[Exam_Date]
////      ,[Hour]
////      ,[question]
////      ,[Id_Course]
////  FROM [Code_Learn].[dbo].[Exam]
////    
////    public static List<ExamDTO> getExamOne(int id_course, String examName) throws SQLException, ClassNotFoundException{
////        List<ExamDTO> exams = new ArrayList<>();
////        Connection conn = DBUtils.getConnection();
////        if(conn != null){
////            PreparedStatement ptm = conn.prepareStatement(GET_EXAM);
////            ptm.setInt(1, id_course);
////            ptm.setString(2, examName);
////            ResultSet rs = ptm.executeQuery();
////            while(rs != null && rs.next()){
////                int id_exam = rs.getInt("dbo.Exam.Id_Exam");
////                String name = rs.getString("Name");
////                Date date = rs.getDate("Date");
////                Date exam_date = rs.getDate("Exam_Date");
////                int hour = rs.getInt("Hour");
////                String subject = rs.getString("Subject");
////                String question = rs.getString("Question_URL");
////                int id_answer = rs.getInt("Id_Answer");
////                String answer = rs.getString("dbo.Answer.Answer");
////                int status = rs.getInt("Status");
////                int id_question = rs.getInt("dbo.Question.Id_Question");
////                String question_url = rs.getString("Question_URL");
////                exams.add(new ExamDTO(id_exam, name, date, exam_date, hour, subject, question, id_course, id_answer, answer, status, 
////                        id_question, question_url));
////            }
////            conn.close();
////            
////        }
////        return exams;
////    }
//            //nt id_exam, String name, Date date, Date exam_date, int hour, String subject, String question, int id_course, 
////        int id_answer, int id_quesion, String answer, int status, int id_question, String question_url, String answwer
//    
////    public static int addNewExam(ExamDTO exam) throws ClassNotFoundException, SQLException{
////        int result = 0;
////        Connection conn = DBUtils.getConnection();
////        if(conn != null){
////            PreparedStatement ptm = conn.prepareStatement(ADD_EXAM);
////            ptm.setString(1, exam.getName());
////            ptm.setString(2, exam.getQuestion());
////            ptm.setDate(3, exam.getDate());
////            result = ptm.executeUpdate();
////            conn.close();
////        }     
////        return result;
////    }
////    
////    public static int deleteExam(int id) throws ClassNotFoundException, SQLException{
////        int result = 0;
////        Connection conn = DBUtils.getConnection();
////        if(conn != null){
////            PreparedStatement ptm = conn.prepareStatement(DELETE_EXAM);
////            ptm.setInt(1, id);
////            result = ptm.executeUpdate();
////            conn.close();
////        }
////        return result;
////    }
////    
////    public static int updateExam(ExamDTO exam) throws ClassNotFoundException, SQLException{
////        int result = 0;
////        Connection conn = DBUtils.getConnection();
////        if(conn != null){
////            PreparedStatement ptm = conn.prepareStatement(EDIT_EXAM);
////            ptm.setString(1, exam.getName());
////            ptm.setString(2, exam.getQuestion());
////            ptm.setDate(3, exam.getDate());
////            ptm.setInt(4, exam.getId_exam());
////            result = ptm.executeUpdate();
////            conn.close();
////        }
////        return result;
////    }
////    
////    public static  List<ExamDTO> getListExam(String search) throws SQLException, ClassNotFoundException{
////        List<ExamDTO> list = null;
////        Connection conn = DBUtils.getConnection();
////        if(conn != null){
////            PreparedStatement ptm = conn.prepareStatement(SEARCH_EXAM);
////            ResultSet rs = ptm.executeQuery();
////            while(rs != null && rs.next()){
////                
////                list.add(new ExamDTO());
////            }
////            conn.close();
////           
////        }
////        return list;
////    }
////    public ExamDTO SearchingExam(String Search) throws SQLException {
////
////        Connection conn = null;
////        PreparedStatement ps = null;
////        ResultSet rs = null;
////        try {
////               conn = DBUtils.getConnection();
////               String sql = "SELECT * from dbo.exam where Name like ?  ";
////               ps = conn.prepareStatement(sql);
////               ps.setString(1, "%" + Search + "%");
////
////               rs = ps.executeQuery();
////               while (rs.next()) {
////                   return new ExamDTO(rs.getInt("Id_Exam"),
////                           rs.getString("Name"),
////                           rs.getString("Question"),
////                           rs.getDate("date"));
////
////               }
////           } catch (Exception e) {
////               e.printStackTrace();
////           } finally {
////               conn.close();
////               ps.close();
////               rs.close();
////           }
////           return null;
////
////    }
////       public int GetTotalExam() throws SQLException {
////
////        Connection conn = null;
////        PreparedStatement ps = null;
////        ResultSet rs = null;
////        try {
////            conn = DBUtils.getConnection();
////            String sql = "SElect COUNT(*) from dbo.exam  ";
////            ps = conn.prepareStatement(sql);
////             rs = ps.executeQuery();
////            while (rs.next()) {
////                return rs.getInt(1);
////
////            }
////        } catch (Exception e) {
////            e.printStackTrace();
////        } finally {
////            conn.close();
////            ps.close();
////            rs.close();
////        }
////        return 0;
////
////    }
////
////    public List<ExamDTO> PagingExam(int Index) throws SQLException {
////        List<ExamDTO> list = new ArrayList<>();
////        Connection conn = null;
////        PreparedStatement ps = null;
////        ResultSet rs = null;
////        try {
////            conn = DBUtils.getConnection();
////            String sql = "SElect COUNT(*) from dbo.exam"
////                    + "Order BY Id_Exam  "
////                    + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
////            ps = conn.prepareStatement(sql);
////            ps.setInt(1, (Index - 1) * 6);
////            rs = ps.executeQuery();
////            while (rs.next()) {
////                list.add(new ExamDTO(rs.getInt(sql), 
////                        rs.getString(sql),
////                        rs.getString(sql),
////                        rs.getDate(sql)));
////
////            }
////        } catch (Exception e) {
////            e.printStackTrace();
////        } finally {
////            conn.close();
////            ps.close();
////            rs.close();
////        }
////        return list;
////
////    }
//
//        
//}
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
import java.util.ArrayList;
import java.util.List;
/**
 * 
 *
 * @author nearl
 */

public class ExamDAO {
    private static final String ADD_EXAM = "INSERT INTO Exam(Id_Exam,  Name, Question, Date) VALUES (?,?,?,?)";
    
    private static final String DELETE_EXAM = "";// sua sau
    
    private static final String EDIT_EXAM = "UPDATE Exam SET Name = ?, Question = ?, Date = ? WHERE Id_Exam = ?"; // 
    
    private  static final String SEARCH_EXAM = "SELECT Id_Exam, Name, Question, Date FROM Exam WHERE Name like ?";
    
    private static final String GET_EXAM_ONES = "SELECT dbo.Exam.Id_Exam, Name, Date, Exam_Date, Hour, Subject, question, Id_Course, "
            + "dbo.Question.Id_Question, Question_URL, dbo.Answer.Answer, Status, Id_Answer FROM dbo.Exam, dbo.Question, dbo.Answer "
            + "WHERE dbo.Exam.Id_Course = ? AND dbo.Exam.Name = ? AND dbo.Exam.Id_Exam = dbo.Question.Id_Exam "
            + "AND  dbo.Exam.Id_Exam = dbo.Answer.Id_Exam AND dbo.Question.Id_Question = dbo.Answer.Id_Question";
    
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
//SELECT TOP (1000) [Id_Exam]
//      ,[Name]
//      ,[Exam_Date]
//      ,[Hour]
//      ,[question]
//      ,[Id_Course]
//  FROM [Code_Learn].[dbo].[Exam]
//    
//    public static List<ExamDTO> getExamOne(int id_course, String examName) throws SQLException, ClassNotFoundException{
//        List<ExamDTO> exams = new ArrayList<>();
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(GET_EXAM);
//            ptm.setInt(1, id_course);
//            ptm.setString(2, examName);
//            ResultSet rs = ptm.executeQuery();
//            while(rs != null && rs.next()){
//                int id_exam = rs.getInt("dbo.Exam.Id_Exam");
//                String name = rs.getString("Name");
//                Date date = rs.getDate("Date");
//                Date exam_date = rs.getDate("Exam_Date");
//                int hour = rs.getInt("Hour");
//                String subject = rs.getString("Subject");
//                String question = rs.getString("Question_URL");
//                int id_answer = rs.getInt("Id_Answer");
//                String answer = rs.getString("dbo.Answer.Answer");
//                int status = rs.getInt("Status");
//                int id_question = rs.getInt("dbo.Question.Id_Question");
//                String question_url = rs.getString("Question_URL");
//                exams.add(new ExamDTO(id_exam, name, date, exam_date, hour, subject, question, id_course, id_answer, answer, status, 
//                        id_question, question_url));
//            }
//            conn.close();
//            
//        }
//        return exams;
//    }
            //nt id_exam, String name, Date date, Date exam_date, int hour, String subject, String question, int id_course, 
//        int id_answer, int id_quesion, String answer, int status, int id_question, String question_url, String answwer
    
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
//    
//    public static int deleteExam(int id) throws ClassNotFoundException, SQLException{
//        int result = 0;
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(DELETE_EXAM);
//            ptm.setInt(1, id);
//            result = ptm.executeUpdate();
//            conn.close();
//        }
//        return result;
//    }
//    
//    public static int updateExam(ExamDTO exam) throws ClassNotFoundException, SQLException{
//        int result = 0;
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(EDIT_EXAM);
//            ptm.setString(1, exam.getName());
//            ptm.setString(2, exam.getQuestion());
//            ptm.setDate(3, exam.getDate());
//            ptm.setInt(4, exam.getId_exam());
//            result = ptm.executeUpdate();
//            conn.close();
//        }
//        return result;
//    }
//    
//    public static  List<ExamDTO> getListExam(String search) throws SQLException, ClassNotFoundException{
//        List<ExamDTO> list = null;
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(SEARCH_EXAM);
//            ResultSet rs = ptm.executeQuery();
//            while(rs != null && rs.next()){
//                
//                list.add(new ExamDTO());
//            }
//            conn.close();
//           
//        }
//        return list;
//    }
//    public ExamDTO SearchingExam(String Search) throws SQLException {
//
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//               conn = DBUtils.getConnection();
//               String sql = "SELECT * from dbo.exam where Name like ?  ";
//               ps = conn.prepareStatement(sql);
//               ps.setString(1, "%" + Search + "%");
//
//               rs = ps.executeQuery();
//               while (rs.next()) {
//                   return new ExamDTO(rs.getInt("Id_Exam"),
//                           rs.getString("Name"),
//                           rs.getString("Question"),
//                           rs.getDate("date"));
//
//               }
//           } catch (Exception e) {
//               e.printStackTrace();
//           } finally {
//               conn.close();
//               ps.close();
//               rs.close();
//           }
//           return null;
//
//    }
//       public int GetTotalExam() throws SQLException {
//
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//            conn = DBUtils.getConnection();
//            String sql = "SElect COUNT(*) from dbo.exam  ";
//            ps = conn.prepareStatement(sql);
//             rs = ps.executeQuery();
//            while (rs.next()) {
//                return rs.getInt(1);
//
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            conn.close();
//            ps.close();
//            rs.close();
//        }
//        return 0;
//
//    }
//
//    public List<ExamDTO> PagingExam(int Index) throws SQLException {
//        List<ExamDTO> list = new ArrayList<>();
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//            conn = DBUtils.getConnection();
//            String sql = "SElect COUNT(*) from dbo.exam"
//                    + "Order BY Id_Exam  "
//                    + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, (Index - 1) * 6);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new ExamDTO(rs.getInt(sql), 
//                        rs.getString(sql),
//                        rs.getString(sql),
//                        rs.getDate(sql)));
//
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            conn.close();
//            ps.close();
//            rs.close();
//        }
//        return list;
//
//    }

        
}
