/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.QuestionDTO;
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
public class QuestionDAO {
    private static final String GET_QUESTION = "SELECT dbo.question.Id_Question, dbo.question.Question_URL, dbo.question.Id_Exam, dbo.Question.Answer "
            + "FROM dbo.Question WHERE dbo.Question.Id_Exam = ?";
    public static List<QuestionDTO> getQuestion(int id_exam) throws ClassNotFoundException, SQLException{
        List<QuestionDTO> question = new ArrayList<>();
        Connection conn = DBUtils.getConnection();
        if(conn != null){
            PreparedStatement ptm = conn.prepareStatement(GET_QUESTION);
            ptm.setInt(1, id_exam);
            ResultSet rs = ptm.executeQuery();
            while(rs != null && rs.next()){
                
                int id_question = rs.getInt("Id_Question");
                String question_url = rs.getString("Question_URL");
                String answer = rs.getString("Answer");
                
                question.add(new QuestionDTO(id_question, question_url, id_exam, answer));
                
            }
            conn.close();
        }
        return question;
    }
}
//[Id_Question]
//      ,[Question_URL]
//      ,[Id_Exam]
//      ,[Answer]