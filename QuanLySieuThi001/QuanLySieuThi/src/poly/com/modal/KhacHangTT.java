/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.modal;

import java.util.Date;

/**
 *
 * @author nhatt
 */
public class KhacHangTT {
      int maKH; 
      String hoTen; 
      String diaChi; 
      Date ngayCapThe;
      Date ngayMuaGanNhat; 
      double diemThuong;
      String image;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public KhacHangTT(int maKH, String hoTen, String diaChi, Date ngayCapThe, Date ngayMuaGanNhat, double diemThuong, String image) {
        this.maKH = maKH;
        this.hoTen = hoTen;
        this.diaChi = diaChi;
        this.ngayCapThe = ngayCapThe;
        this.ngayMuaGanNhat = ngayMuaGanNhat;
        this.diemThuong = diemThuong;
        this.image = image;
    }

    public KhacHangTT() {
    }

    public KhacHangTT(int maKH, String hoTen, String diaChi, Date ngayCapThe, Date ngayMuaGanNhat, double diemThuong) {
        this.maKH = maKH;
        this.hoTen = hoTen;
        this.diaChi = diaChi;
        this.ngayCapThe = ngayCapThe;
        this.ngayMuaGanNhat = ngayMuaGanNhat;
        this.diemThuong = diemThuong;
    }

    public int getMaKH() {
        return maKH;
    }

    public void setMaKH(int maKH) {
        this.maKH = maKH;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public Date getNgayCapThe() {
        return ngayCapThe;
    }

    public void setNgayCapThe(Date ngayCapThe) {
        this.ngayCapThe = ngayCapThe;
    }

    public Date getNgayMuaGanNhat() {
        return ngayMuaGanNhat;
    }

    public void setNgayMuaGanNhat(Date ngayMuaGanNhat) {
        this.ngayMuaGanNhat = ngayMuaGanNhat;
    }

    public double getDiemThuong() {
        return diemThuong;
    }

    public void setDiemThuong(double diemThuong) {
        this.diemThuong = diemThuong;
    }

    @Override
    public String toString() {
        return "Ten KHTT: "+hoTen;
                
    }
    
    
}
