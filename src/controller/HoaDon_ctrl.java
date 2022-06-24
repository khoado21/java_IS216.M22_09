/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

//import static Controller.Oracle.con;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import Model.HoaDon;
import java.sql.*;
import Model.KhuyenMai;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
public class HoaDon_ctrl  {
    public int TaoHoaDon(String MANV, String MATV,float TONGTIEN,String MAKM, long DTL){
        String f_create_hoadon = "{? = call F_CREATE_HOADON_DATVE(?,?,?,?,?)}";
        Connection con = JDBCConnection.getJDBCConnection();
        int sohd =0;
        try{
            CallableStatement smt = con.prepareCall(f_create_hoadon);
            smt.registerOutParameter(1, Types.NUMERIC);
            smt.setString(2,MANV);
            smt.setString(3,MATV);
            smt.setFloat(4,TONGTIEN);
            smt.setString(5,MAKM);
            smt.setLong(6,DTL);
            smt.executeUpdate();
            sohd = smt.getInt(1);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return sohd;
    }
         public static ArrayList<HoaDon> getAllHoaDon(){
        ArrayList<HoaDon> kmList = new ArrayList<>();
        String sql = "SELECT * FROM HOADON";
        Connection con= JDBCConnection.getJDBCConnection();
        try {
            
            PreparedStatement pt = con.prepareStatement(sql);
            ResultSet rss = pt.executeQuery();
            
            while(rss.next()){
               
                int sohd = rss.getInt(1);
                String manv  = rss.getString(2);
                String matv  = rss.getString(3);
                String ngayhd  = rss.getString(4);
                long tongtien  = rss.getLong(5);
                String makm  = rss.getString(6);
                int dtl  = rss.getInt(7);
         
             
                
                kmList.add(new HoaDon(manv, matv, ngayhd, sohd, tongtien, dtl, makm));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{try {
                con.close();
            } catch (Exception e) {
            }}
        return kmList;
        
        
    }
         //thêm hàm này
    public static HoaDon getHoaDon(String sohd){
        Connection con = JDBCConnection.getJDBCConnection();
        
        String sql = "SELECT * FROM HOADON WHERE SOHD = ?";
        
        try {
            PreparedStatement prest = con.prepareStatement(sql);
            prest.setString(1, sohd);
            ResultSet rs = prest.executeQuery();
            while(rs.next()){
                HoaDon hd = new HoaDon();
                
                hd.setSoHD(rs.getInt("SOHD"));
                hd.setMaNV(rs.getString("MaNV"));
                hd.setMaTV(rs.getString("MaTV"));
                hd.setMaKM(rs.getString("MaKM"));
                hd.setTongTien(rs.getLong("TongTien"));
                hd.setNgayHD(rs.getString("NgayHD"));
                hd.setDtl(rs.getInt("DTL"));
                
                return hd;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
         
         public void hoadontheothang() throws SQLException
         {
             
             
             
         }
         
         
}
