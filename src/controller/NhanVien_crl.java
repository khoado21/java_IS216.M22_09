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
import java.util.ArrayList;
import Model.NhanVien;
import java.sql.*;


/**
 *
 * @author Phon
 */
public class NhanVien_crl {
     public boolean addNhanVien(NhanVien t){
//        String  ngay = ""
        String query = "INSERT INTO NHANVIEN VALUES(?,?,?,?,?,to_date(?,'dd-mm-yyyy'),?,?,?,to_date(?,'dd-mm-yyyy'),?)";
        Connection con = JDBCConnection.getJDBCConnection();
        //String q = "insert into thanhvien(hoten,masv,ngsinh) values(?,?,to_date(....))
        try {
            PreparedStatement pt = con.prepareStatement(query);
            pt.setString(1,t.getMaNV());
            
            pt.setString(2,t.getMaNQL());
            pt.setString(3,t.getMaTK());
            pt.setString(4,  t.getHoTenNV());
            pt.setString(5,t.getGioiTinh());
            pt.setString(6,t.getNgaySinh());
            pt.setString(7,t.getDiaChi());
            pt.setString(8,  t.getSDT());
            pt.setLong(9, t.getLuong());
            pt.setString(10,  t.getNgayVL());
            pt.setString(11,  t.getChucVu());
            
            
            return pt.executeUpdate() >0;
           
        } catch (Exception e) {
            e.printStackTrace();
        }finally{try {
                con.close();
            } catch (Exception e) {
            }}
        return false;

    }
    
   public static ArrayList<NhanVien> getAllEmploy(){
        ArrayList<NhanVien> emList = new ArrayList<>();
        String sql = "SELECT * FROM NHANVIEN";
        Connection con = JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement pt = con.prepareStatement(sql);
            ResultSet rss = pt.executeQuery();
            
            while(rss.next()){
               
                String mnv = rss.getString(1);
                
                String manql = rss.getString(2);
                String matk = rss.getString(3);
                String ten = rss.getString(4);
                String gtinh = rss.getString(5);
                String ngsinh = rss.getString(6);
                String dchi = rss.getString(7);
                String sdt = rss.getString(8);
                long luong = rss.getLong(9);
                String ngvl = rss.getString(10);
                String cv = rss.getString(11);
              
               
               
              
               
                
                
                emList.add(new NhanVien(mnv, manql, matk, ten, gtinh, ngsinh, dchi, sdt, ngvl, cv, luong));
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{try {
                con.close();
            } catch (Exception e) {
            }}
        return emList;
        
        
    }
    public boolean XoaNV(NhanVien tv){
        String sql = "DELETE FROM NHANVIEN WHERE MANV =?";
        Connection con = JDBCConnection.getJDBCConnection();
          try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1,tv.getMaNV());
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
    public boolean CapNhatNV(NhanVien tv) throws SQLException{
        Connection con = JDBCConnection.getJDBCConnection();
        String query = "UPDATE NHANVIEN SET MANQL = ?,MATK = ? ,HOTENNV =?,GIOITINH = ?, NGAYSINH= to_date(?,'dd-mm-yyyy'),DIACHI= ? "
                       +",SDT= ? ,LUONG= ? ,NGAYVAOLAM= to_date(?,'dd-mm-yyyy'), CHUCVU= ? WHERE MANV = ?";
        //con.setTransactionIsolation(Connection.TRANSACTION_READ_COMMITTED);
        con.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
        try {
            PreparedStatement pt = con.prepareStatement(query);
            pt.setString(1,tv.getMaNQL());
            pt.setString(2, tv.getMaTK());
            pt.setString(3, tv.getHoTenNV());
            pt.setString(4, tv.getGioiTinh());
            pt.setString(5, tv.getNgaySinh());
            pt.setString(6, tv.getDiaChi());
            pt.setString(7, tv.getSDT());
            pt.setLong(8, tv.getLuong());
            pt.setString(9, tv.getNgayVL());
            pt.setString(10, tv.getChucVu());
            pt.setString(11, tv.getMaNV());
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
        Connection con = JDBCConnection.getJDBCConnection();
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
    

    
    
    
    
    }

