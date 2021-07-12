/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.modal;

public class SanPham {
      int maSP; 
      String tenSP; 
      double giaMua; 
      double giaBan; 
      String hsd; 
      double VAT; 
      int maLH; 
      String donVi;
      String img; 
      String maVach;
    public SanPham() {
    }
    
    public SanPham(int maSP, String tenSP, double giaMua, double giaBan, String hsd, double VAT, int maLH, String donVi, String img) {
        this.maSP = maSP;
        this.tenSP = tenSP;
        this.giaMua = giaMua;
        this.giaBan = giaBan;
        this.hsd = hsd;
        this.VAT = VAT;
        this.maLH = maLH;
        this.donVi = donVi;
        this.img = img;
    }

    public SanPham(int maSP, String tenSP, double giaMua, double giaBan, String hsd, double VAT, int maLH, String donVi, String img, String maVach) {
        this.maSP = maSP;
        this.tenSP = tenSP;
        this.giaMua = giaMua;
        this.giaBan = giaBan;
        this.hsd = hsd;
        this.VAT = VAT;
        this.maLH = maLH;
        this.donVi = donVi;
        this.img = img;
        this.maVach = maVach;
    }

    public String getMaVach() {
        return maVach;
    }

    public void setMaVach(String maVach) {
        this.maVach = maVach;
    }

    public int getMaSP() {
        return maSP;
    }

    public void setMaSP(int maSP) {
        this.maSP = maSP;
    }

    

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public double getGiaMua() {
        return giaMua;
    }

    public void setGiaMua(double giaMua) {
        this.giaMua = giaMua;
    }

    public double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(double giaBan) {
        this.giaBan = giaBan;
    }

    public String getHsd() {
        return hsd;
    }

    public void setHsd(String hsd) {
        this.hsd = hsd;
    }

    public double getVAT() {
        return VAT;
    }

    public void setVAT(double VAT) {
        this.VAT = VAT;
    }

    public int getMaLH() {
        return maLH;
    }

    public void setMaLH(int maLH) {
        this.maLH = maLH;
    }

    public String getDonVi() {
        return donVi;
    }

    public void setDonVi(String donVi) {
        this.donVi = donVi;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return tenSP+""; 
    }
    
    
      
}
