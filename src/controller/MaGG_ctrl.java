/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.MaKhuyenMai;

/**
 *
 * @author PC
 */
public class MaGG_ctrl {
      //hàm lấy toàn bộ thông tin loại phim
    public List<MaKhuyenMai> getAllLMaGG(){
        List<MaKhuyenMai> khuyenMais;
        khuyenMais = new ArrayList<MaKhuyenMai>();
        
        Connection conn = JDBCConnection.getJDBCConnection();
        
        String sql = "SELECT * FROM KHUYENMAI";
        
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            
            ResultSet rs = prest.executeQuery();
            while(rs.next()){
                MaKhuyenMai km = new MaKhuyenMai();
                
                km.setMaKM(rs.getString("MaKm"));
                km.setTenKM(rs.getString("TenKM"));
                km.setTyLeKM(rs.getLong("TYLEKM"));
                khuyenMais.add(km);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return khuyenMais;
    }
    //hàm thêm loại phim
    public void ThemKM(MaKhuyenMai khuyenMai){
         Connection conn = JDBCConnection.getJDBCConnection();
         
         String sql = "Insert into KHUYENMAI (MaKM,TENKM,TYLEKM) Values(?,?,?)";
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            prest.setString(1, khuyenMai.getMaKM());
            prest.setString(2, khuyenMai.getTenKM());
            prest.setLong(3, khuyenMai.getTyLeKM());
            
            int rs = prest.executeUpdate();
            System.out.println(rs);
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    //hàm sửa loại phim
    public void SuaKM(MaKhuyenMai khuyenMai){
         Connection conn = JDBCConnection.getJDBCConnection();
         
         String sql = "Update KHUYENMAI Set TENKM = ? ,TYLEKM = ? where MaKM = ?";
         
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            
            prest.setLong(2, khuyenMai.getTyLeKM());
            prest.setString(1, khuyenMai.getTenKM());
            prest.setString(3, khuyenMai.getMaKM());
            
           int rs = prest.executeUpdate();
            System.out.println(rs);
            
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //hàm xoá loại phim
    public void XoaKM(String MaKM){
        Connection conn = JDBCConnection.getJDBCConnection();
         
        String sql = "Delete from KHUYENMAI where MaKM = ?";
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            prest.setString(1, MaKM);
            int rs = prest.executeUpdate();
            System.out.println(rs);
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
    public MaKhuyenMai getKM(String makm){
       
        Connection conn = JDBCConnection.getJDBCConnection();
        
        String sql = "SELECT * FROM KHUYENMAI WHERE MaKM = ?";
        
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            prest.setString(1, makm);
            ResultSet rs = prest.executeQuery();
            while(rs.next()){
                MaKhuyenMai km = new MaKhuyenMai();
                
                km.setMaKM(rs.getString("MaKm"));
                km.setTenKM(rs.getString("TenKM"));
                km.setTyLeKM(rs.getLong("TYLEKM"));
                
                return km;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
