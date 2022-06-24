/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import controller.*;
import Model.DoiTuongNhanVien;
import java.sql.*;
import java.util.*;


/**
 *
 * @author Admin
 */
public class NhanvienOracle {
    
    public ArrayList<DoiTuongNhanVien>hienThiNhanVien()
    {
        ArrayList<DoiTuongNhanVien> dsnhanvien = new ArrayList<>();
            try {
                
                //Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orclpdb","DOAN","Benten2001");
                Connection con= JDBCConnection.getJDBCConnection();
                String sql ="select * from nhanvien";
                PreparedStatement pst = con.prepareStatement(sql);
                ResultSet rs = pst.executeQuery();
                while(rs.next())
                {
                      DoiTuongNhanVien nv = new DoiTuongNhanVien();
                      nv.setMaNV(rs.getString("manv"));
                      nv.setMaNQL(rs.getString("manql"));
                      nv.setMaTK(rs.getString("matk"));
                      nv.setHoTenNV(rs.getString("hotennv"));
                      nv.setGioiTinh(rs.getString("gioitinh"));
                      nv.setNgaySinh(rs.getString("ngaysinh"));
                      nv.setSDT(rs.getString("sdt"));
                      nv.setDiaChi(rs.getString("diachi"));
                      nv.setNgayVL(rs.getString("ngayvaolam"));
                      nv.setChucVu(rs.getString("chucvu"));
                      nv.setLuong(rs.getInt("luong"));
                      dsnhanvien.add(nv);
                
                }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
            return dsnhanvien;
    }
    
    public static boolean themNhanvien(DoiTuongNhanVien nv)
    {
        
        try {
            //Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orclpdb","DOAN","Benten2001");
            Connection con= JDBCConnection.getJDBCConnection();
            String sql ="INSERT INTO NHANVIEN VALUES(?,?,?,?,?,to_date(?,'dd-mm-yyyy'),?,?,?,to_date(?,'dd-mm-yyyy'),?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,nv.getMaNV());
            pst.setString(2,nv.getMaNQL());
            pst.setString(3,nv.getMaTK());
            pst.setString(4,nv.getHoTenNV());
            pst.setString(5,nv.getGioiTinh());
            pst.setString(6,nv.getNgaySinh());
            pst.setString(7,nv.getDiaChi());
            pst.setString(8,nv.getSDT());
            pst.setLong(9, nv.getLuong());
            pst.setString(10,nv.getNgayVL());
            pst.setString(11,nv.getChucVu());
            
           
          return pst.executeUpdate() >0;
               
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    return false;
    }
    
 public static boolean xoaNhanVien(DoiTuongNhanVien nv)
    {
        
        try {
            //Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orclpdb","DOAN","Benten2001");
            Connection con= JDBCConnection.getJDBCConnection();
            String sql ="delete from nhanvien where manv=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,nv.getMaNV());
           
            
           
          return pst.executeUpdate() >0;
               
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    return false;
    
    }
 
 public static boolean capNhatNhanVien(DoiTuongNhanVien nv)
 {
        try {
            //Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orclpdb","DOAN","Benten2001");
            Connection con= JDBCConnection.getJDBCConnection();
           String sql = "UPDATE NHANVIEN SET MANQL = ?,MATK = ? ,HOTENNV =?,GIOITINH = ?, NGAYSINH= to_date(?,'dd-mm-yyyy'),DIACHI= ? "
                       +",SDT= ? ,LUONG= ? ,NGAYVAOLAM= to_date(?,'dd-mm-yyyy'), CHUCVU= ? WHERE MANV = ?";
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1,nv.getMaNQL());
            pst.setString(2, nv.getMaTK());
            pst.setString(3, nv.getHoTenNV());
            pst.setString(4, nv.getGioiTinh());
            pst.setString(5, nv.getNgaySinh());
            pst.setString(6, nv.getDiaChi());
            pst.setString(7, nv.getSDT());
            pst.setLong(8, nv.getLuong());
            pst.setString(9, nv.getNgayVL());
            pst.setString(10, nv.getChucVu());
            pst.setString(11, nv.getMaNV());
           
            
           
          return pst.executeUpdate() >0;
               
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    return false;
        
    
 }
 
 
 public ArrayList<DoiTuongNhanVien>searchdanhsach(String giatri)
 {
     ArrayList<DoiTuongNhanVien> dsnhanvien = new ArrayList<DoiTuongNhanVien>();
     try{
            //Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orclpdb","DOAN","Benten2001");    
            Connection con= JDBCConnection.getJDBCConnection();
            String sql = "SELECT * FROM nhanvien WHERE manql || manv || matk || hotennv || gioitinh || ngaysinh || diachi || sdt || luong || ngayvaolam|| chucvu LIKE '%"+giatri+"%'";
            PreparedStatement pst = con.prepareCall(sql);
            ResultSet  rs = pst.executeQuery(sql);
            
            
            
            while(rs.next())
                {
                      DoiTuongNhanVien nv = new DoiTuongNhanVien();
                      nv.setMaNV(rs.getString("manv"));
                      nv.setMaNQL(rs.getString("manql"));
                      nv.setMaTK(rs.getString("matk"));
                      nv.setHoTenNV(rs.getString("hotennv"));
                      nv.setGioiTinh(rs.getString("gioitinh"));
                      nv.setNgaySinh(rs.getString("ngaysinh"));
                      nv.setSDT(rs.getString("sdt"));
                      nv.setDiaChi(rs.getString("diachi"));
                      nv.setNgayVL(rs.getString("ngayvaolam"));
                      nv.setChucVu(rs.getString("chucvu"));
                      nv.setLuong(rs.getInt("luong"));
                      dsnhanvien.add(nv);
                
                }
            
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        
        return dsnhanvien;
        
 
 
 }
 
 
 
    
}   
    
    
    
    
    
    



