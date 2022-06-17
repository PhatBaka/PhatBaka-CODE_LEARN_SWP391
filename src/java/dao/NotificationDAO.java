/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
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
     public List<StudentDTO> GetAllNotificationForStudent() throws SQLException {
         List<StudentDTO> li = new ArrayList<>();
         Connection conn = null;
         PreparedStatement ps = null;
         ResultSet rs = null;
         try {
             conn = DBUtils.getConnection();
             String sql = "SELECT notification from dbo.Student";
             ps = conn.prepareStatement(sql);

             rs = ps.executeQuery();
             while (rs.next()) {
                 li.add(new StudentDTO(rs.getInt("Id_Student"),
                         rs.getString("Username"),
                         rs.getString("Password"),
                         rs.getString("Notification")));

             }
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
             conn.close();
             ps.close();
             rs.close();
         }
         return li;

    }
}
