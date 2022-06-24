/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import java.util.ArrayList;
import Model.LPhim;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class LPhim_ctrl {
    
    //hàm lấy toàn bộ thông tin loại phim
    public List<LPhim> getAllLPhim(){
        List<LPhim> LPhims;
        LPhims = new ArrayList<LPhim>();
        
        Connection conn = JDBCConnection.getJDBCConnection();
        
        String sql = "SELECT * FROM LOAIPHIM";
        
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            
            ResultSet rs = prest.executeQuery();
            while(rs.next()){
                LPhim lp = new LPhim();
                
                lp.setMaLP(rs.getString("MaLP"));
                lp.setTenLP(rs.getString("TenLP"));
                lp.setHinhThuc(rs.getString("HinhThuc"));
                LPhims.add(lp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return LPhims;
    }
    //hàm thêm loại phim
    public void ThemLP(LPhim lp){
         Connection conn = JDBCConnection.getJDBCConnection();
         
         String sql = "Insert into LOAIPHIM (MALP,TENLP,HINHTHUC) Values(?,?,?)";
         
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            prest.setString(1, lp.getMaLP());
            prest.setString(2, lp.getTenLP());
            prest.setString(3, lp.getHinhThuc());
            
            int rs = prest.executeUpdate();
            System.out.println(rs);
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    //hàm sửa loại phim
    public void SuaLP(LPhim lp) throws SQLException{
         Connection conn = JDBCConnection.getJDBCConnection();
         
         String sql = "Update LOAIPHIM Set TENLP = ? ,HINHTHUC = ? where MALP = ?";
         conn.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            
            prest.setString(1, lp.getTenLP());
            prest.setString(2, lp.getHinhThuc());
            prest.setString(3, lp.getMaLP());
            
           int rs = prest.executeUpdate();
            System.out.println(rs);
            
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //hàm xoá loại phim
    public void XoaLP(String MaLP){
        Connection conn = JDBCConnection.getJDBCConnection();
         
        String sql = "Delete from LoaiPhim where MaLP = ?";
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            prest.setString(1, MaLP);
            int rs = prest.executeUpdate();
            System.out.println(rs);
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
    public LPhim getLP(String malp){
       
        Connection conn = JDBCConnection.getJDBCConnection();
        
        String sql = "SELECT * FROM LOAIPHIM WHERE MALP = ?";
        
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            prest.setString(1, malp);
            ResultSet rs = prest.executeQuery();
            while(rs.next()){
                LPhim lp = new LPhim();
                
                lp.setMaLP(rs.getString("MaLP"));
                lp.setTenLP(rs.getString("TenLP"));
                lp.setHinhThuc(rs.getString("HinhThuc"));
                
                return lp;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}

