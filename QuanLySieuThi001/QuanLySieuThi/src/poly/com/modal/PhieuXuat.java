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
public class PhieuXuat {
      int maPX;
      int maNV;
      Date thoiDiemLap ;
      int soLuongBan ;
      int maSP ;
      Date ngayXuat ;
      
    public PhieuXuat() {
    }

    public PhieuXuat(int maPX, int maNV, Date thoiDiemLap, int soLuongBan, int maSP, Date ngayXuat) {
        this.maPX = maPX;
        this.maNV = maNV;
        this.thoiDiemLap = thoiDiemLap;
        this.soLuongBan = soLuongBan;
        this.maSP = maSP;
        this.ngayXuat = ngayXuat;
    }

    public int getMaPX() {
        return maPX;
    }

    public void setMaPX(int maPX) {
        this.maPX = maPX;
    }

    public int getMaNV() {
        return maNV;
    }

    public void setMaNV(int maNV) {
        this.maNV = maNV;
    }

    public Date getThoiDiemLap() {
        return thoiDiemLap;
    }

    public void setThoiDiemLap(Date thoiDiemLap) {
        this.thoiDiemLap = thoiDiemLap;
    }

    public int getSoLuongBan() {
        return soLuongBan;
    }

    public void setSoLuongBan(int soLuongBan) {
        this.soLuongBan = soLuongBan;
    }

    public int getMaSP() {
        return maSP;
    }

    public void setMaSP(int maSP) {
        this.maSP = maSP;
    }

    public Date getNgayXuat() {
        return ngayXuat;
    }

    public void setNgayXuat(Date ngayXuat) {
        this.ngayXuat = ngayXuat;
    }
    

//    @Override
//    public String toString() {
//        return "SP xuat: "+tenSP +" So luong: "+soLuongBan+" NgayXuat: "+ngayXuat;
//    }
    
    
}
