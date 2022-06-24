/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author ASUS
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import Model.SuatChieu;
/**
 *
 * @author PC
 */
public class SuatChieu_ctrl_test {
    Connection con = JDBCConnection.getJDBCConnection();
    
    public Vector<String> ListNgayChieu (){
            Vector<String> listNgayChieu = new Vector<String>();
            Connection con = JDBCConnection.getJDBCConnection();
            String sql = "select Ngaychieu from suatchieu group by ngaychieu having ngaychieu>=sysdate";
            try{
                //con.setAutoCommit(false);
               // con.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
                PreparedStatement prest = con.prepareStatement(sql);
                ResultSet rs = prest.executeQuery();
                while (rs.next()){
                String date_before_convert = rs.getString(1);
                String date_after_convert = date_before_convert.substring(8,10)+"-"+date_before_convert.substring(5,8)+date_before_convert.substring(0,4);
                
                listNgayChieu.add(date_after_convert);
                 System.out.println(date_after_convert);
                }
            }
            catch(Exception e){
                e.printStackTrace();
            }
        return listNgayChieu;
    }
    public Vector<String> ListLoaiPhim(String NgayChieu){
        Vector<String> ListLoaiPhim = new Vector<String>();
        Connection con = JDBCConnection.getJDBCConnection();
        String query = "select tenlp "
                       +"from ((select malp, tenlp from loaiphim) lp inner join "
                               +"(select maphim, malp from phim) p on lp.malp = p.malp) inner join "
                               +"(select maphim from suatchieu where ngaychieu = TO_DATE('"+NgayChieu+"', 'DD-MM-YYYY','NLS_DATE_LANGUAGE = American')) sc on sc.maphim = p.maphim "
                               +"group by tenlp";
        try {
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery(query);
            while (rs.next()){
                ListLoaiPhim.add(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ListLoaiPhim;
    }
    public Vector<String> ListPhim(String NgayChieu, String LoaiPhim){
        Vector<String> ListPhim = new Vector<String>();
        String query = "select tenphim "
                       +"from ((select malp from loaiphim where tenlp ='"+LoaiPhim+"') lp inner join "
                               +"(select maphim, malp, tenphim from phim) p on lp.malp = p.malp) inner join "
                               +"(select maphim from suatchieu where ngaychieu = TO_DATE('"+NgayChieu+"', 'DD-MM-YYYY','NLS_DATE_LANGUAGE = American')) sc on sc.maphim = p.maphim "
                               +"group by tenphim";
        try {
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery(query);
            while (rs.next()){
                ListPhim.add(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ListPhim;
    }
    public Vector<String> ListThoiGianChieu(String NgayChieu, String LoaiPhim, String TenPhim){
        Vector<String> ListThoiGianChieu = new Vector<String>();
        String query = "select thoigianchieu "
                       +"from ((select malp from loaiphim where tenlp ='"+LoaiPhim+"') lp inner join "
                               +"(select maphim, malp from phim where tenphim ='"+TenPhim+"') p on lp.malp = p.malp) inner join "
                               +"(select maphim,thoigianchieu from suatchieu where ngaychieu = TO_DATE('"+NgayChieu+"', 'DD-MM-YYYY','NLS_DATE_LANGUAGE = American')) sc on sc.maphim = p.maphim "
                               +"group by ThoiGianChieu";
        try {
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery(query);
            while (rs.next()){
                ListThoiGianChieu.add(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ListThoiGianChieu;
    }
    public String SuatChieuDaChon(String NgayChieu, String ThoiGianChieu, String TenPhim){
            String MaSuatChieu = "";
            String query = "select  masc "
                          +"from    suatchieu sc join phim p on sc.maphim = p.maphim "
                          +"where   thoigianchieu ='"+ThoiGianChieu+"' and ngaychieu =TO_DATE('"+NgayChieu+"', 'DD-MM-YYYY','NLS_DATE_LANGUAGE = American') "
                          +"and tenphim = '"+TenPhim+"'";
            try {
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery(query);
                if (rs.next())
                    MaSuatChieu=rs.getString(1);
            } catch (Exception e) {
            e.printStackTrace();
            }
            return MaSuatChieu;
    }
   
    
    public static void HienThiSuatChieu(String ngay, String maphim, SuatChieu sc, JComboBox cb){
        String sql = "select distinct (thoigianchieu) from suatchieu where NGAYCHIEU = to_date(?,'dd-mm-yyyy') and maphim = ?";
        Connection con = JDBCConnection.getJDBCConnection();
        ResultSet rs;
        try {
            PreparedStatement prest = con.prepareStatement(sql);
            prest.setString(1, ngay);
            prest.setString(2, maphim);
            rs = prest.executeQuery();
            while(rs.next())
            {
                sc.setThoiGianChieu(rs.getString(1));
                cb.addItem(sc.getThoiGianChieu());
            }
        } catch (SQLException ex) {
            Logger.getLogger(SuatChieu_ctrl_test.class.getName()).log(Level.SEVERE, null, ex);
        }finally{try {
                con.close();
            } catch (Exception e) {
            }}
       
    }
    public static void HienThiSlot(String ngay, String thoigian,String maphim, JLabel lb){
        String sql = "select count(masc) from datve where  masc =(select masc from suatchieu where ngaychieu = to_date(?,'dd-mm-yyyy') and"
                + " THOIGIANCHIEU = ? and maphim = ? ) group by masc";
        Connection con = JDBCConnection.getJDBCConnection();
        
        ResultSet rs;
        try {
            PreparedStatement prest = con.prepareStatement(sql);
            prest.setString(1, ngay);
            prest.setString(2, thoigian);
            prest.setString(3, maphim);
            rs = prest.executeQuery();
            while(rs.next())
            {
                int slot = 30 - Integer.parseInt(rs.getString(1));
                lb.setText(String.valueOf(slot));
            }
        } catch (SQLException ex) {
            Logger.getLogger(SuatChieu_ctrl_test.class.getName()).log(Level.SEVERE, null, ex);
        }finally{try {
                con.close();
            } catch (Exception e) {
            }}
       
    }
      public static ArrayList<SuatChieu> getAllsc(){
        ArrayList<SuatChieu> emList = new ArrayList<>();
        String sql = "SELECT * FROM SUATCHIEU";
        Connection con = JDBCConnection.getJDBCConnection();
        try {
             PreparedStatement prest = con.prepareStatement(sql);
            ResultSet rss = prest.executeQuery();
            
            while(rss.next()){
               
                String masc = rss.getString(1);
                
                String marap = rss.getString(2);
                String maphim = rss.getString(3);
                String ngaychieu = rss.getString(4);
                String thoigian = rss.getString(5);
                
                
                emList.add(new SuatChieu(masc, marap, maphim, ngaychieu, thoigian));
            }
        } catch (SQLException e) {
            e.printStackTrace();}
        
        return emList;
        
        
    }
       public static void CapNhatsc(SuatChieu tv){
        String query = "UPDATE suatchieu SET marap= ?,maphim =?, thoigianchieu=?  WHERE masc = ?";
        Connection con = JDBCConnection.getJDBCConnection();
        try {
           con.setAutoCommit(false);
           con.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
            PreparedStatement pt = con.prepareStatement(query);
            pt.setString(1,tv.getMaRap());
            pt.setString(2, tv.getMaPhim());
            pt.setString(3, tv.getThoiGianChieu());
            pt.setString(4, tv.getMaSC());
           
            int tmp = pt.executeUpdate();
            
           
        }
        catch(Exception e){
            e.printStackTrace();
           
        }
}}