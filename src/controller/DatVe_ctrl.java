/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Phi Long
 */
public class DatVe_ctrl {
    //Hàm lấy vị trí ghế đã đặt
    public ArrayList<String> ListGheDaDat(String MaSuatChieu){
        
        ArrayList<String> ListGhe = new ArrayList<>();
        Connection con = JDBCConnection.getJDBCConnection();
        String sql = "Select Vitri from DatVe inner join Ghe on DatVe.maghe = Ghe.maghe Where masc ='"+ MaSuatChieu +"'" ;       
        try {
            PreparedStatement prest = con.prepareStatement(sql);
            ResultSet rs = prest.executeQuery();
            
            while(rs.next()){                
                ListGhe.add(rs.getString(1)); //truyền vào listghe vị trí ghế đã đặt
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatVe_ctrl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ListGhe;
    }
     public boolean DatVe(String MAGHE,String MASC, int SOHD){
        String sp_datve = "{call SP_DATVE(?,?,?)}";
        Connection con = JDBCConnection.getJDBCConnection();
        try{
            CallableStatement smt=con.prepareCall(sp_datve);
            smt.setString(1,MAGHE);
            smt.setString(2,MASC);
            smt.setInt(3,SOHD);
            if(smt.executeUpdate()>0){
                return true;
            }
            else return false;
        }
        catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
    public int KiemTraGhe(String MAGHE, String MASC){
        int check = 0;
        String f_check_seat = "{? = call F_CHECK_SEAT(?,?)}";
        Connection con = JDBCConnection.getJDBCConnection();
        try{
            CallableStatement smt = con.prepareCall(f_check_seat);
            smt.registerOutParameter(1, Types.NUMERIC);
            smt.setString(2,MAGHE);
            smt.setString(3,MASC);
            smt.executeUpdate();
            check = smt.getInt(1);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return check;
    }
}

    
    

