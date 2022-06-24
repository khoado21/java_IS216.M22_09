/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import Model.NhanVien;
import Model.TaiKhoan;
import java.sql.*;

/**
 *
 * @author PC
 */
public class TaiKhoan_ctrl {
    public boolean Login (String username, String password){
        String query = "select * from TaiKhoan where TenTK = '"+username+"' and Password = '"+password+"'";
        Connection conn = JDBCConnection.getJDBCConnection();
        try{
            
            PreparedStatement pst = conn.prepareStatement(query);
            ResultSet rs = pst.executeQuery(query);
            if (rs.next())
                return true;
            else return false;
        }
        catch(SQLException e){
            e.printStackTrace();
            return false;
        }
    }
    public String getThongTinDangNhap(String username){
        String MaNV = "";
        String query = "select manv from (select manv from nhanvien) nv join (select manguoidung, tentk from taikhoan where tentk = ?) tk on nv.manv=tk.manguoidung";
        Connection conn = JDBCConnection.getJDBCConnection();
        try{   
            PreparedStatement smt = conn.prepareStatement(query);
            smt.setString(1, username);
            ResultSet rs = smt.executeQuery();
            while(rs.next()){
                MaNV = rs.getString(1);
            }
           
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return MaNV;
    }
     public boolean addTaiKhoan(Model.TaiKhoan t){

        String query = "INSERT INTO TAIKHOAN VALUES(?,?,?,?,?)";
        Connection conn = JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement pt = conn.prepareStatement(query);
            pt.setString(1,t.getMatK());
            
            pt.setString(2,t.getMaNguoiDung());
            pt.setString(3,t.getTenTK());
            pt.setString(4,  t.getPassword());
            pt.setString(5,t.getLoaiTK());
           
            return pt.executeUpdate() >0;
           
        } catch (Exception e) {
            e.printStackTrace();
        }finally{try {
                conn.close();
            } catch (Exception e) {
            }}
        return false;

    }
     public static  void showtaikhoan (String manv,NhanVien nv, TaiKhoan tk){
       
         String query = "select TK.MATK,TK.TENTK,NV.HOTENNV,NV.GIOITINH,NV.NGAYSINH,NV.DIACHI,NV.SDT  from taikhoan tk join nhanvien nv on tk.manguoidung = nv.manv where manv = ? ";
         Connection conn = JDBCConnection.getJDBCConnection();
          try {
           PreparedStatement pre = conn.prepareStatement(query);
           pre.setString(1, manv);
           ResultSet rs = pre.executeQuery();
           while(rs.next())
           {
               tk.setMatK(rs.getString(1));
               tk.setTenTK(rs.getString(2));
               nv.setHoTenNV(rs.getString(3));
               nv.setGioiTinh(rs.getString(4));
               nv.setNgaySinh(rs.getString(5));
               nv.setDiaChi(rs.getString(6));
               nv.setSDT(rs.getString(7));
           }
           
           
        } catch (Exception e) {
            e.printStackTrace();}
     finally{try {
                conn.close();
            } catch (Exception e) {
            }}}
     public static void DoiMatKhau(String matkhaumoi, String manguoidung) throws SQLException{
         String sql = "Update TAIKHOAN SET PASSWORD = ? WHERE MANGUOIDUNG = ? ";
         Connection conn = JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, matkhaumoi);
            pre.setString(2, manguoidung);
            pre.executeUpdate();
            JOptionPane.showMessageDialog(null, "Đổi mật khẩu thành công");
    
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoan_ctrl.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Đổi mật khẩu thất bại");
        }finally{
            conn.close();
        }
         
     }
     public static String MatKhauCu(String manguoidung){
         String sql = "Select password from TAIKHOAN where MaNguoiDung = ?";
         Connection conn = JDBCConnection.getJDBCConnection();
         String mk = null;
         try {
         
         PreparedStatement pre = conn.prepareStatement(sql);
         pre.setString(1, manguoidung);
         ResultSet rs = pre.executeQuery();
         while(rs.next())
         {
             mk= rs.getString(1);
         }
           
         } catch (Exception e) {
         }
         return mk;
     }
    public static void XoaTaiKhoan(String MaTK) throws SQLException{
        Connection conn = JDBCConnection.getJDBCConnection();
        try {
     
        String sql = "Delete from TAIKHOAN WHERE MATK = ?";
        
        PreparedStatement pre= conn.prepareStatement(sql);
        pre.setString(1, MaTK);
        pre.executeUpdate() ;
        int tmp = pre.executeUpdate();
        
               
        } catch (Exception e) {
         
        }finally{
            conn.close();
        }
    }
    public static String LoaiTaiKhoan(String username){
        String sql = "select loaitk from taikhoan where tentk = ?";
        String  loaitk = null;
        Connection conn = JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement pre =conn.prepareStatement(sql);
            pre.setString(1, username);
            ResultSet rs =  pre.executeQuery();
            while (rs.next())
            {
                loaitk = rs.getString(1);
            }
            return loaitk;
        } catch (Exception e) {
            return null;
        }
    }
   
    
         
}
