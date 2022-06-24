

package Model;

import java.io.Serializable;
import java.util.Date;


public class ThanhVien implements Serializable {
    private String MaTV, TenTV, GioiTinh, DiaChi, SDT, CMND;
            String NgayDangKy, NgaySinh;
    private int DiemTichLuy;

   public ThanhVien(String MaTV, String TenTV, String GioiTinh, String NgaySinh, String DiaChi, String SDT, String CMND, String NgayDangKy, int DiemTichLuy) {
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
    
    public String getMaTV() {
        return MaTV;
    }

    public String getTenTV() {
        return TenTV;
    }

    public String getGioiTinh() {
        return GioiTinh;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public String getSDT() {
        return SDT;
    }

    public String getCMND() {
        return CMND;
    }

    public String getNgayDangKy() {
        return NgayDangKy;
    }

    public String getNgaySinh() {
        return NgaySinh;
    }

    public int getDiemTichLuy() {
        return DiemTichLuy;
    }

    public void setMaTV(String MaTV) {
        this.MaTV = MaTV;
    }

    public void setTenTV(String TenTV) {
        this.TenTV = TenTV;
    }

    public void setGioiTinh(String GioiTinh) {
        this.GioiTinh = GioiTinh;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public void setCMND(String CMND) {
        this.CMND = CMND;
    }

    public void setNgayDangKy(String NgayDangKy) {
        this.NgayDangKy = NgayDangKy;
    }

    public void setNgaySinh(String NgaySinh) {
        this.NgaySinh = NgaySinh;
    }

    public void setDiemTichLuy(int DiemTichLuy) {
        this.DiemTichLuy = DiemTichLuy;
    }

    

}