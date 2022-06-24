/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class DoiTuonngThanhVien {
     private String MaTV, TenTV, GioiTinh, NgaySinh, DiaChi,
            SDT, CMND, NgayDangKy;
     private int DiemTichLuy;

    public DoiTuonngThanhVien(String MaTV, String TenTV, String GioiTinh, String NgaySinh, String DiaChi, String SDT, String CMND, String NgayDangKy, int DiemTichLuy) {
        this.MaTV = MaTV;
        this.TenTV = TenTV;
        this.GioiTinh = GioiTinh;
        this.NgaySinh = NgaySinh;
        this.DiaChi = DiaChi;
        this.SDT = SDT;
        this.CMND = CMND;
        this.NgayDangKy = NgayDangKy;
        this.DiemTichLuy = DiemTichLuy;
    }

    public DoiTuonngThanhVien() {
    }

    public String getMaTV() {
        return MaTV;
    }

    public void setMaTV(String MaTV) {
        this.MaTV = MaTV;
    }

    public String getTenTV() {
        return TenTV;
    }

    public void setTenTV(String TenTV) {
        this.TenTV = TenTV;
    }

    public String getGioiTinh() {
        return GioiTinh;
    }

    public void setGioiTinh(String GioiTinh) {
        this.GioiTinh = GioiTinh;
    }

    public String getNgaySinh() {
        return NgaySinh;
    }

    public void setNgaySinh(String NgaySinh) {
        this.NgaySinh = NgaySinh;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getCMND() {
        return CMND;
    }

    public void setCMND(String CMND) {
        this.CMND = CMND;
    }

    public String getNgayDangKy() {
        return NgayDangKy;
    }

    public void setNgayDangKy(String NgayDangKy) {
        this.NgayDangKy = NgayDangKy;
    }

    public int getDiemTichLuy() {
        return DiemTichLuy;
    }

    public void setDiemTichLuy(int DiemTichLuy) {
        this.DiemTichLuy = DiemTichLuy;
    }
    
    
    
    
     
    
}
