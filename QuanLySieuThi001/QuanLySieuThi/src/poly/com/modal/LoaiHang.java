/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.modal;

/**
 *
 * @author nhatt
 */
public class LoaiHang {
    int maLH;
    String tenLH; 

    public LoaiHang() {
    }

    public LoaiHang(int maLH, String tenLH) {
        this.maLH = maLH;
        this.tenLH = tenLH;
    }

    public int getMaLH() {
        return maLH;
    }

    public void setMaLH(int maLH) {
        this.maLH = maLH;
    }

    public String getTenLH() {
        return tenLH;
    }

    public void setTenLH(String tenLH) {
        this.tenLH = tenLH;
    }

    @Override
    public String toString() {
        return tenLH;
    }
    
    
}
