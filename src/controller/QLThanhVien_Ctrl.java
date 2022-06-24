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
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
//import model.ThanhVien;
import static oracle.sql.NUMBER.e;
import Model.ThanhVien1;

/**
 *
 * @author PC
 */
public class QLThanhVien_Ctrl {
    Connection con = JDBCConnection.getJDBCConnection();
   public List<ThanhVien1> getAllTV(){
       List<ThanhVien1> tvs ;
       tvs= new ArrayList<ThanhVien1>() ;
       Connection con = JDBCConnection.getJDBCConnection();
       String sql = " select * from thanhvien";
       try{
   
           PreparedStatement pre = con.prepareStatement(sql);
           
           ResultSet rs = pre.executeQuery();
           while (rs.next()){
               ThanhVien1 tv = new ThanhVien1();
                tv.setMaTV(rs.getString("MATV"));
                tv.setTenTV(rs.getString("TENTV"));
                tv.setGioiTinh(rs.getString("GIOITINH"));
                tv.setNgaySinh(rs.getDate("NGAYSINH"));
                tv.setDiaChi(rs.getString("DIACHI"));
                tv.setSDT(rs.getString("SDT"));
                tv.setCMND(rs.getString("CMND"));
                tv.setNgayDK(rs.getDate("NGAYDANGKY"));
                tv.setDiemTichLuy(rs.getLong("DIEMTICHLUY"));
                
                tvs.add(tv);
           }
       }catch(SQLException ex){
           Logger.getLogger(LPhim_ctrl.class.getName()).log(Level.SEVERE, null, ex);
       }
       return tvs;
   }
   public boolean ThemThanhVien(ThanhVien1 t){
      String query = " insert into ThanhVien(MATV,TENTV,GIOITINH,NGAYSINH,DIACHI,SDT,CMND,NGAYDANGKY,DIEMTICHLUY) values (?,?,?,?,?,?,?,?,?) ";
      
      try{
          PreparedStatement pre = con.prepareStatement(query);
           pre.setString(1,t.getMaTV());
            
            pre.setString(2,t.getTenTV());
            pre.setString(3,t.getGioiTinh());
            pre.setDate(4,t.getNgaySinh());
            pre.setString(5,t.getDiaChi());
            pre.setString(6,t.getSDT());
            pre.setString(7,t.getCMND());
            pre.setDate(8,t.getNgayDK());
            pre.setLong(9, t.getDiemTichLuy());
            
            return pre.executeUpdate() >0;
            
      }catch(Exception e){
           e.printStackTrace();
      }
      return false;
   }
     public boolean XoaTV(String matv){
        String sql = "DELETE FROM THANHVIEN WHERE MATV =?";
          try {
            
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1,matv);
            int tmp = pre.executeUpdate();
              if (tmp>0) {
                  return true;
              }
              else return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean CapNhatTV(ThanhVien1 tv) throws SQLException{
        
        String query = "UPDATE THANHVIEN SET TENTV =?,GIOITINH = ?, NGAYSINH= ?,DIACHI= ? "
                       +",SDT= ? ,CMND= ? ,NGAYDANGKY= ?, DIEMTICHLUY= ? WHERE MATV = ?";
        con.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
        try {
            PreparedStatement pt = con.prepareStatement(query);
            pt.setString(1,tv.getTenTV());
            pt.setString(2, tv.getGioiTinh());
            pt.setDate(3, tv.getNgaySinh());
            pt.setString(4, tv.getDiaChi());
            pt.setString(5, tv.getSDT());
            pt.setString(6, tv.getCMND());
            pt.setDate(7, tv.getNgayDK());
            pt.setLong(8, tv.getDiemTichLuy());
            pt.setString(9, tv.getMaTV());
            int tmp = pt.executeUpdate();
            con.close();
            if (tmp>0) {
                return true;
            }
            else return false;
        }
        catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
      public boolean isThanhVien(String MaTV){
        String query = "select *\n" +
                       "from thanhvien\n" +
                       "where matv ='"+MaTV+"'";
        try {
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery(query);
        if (rs.next()){
            return true;
        }
        else return false;
        }
        catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
    public int getDiemTichLuy(String MaTV){
        int DTL = 0;
        String query = "select DiemTichLuy\n" +
                       "from thanhvien\n" +
                       "where matv ='"+MaTV+"'";
        try {
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery(query);
        if (rs.next())
            DTL = rs.getInt(1);
        con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return DTL;
    }
}
