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
public class MaKhuyenMai {
    private String maKM,tenKM;
    private Long tyLeKM;

    public MaKhuyenMai() {
    }

    public MaKhuyenMai(String maKM, String tenKM, Long tyLeKM) {
        this.maKM = maKM;
        this.tenKM = tenKM;
        this.tyLeKM = tyLeKM;
    }

    public String getMaKM() {
        return maKM;
    }

    public void setMaKM(String maKM) {
        this.maKM = maKM;
    }

    public String getTenKM() {
        return tenKM;
    }

    public void setTenKM(String tenKM) {
        this.tenKM = tenKM;
    }

    public Long getTyLeKM() {
        return tyLeKM;
    }

    public void setTyLeKM(Long tyLeKM) {
        this.tyLeKM = tyLeKM;
    }
    
    
}
