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
public class HoaDon {
    private String MaNV, MaTV, NgayHD, MaKM;
            int SoHD,dtl;
            long TongTien;
            
    public HoaDon(){} //thêm phần này
    public HoaDon(String MaNV, String MaTV, String NgayHD, int SoHD, long TongTien, int dtl,String makm) {
        this.MaNV = MaNV;
        this.MaTV = MaTV;
        this.NgayHD = NgayHD;
        this.SoHD = SoHD;
        this.TongTien = TongTien;
        this.dtl = dtl;
        this.MaKM = makm;
    }

    public String getMaNV() {
        return MaNV;
    }

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public String getMaTV() {
        return MaTV;
    }

    public void setMaTV(String MaTV) {
        this.MaTV = MaTV;
    }

    public String getNgayHD() {
        return NgayHD;
    }

    public void setNgayHD(String NgayHD) {
        this.NgayHD = NgayHD;
    }

    public int getSoHD() {
        return SoHD;
    }

    public void setSoHD(int SoHD) {
        this.SoHD = SoHD;
    }

    public long getTongTien() {
        return TongTien;
    }

    public void setTongTien(long TongTien) {
        this.TongTien = TongTien;
    }

    public String getMaKM() {
        return MaKM;
    }

    public void setMaKM(String MaKM) {
        this.MaKM = MaKM;
    }

    public int getDtl() {
        return dtl;
    }

    public void setDtl(int dtl) {
        this.dtl = dtl;
    }
            
}
