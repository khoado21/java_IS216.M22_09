/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.sql.PreparedStatement;
import java.sql.*;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import javax.swing.JOptionPane;
import Model.ThanhVien;
/**
 *
 * @author PC
 */
public class ThanhVien_ctrl {
   
     public boolean addThanhVien(ThanhVien t){
//        String  ngay = ""
        String query = "INSERT INTO THANHVIEN VALUES(?,?,?,to_date(?,'dd-mm-yyyy'),?,?,?,to_date(?,'dd-mm-yyyy'),?)";
        //String q = "insert into thanhvien(hoten,masv,ngsinh) values(?,?,to_date(....))
        Connection con= JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement pt = con.prepareStatement(query);
            pt.setString(1,t.getMaTV());
            pt.setString(2,t.getTenTV());
            pt.setString(3,t.getGioiTinh());
            pt.setString(4,  t.getNgaySinh());
            pt.setString(5,t.getDiaChi());
            pt.setString(6,t.getSDT());
            pt.setString(7,t.getCMND());
            pt.setString(8,  t.getNgayDangKy());
            pt.setInt(9, t.getDiemTichLuy());
            
            return pt.executeUpdate() >0;
           
        } catch (Exception e) {
            e.printStackTrace();
        }finally{try {
                con.close();
            } catch (Exception e) {
            }}
        return false;

    }
    
   public static ArrayList<ThanhVien> getAllMember(){
        ArrayList<ThanhVien> memberList = new ArrayList<>();
        String sql = "SELECT * FROM THANHVIEN";
        Connection con= JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement pt = con.prepareStatement(sql);
            ResultSet rss = pt.executeQuery();
            
            while(rss.next()){
               
                String mtv = rss.getString(1);
                
                String tentv = rss.getString(2);
                String gt = rss.getString(3);
                String ngsinh = rss.getString(4);
                String dchi = rss.getString(5);
                String dth = rss.getString(6);
                String cm = rss.getString(7);
                String ngdk = rss.getString(8);
                int dtl = rss.getInt(9);
              
               
               
              
               
                
                
                memberList.add(new ThanhVien(mtv, tentv, gt, ngsinh, dchi, dth, cm, ngdk, dtl));
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{try {
                con.close();
            } catch (Exception e) {
            }}
        return memberList;
        
        
    }
    public boolean XoaTV(ThanhVien tv){
        String sql = "DELETE FROM THANHVIEN WHERE MATV =?";
        Connection con= JDBCConnection.getJDBCConnection();
          try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1,tv.getMaTV());
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
    public boolean CapNhatTV(ThanhVien tv){
        String query = "UPDATE THANHVIEN SET TENTV =?,GIOITINH = ?, NGAYSINH= to_date(?,'dd-mm-yyyy'),DIACHI= ? "
                       +",SDT= ? ,CMND= ? ,NGAYDANGKY= to_date(?,'dd-mm-yyyy'), DIEMTICHLUY= ? WHERE MATV = ?";
        Connection con= JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement pt = con.prepareStatement(query);
            pt.setString(1,tv.getTenTV());
            pt.setString(2, tv.getGioiTinh());
            pt.setString(3, tv.getNgaySinh());
            pt.setString(4, tv.getDiaChi());
            pt.setString(5, tv.getSDT());
            pt.setString(6, tv.getCMND());
            pt.setString(7, tv.getNgayDangKy());
            pt.setInt(8, tv.getDiemTichLuy());
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
        Connection con= JDBCConnection.getJDBCConnection();
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
        Connection con= JDBCConnection.getJDBCConnection();
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
