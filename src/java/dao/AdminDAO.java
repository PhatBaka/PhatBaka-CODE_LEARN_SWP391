/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBtills.DBUtils;
import dto.AdminDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nearl
 */
public class AdminDAO {

    private static final String LOGIN = "SELECT ID_Admin, AdminName, Password, Notification FROM Admin "
            + "WHERE AdminName = ?  AND Password  = ?";

    public static AdminDTO getAccount(String adminname, String password) throws ClassNotFoundException, SQLException {
        AdminDTO acc = null;
        Connection conn = DBUtils.getConnection();
        if (conn != null) {
            PreparedStatement ptm = conn.prepareStatement(LOGIN);
            ptm.setString(1,adminname);
            ptm.setString(2,password);
            ResultSet rs = ptm.executeQuery();
            if (rs != null && rs.next()) {
                int id_admin = rs.getInt("ID_Admin");
                String notification = rs.getString("Notification");
                acc = new AdminDTO(id_admin, adminname, password, notification);
            }
            conn.close();
        }
        return acc;
    }

    public AdminDTO SearchingAdmin(String Search) throws SQLException {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "SELECT * from dbo.admin where Name like ?  ";
            ps = conn.prepareStatement(sql);
            ps.setString(1, "'%" + Search + "%'");

            rs = ps.executeQuery();
            while (rs.next()) {
                return new AdminDTO(rs.getInt("Id_Admin"),
                        rs.getString("AdminName"),
                        rs.getString("Password"),
                        rs.getString("Notification"));

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
    
       public boolean checkLogin(String username, String password) throws SQLException {
       Connection conn = null;
       PreparedStatement stm = null;
       String sql = "select Id_Admin from dbo.Admin where AdminName = ? and Password = ?";
       try {
           conn = DBUtils.getConnection();
           if (conn != null) {
               stm = conn.prepareStatement(sql);
               stm.setString(1, username);
               stm.setString(2, password);
               int effectedRows = stm.executeUpdate();
               if (effectedRows>0){
                   return true;
               }
           }
       } catch (Exception ex) {
           ex.printStackTrace();
       } finally {
           if (conn != null){
               conn.close();
           }
           if (stm != null) {
               stm.close();
           }
        }
       return false;
   }
}
