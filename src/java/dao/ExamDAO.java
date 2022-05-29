/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.ExamDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author nearl
 */
public class ExamDAO {
    private static final String ADD_EXAM = "INSERT INTO Exam(Id_Exam,  Name, Question, Date) VALUES (?,?,?,?)";
    
    private static final String DELETE_EXAM = "";// sua sau
    
    private static final String EDIT_EXAM = "UPDATE Exam SET Name = ?, Question = ?, Date = ? WHERE Id_Exam = ?"; // 
    
    private  static final String SEARCH_EXAM = "SELECT Id_Exam, Name, Question, Date FROM Exam WHERE Name like ?";
    
    public static int addNewExam(ExamDTO exam) throws ClassNotFoundException, SQLException{
        int result = 0;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(ADD_EXAM);
            ptm.setString(1, exam.getName());
            ptm.setString(2, exam.getQuestion());
            ptm.setDate(3, exam.getDate());
            result = ptm.executeUpdate();
            conn.close();
        }     
        return result;
    }
    
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
    
    public static int updateExam(ExamDTO exam) throws ClassNotFoundException, SQLException{
        int result = 0;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(EDIT_EXAM);
            ptm.setString(1, exam.getName());
            ptm.setString(2, exam.getQuestion());
            ptm.setDate(3, exam.getDate());
            ptm.setInt(4, exam.getId_Exam());
            result = ptm.executeUpdate();
            conn.close();
        }
        return result;
    }
    
    public static  List<ExamDTO> getListExam(String search) throws SQLException, ClassNotFoundException{
        List<ExamDTO> list = null;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(SEARCH_EXAM);
            ResultSet rs = ptm.executeQuery();
            while(rs != null && rs.next()){
                
                list.add(new ExamDTO());
            }
            conn.close();
           
        }
        return list;
    }
    

        
}
