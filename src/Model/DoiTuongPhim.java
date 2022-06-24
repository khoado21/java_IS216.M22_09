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
public class DoiTuongPhim {
    
    private String MalpString,TenlpString,TheloaiString;
    private int Namsx;

    public DoiTuongPhim(String MalpString, String TenlpString, String TheloaiString, int Namsx) {
        this.MalpString = MalpString;
        this.TenlpString = TenlpString;
        this.TheloaiString = TheloaiString;
        this.Namsx = Namsx;
    }

    public DoiTuongPhim() {
        
    }

    public String getMalpString() {
        return MalpString;
    }

    public void setMalpString(String MalpString) {
        this.MalpString = MalpString;
    }

    public String getTenlpString() {
        return TenlpString;
    }

    public void setTenlpString(String TenlpString) {
        this.TenlpString = TenlpString;
    }

    public String getTheloaiString() {
        return TheloaiString;
    }

    public void setTheloaiString(String TheloaiString) {
        this.TheloaiString = TheloaiString;
    }

    public int getNamsx() {
        return Namsx;
    }

    public void setNamsx(int Namsx) {
        this.Namsx = Namsx;
    }
    
    
    
    
    
    
    
}
