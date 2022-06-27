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
        public MarkReportDTO SearchingReport(String Search) throws SQLException {

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
