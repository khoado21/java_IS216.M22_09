/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.LPhim;
import Model.Phim;
/**
 *
 * @author Phon
 */
public class Phim_ctrl {
    public static void HienThiPhim(String maphim,Model.LPhim lp, Model.Phim p){
        String sql ="select * from phim p join loaiphim lp on p.MALP = lp.MALP where p.maphim = ?";
        try {
            Connection con = JDBCConnection.getJDBCConnection();
            PreparedStatement pre= con.prepareStatement(sql);
            pre.setString(1, maphim);
            ResultSet rs = pre.executeQuery();
            
            while(rs.next()){
            p.setMaPhim(rs.getString(1));
            p.setTenPhim(rs.getString(3));
            p.setThoiLuong(rs.getInt(4));
            p.setQuocGia(rs.getString(5));
            lp.setTenLP(rs.getString(7));
            lp.setHinhThuc(rs.getString(8));
            
            }} catch (SQLException ex) {
            Logger.getLogger(Phim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
