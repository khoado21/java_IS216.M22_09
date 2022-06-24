/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ASUS
 */
public class LPhim1 {
     private String MaLP, TenLP, HinhThuc;

    public LPhim1() {
    }

    public LPhim1(String MaLP, String TenLP, String HinhThuc) {
        this.MaLP = MaLP;
        this.TenLP = TenLP;
        this.HinhThuc = HinhThuc;
    }

    public String getMaLP() {
        return MaLP;
    }

    public void setMaLP(String MaLP) {
        this.MaLP = MaLP;
    }

    public String getTenLP() {
        return TenLP;
    }

    public void setTenLP(String TenLP) {
        this.TenLP = TenLP;
    }

    public String getHinhThuc() {
        return HinhThuc;
    }

    public void setHinhThuc(String HinhThuc) {
        this.HinhThuc = HinhThuc;
    }
    
}
