/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Phon
 */
public class TaiKhoan {
    private String MaTK, MaNguoiDung, TenTK, Password, LoaiTK;

    public String getMatK() {
        return MaTK;
    }

    public void setMatK(String MatK) {
        this.MaTK = MatK;
    }

    public String getMaNguoiDung() {
        return MaNguoiDung;
    }

    public void setMaNguoiDung(String MaNguoiDung) {
        this.MaNguoiDung = MaNguoiDung;
    }

    public String getTenTK() {
        return TenTK;
    }

    public void setTenTK(String TenTK) {
        this.TenTK = TenTK;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getLoaiTK() {
        return LoaiTK;
    }

    public void setLoaiTK(String LoaiTK) {
        this.LoaiTK = LoaiTK;
    }
    
}
