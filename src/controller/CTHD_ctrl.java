/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author PC
 */
public class CTHD_ctrl {
    public boolean Tao_CTHD(String MASP, int SOHD, int SOLUONG, float THANHTIEN){
        String query = "insert into CTHD values (?,?,?,?)";
        try{
            Connection con= JDBCConnection.getJDBCConnection();
            PreparedStatement pre = con.prepareStatement(query);
            pre.setString(1,MASP);
            pre.setInt(2,SOHD);
            pre.setInt(3,SOLUONG);
            pre.setFloat(4,THANHTIEN);
            int i = pre.executeUpdate();
            if (i==1) {
                return true;
            }
            else return false;
        }
        catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
