/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author PC
 */
public class SuatChieu1 {
    private String MaSC,MaRap,MaPhim,ThoiGianChieu;
    private Date NgayChieu;

    public SuatChieu1() {
    }

    public SuatChieu1(String MaSC, String MaRap, String MaPhim, String ThoiGianChieu, Date NgayChieu) {
        this.MaSC = MaSC;
        this.MaRap = MaRap;
        this.MaPhim = MaPhim;
        this.ThoiGianChieu = ThoiGianChieu;
        this.NgayChieu = NgayChieu;
    }

    public String getMaSC() {
        return MaSC;
    }

    public void setMaSC(String MaSC) {
        this.MaSC = MaSC;
    }

    public String getMaRap() {
        return MaRap;
    }

    public void setMaRap(String MaRap) {
        this.MaRap = MaRap;
    }

    public String getMaPhim() {
        return MaPhim;
    }

    public void setMaPhim(String MaPhim) {
        this.MaPhim = MaPhim;
    }

    public String getThoiGianChieu() {
        return ThoiGianChieu;
    }

    public void setThoiGianChieu(String ThoiGianChieu) {
        this.ThoiGianChieu = ThoiGianChieu;
    }

    public Date getNgayChieu() {
        return NgayChieu;
    }

    public void setNgayChieu(Date NgayChieu) {
        this.NgayChieu = NgayChieu;
    }
    
    
}
