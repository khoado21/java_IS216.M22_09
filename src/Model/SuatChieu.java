/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author PC
 */
public class SuatChieu {
    private String MaSC, MaRap, MaPhim, NgayChieu, ThoiGianChieu;

    public SuatChieu() {
    }

    public SuatChieu(String MaSC, String MaRap, String MaPhim, String NgayChieu, String ThoiGianChieu) {
        this.MaSC = MaSC;
        this.MaRap = MaRap;
        this.MaPhim = MaPhim;
        this.NgayChieu = NgayChieu;
        this.ThoiGianChieu = ThoiGianChieu;
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

    public String getNgayChieu() {
        return NgayChieu;
    }

    public void setNgayChieu(String NgayChieu) {
        this.NgayChieu = NgayChieu;
    }

    public String getThoiGianChieu() {
        return ThoiGianChieu;
    }

    public void setThoiGianChieu(String ThoiGianChieu) {
        this.ThoiGianChieu = ThoiGianChieu;
    }
    
}
