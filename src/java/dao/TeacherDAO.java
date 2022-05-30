/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.TeacherDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nearl
 */
public class TeacherDAO {

    private static final String LOGIN = "SELECT Id_Teacher, Username, Password, Name, Phone_Num, Information FROM Teacher "
            + "WHERE Username = ? AND Password = ?";

    public static TeacherDTO getAccount(String teachername, String password) throws ClassNotFoundException, SQLException {
        TeacherDTO acc = null;
        Connection conn = DBUtils.getConnection();
        if (conn != null) {
            PreparedStatement ptm = conn.prepareStatement(LOGIN);
            ptm.setString(1, teachername);
            ptm.setString(2, password);
            ResultSet rs = ptm.executeQuery();
            if (rs != null && rs.next()) {
                int id_teacher = rs.getInt("Id_Teacher");
                String name = rs.getString("Name");
                String phone_num = rs.getString("Phone_Num");
                String information = rs.getString("Information");
                acc = new TeacherDTO(id_teacher, teachername, password, name, phone_num, information);
            }
            conn.close();
        }
        return acc;
    }
}
