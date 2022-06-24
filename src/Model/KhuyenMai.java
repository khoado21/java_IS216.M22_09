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
public class KhuyenMai {
    private String MaKM, TenKM;
            int TyLeKM;

    public KhuyenMai() {
    }

    public KhuyenMai(String MaKM, String TenKM, int TyLeKM) {
        this.MaKM = MaKM;
        this.TenKM = TenKM;
        this.TyLeKM = TyLeKM;
    }

   
    public String getMaKM() {
        return MaKM;
    }

    public void setMaKM(String MaKM) {
        this.MaKM = MaKM;
    }

    public String getTenKM() {
        return TenKM;
    }

    public void setTenKM(String TenKM) {
        this.TenKM = TenKM;
    }

    public int getTyLeKM() {
        return TyLeKM;
    }

    public void setTyLeKM(int TyLeKM) {
        this.TyLeKM = TyLeKM;
    }
            
}

    