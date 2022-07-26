/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.AnswerDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nea
 */
public class AnswerDAO {
    private static final String GET_ANSWER = "SELECT Id_Answer, Id_Exam, Id_Question, Answer, Status FROM dbo.Answer WHERE Id_Exam = ? AND Id_Question = ?";
//    private static final String GET_RESULT = "";
//    public static List<AnswerDTO> getResult(int id_exam, int id_question, String answer) throws ClassNotFoundException, SQLException{
//        List<AnswerDTO> result = new ArrayList<>();
//        Connection conn = DBUtils.getConnection();
//        if(conn != null){
//            PreparedStatement ptm = conn.prepareStatement(GET_RESULT);
//            ptm.setInt(1, id_exam);
//            ptm.setInt(2,id_question);
//            ptm.setString(3, answer);
//            ResultSet rs = ptm.executeQuery();
//            while(rs != null && rs.next()){
//                int id_answer = rs.getInt("Id_Exam");
//                int status = rs.getInt("Status");
//                result.add(new AnswerDTO(id_answer, id_exam, id_question, answer, status));
//            }
//            conn.close();
//        }
//        return result;
//    }
    public static List<AnswerDTO> getAnswers(int id_exam, int id_question) throws ClassNotFoundException, SQLException{
        List<AnswerDTO> answer = new ArrayList<>();
        Connection conn = DBUtils.getConnection();
        if(conn!=null){
            PreparedStatement ptm = conn.prepareStatement(GET_ANSWER);
            ptm.setInt(1, id_exam);
            ptm.setInt(2, id_question);
            ResultSet rs = ptm.executeQuery();
            while(rs!=null && rs.next()){
                int id_answer = rs.getInt("Id_Exam");
                String anw = rs.getString("Answer");
                int status = rs.getInt("Status");
                answer.add(new AnswerDTO(id_answer, id_exam, id_question, anw, status));
                
            }
            conn.close();
        }
        return answer;
    }

}
//[Id_Answer]
//      ,[Id_Exam]
//      ,[Id_Question]
//      ,[Answer]
//      ,[Status]