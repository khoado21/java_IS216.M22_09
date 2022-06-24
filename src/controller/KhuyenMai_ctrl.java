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
import java.sql.Statement;
import java.util.ArrayList;
import Model.KhuyenMai;
import Model.NhanVien;

/**
 *
 * @author PC
 */
public class KhuyenMai_ctrl  {
    public boolean isKhuyenMai (String MaKM){
        String query = "select *\n" +
                       "from khuyenmai\n" +
                       "where makm ='"+MaKM+"'";
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
    public int getTyleKM(String MaKM){
        int TLKM = 0;
        String query = "select TyleKM\n" +
                       "from khuyenmai\n" +
                       "where makm ='"+MaKM+"'";
        Connection con= JDBCConnection.getJDBCConnection();
        try {
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery(query);
        if (rs.next())
            TLKM = rs.getInt(1);
        con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return TLKM;
    }
    public static ArrayList<KhuyenMai> getAllKhuyenMai(){
        ArrayList<KhuyenMai> kmList = new ArrayList<>();
        String sql = "SELECT * FROM KHUYENMAI";
        Connection con= JDBCConnection.getJDBCConnection();
        try {
            con.setAutoCommit(false);
            con.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
            PreparedStatement pt = con.prepareStatement(sql);
            ResultSet rss = pt.executeQuery();
            
            while(rss.next()){
               
                String makm = rss.getString(1);
                
                String tenkm = rss.getString(2);
                int tyle = rss.getInt(3);
             
                
                kmList.add(new KhuyenMai(makm, tenkm, tyle));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
            
        return kmList;
        
        
    }
   public boolean addKhuyenMai(KhuyenMai t){
//        String  ngay = ""
        String query = "INSERT INTO KHUYENMAI VALUES(?,?,?)";
        //String q = "insert into thanhvien(hoten,masv,ngsinh) values(?,?,to_date(....))
        Connection con= JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement pt = con.prepareStatement(query);
            pt.setString(1,t.getMaKM());
            
            pt.setString(2,t.getTenKM());
            pt.setInt(3,t.getTyLeKM());
          
          
            return pt.executeUpdate() >0;
           
        } catch (Exception e) {
            e.printStackTrace();
        }finally{try {
                con.close();
            } catch (Exception e) {
            }}
        return false;

    }
    public boolean XoaKhuyenMai(KhuyenMai tv){
        String sql = "DELETE FROM KHUYENMAI WHERE MAKM = ?";
        Connection con= JDBCConnection.getJDBCConnection();
          try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1,tv.getMaKM());
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
    public static void CapNhatKM(KhuyenMai tv){
        String query = "UPDATE KHUYENMAI SET TENKM = ?,TYLEKM = ?  WHERE MAKM = ?";
        Connection con= JDBCConnection.getJDBCConnection();
        try {
           con.setAutoCommit(false);
           con.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
            PreparedStatement pt = con.prepareStatement(query);
            pt.setString(1,tv.getTenKM());
            pt.setInt(2, tv.getTyLeKM());
            pt.setString(3, tv.getMaKM());
           
            int tmp = pt.executeUpdate();
            
           
        }
        catch(Exception e){
            e.printStackTrace();
           
        }
}}
