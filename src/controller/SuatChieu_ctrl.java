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
import Model.SuatChieu1;

/**
 *
 * @author PC
 */
public class SuatChieu_ctrl {
      public List<SuatChieu1> getAllLSuatChieu(){
        List<SuatChieu1> suatChieus;
        suatChieus = new ArrayList<SuatChieu1>();
        
        Connection conn = JDBCConnection.getJDBCConnection();
        
        String sql = "SELECT * FROM SuatChieu order by MaSC asc ";
      
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            //prest.setString(1, sc.getMaSC());
            ResultSet rs = prest.executeQuery();
            while(rs.next()){
                SuatChieu1 sc = new SuatChieu1();
                
                sc.setMaPhim(rs.getString("MaPhim"));
                sc.setMaRap(rs.getString("MaRap"));
                sc.setMaSC(rs.getString("MaSC"));
                sc.setNgayChieu(rs.getDate("NGAYCHIEU"));
                sc.setThoiGianChieu(rs.getString("THOIGIANCHIEU"));
                suatChieus.add(sc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SuatChieu_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return suatChieus;
    }
    //hàm thêm loại phim
    public boolean ThemSC(SuatChieu1 sc){
         Connection conn = JDBCConnection.getJDBCConnection();
         
         String sql = "insert into SUATCHIEU(MASC,MARAP,MAPHIM,NGAYCHIEU,THOIGIANCHIEU) values(?,?,?,?,?) ";
         
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            prest.setString(1, sc.getMaSC());
            prest.setString(2, sc.getMaRap());
            prest.setString(3, sc.getMaPhim());
            prest.setDate(4, sc.getNgayChieu());
            prest.setString(5, sc.getThoiGianChieu());
            int rs = prest.executeUpdate();
            
            System.out.println("Dsadsadsad"+rs);
           // conn.close();
            return rs >0;
        } catch (Exception e) {
              e.printStackTrace();
        }
        return false;
    }
    //hàm sửa loại phim
    public boolean SuaSC(SuatChieu1 sc){
         Connection conn = JDBCConnection.getJDBCConnection();
         
         String sql = "Update SuatChieu Set  MARAP= ? ,MAPHIM    = ?,NGAYCHIEU = ?,THOIGIANCHIEU = ? where MASC = ?";
         
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            
            prest.setString(1, sc.getMaRap());
            prest.setString(2, sc.getMaPhim());
            prest.setDate(3, sc.getNgayChieu());
            prest.setString(4, sc.getThoiGianChieu());
            prest.setString(5, sc.getMaSC());
            
           int rs = prest.executeUpdate();
            System.out.println(rs);
             if (rs>0) {
                return true;
            }
            else return false;
        } catch (SQLException ex) {
            Logger.getLogger(SuatChieu_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    //hàm xoá loại phim
    public void XoaSC(String MaSC){
        Connection conn = JDBCConnection.getJDBCConnection();
         
        String sql = "Delete from SuatChieu where MaSC = ?";
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            prest.setString(1, MaSC);
            int rs = prest.executeUpdate();
            System.out.println(rs);
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(SuatChieu_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
    public SuatChieu1 getSC(String masc){
       
        Connection conn = JDBCConnection.getJDBCConnection();
        
        String sql = "SELECT * FROM SuatChieu WHERE MaSC = ?";
        
        try {
            PreparedStatement prest = conn.prepareStatement(sql);
            prest.setString(1, masc);
            ResultSet rs = prest.executeQuery();
            while(rs.next()){
                SuatChieu1 sc = new SuatChieu1();
                
                sc.setMaSC(rs.getString("MASC"));
                sc.setMaRap(rs.getString("MARAP"));
                sc.setMaPhim(rs.getString("MAPHIM"));
                sc.setNgayChieu(rs.getDate("NGAYCHIEU"));
                sc.setThoiGianChieu(rs.getString("THOIGIANCHIEU"));
                
                return sc;
            }
        } catch (SQLException ex) {
            Logger.getLogger(SuatChieu_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
