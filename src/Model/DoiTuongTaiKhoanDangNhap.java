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
public class DoiTuongTaiKhoanDangNhap {
    private String tentkString,passwordString,MaTK, MaNguoiDung,LoaiTK;

    
    public DoiTuongTaiKhoanDangNhap() {
    }

    public DoiTuongTaiKhoanDangNhap(String tentkString, String passwordString, String MaTK, String MaNguoiDung, String LoaiTK) {
        this.tentkString = tentkString;
        this.passwordString = passwordString;
        this.MaTK = MaTK;
        this.MaNguoiDung = MaNguoiDung;
        this.LoaiTK = LoaiTK;
    }
    
    public String getMaTK() {
        return MaTK;
    }

    public void setMaTK(String MaTK) {
        this.MaTK = MaTK;
    }

    public String getMaNguoiDung() {
        return MaNguoiDung;
    }

    public void setMaNguoiDung(String MaNguoiDung) {
        this.MaNguoiDung = MaNguoiDung;
    }

    public String getLoaiTK() {
        return LoaiTK;
    }

    public void setLoaiTK(String LoaiTK) {
        this.LoaiTK = LoaiTK;
    }


    public DoiTuongTaiKhoanDangNhap(String tentkString, String passwordString) {
        this.tentkString = tentkString;
        this.passwordString = passwordString;
    }

    public String getTentkString() {
        return tentkString;
    }

    public void setTentkString(String tentkString) {
        this.tentkString = tentkString;
    }

    public String getPasswordString() {
        return passwordString;
    }

    public void setPasswordString(String passwordString) {
        this.passwordString = passwordString;
    }
    
    
    
    
}
