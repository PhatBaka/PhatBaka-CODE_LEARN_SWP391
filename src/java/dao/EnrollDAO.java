/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.EnrollDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Nea
 */
public class EnrollDAO {
//[Id_Enroll]
//      ,[Id_Course]
//      ,[Id_Student]
//      ,[Exam_Stats]
    private static final String GET_ENROLL = "SELECT Id_Enroll, Id_Course, Id_Student, Exam_Stats FROM dbo.Enroll WHERE Id_Student = ? AND Id_Course = ?";
    private static final String UPDATE_ENROLL = "UPDATE Enroll SET Exam_Stats = 1 WHERE Id_Course = ? AND Id_Student = ?";
    public static int updateEnroll(EnrollDTO enroll) throws ClassNotFoundException, SQLException{
        int result = 0;
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(UPDATE_ENROLL);
            ptm.setInt(1, enroll.getId_course());
            ptm.setInt(2, enroll.getId_student());
            result = ptm.executeUpdate();
            conn.close();
        }
        return result;
    }
    public static EnrollDTO getEnroll(int id_student, int id_course) throws ClassNotFoundException, SQLException{
        EnrollDTO enroll = null;
         
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(GET_ENROLL);
            ptm.setInt(1, id_student);
            ptm.setInt(2, id_course);
            ResultSet rs = ptm.executeQuery();
            if(rs != null && rs.next()){
                
                enroll = new EnrollDTO(rs.getInt("Id_Enroll"), id_course, id_student,  rs.getInt("Exam_Stats"));
            }
            conn.close();
            
        }
        return enroll;
        
    }
}
