/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.modal;

import java.util.Date;
import poly.com.utils.XDate;

public class PhieuNhap { 
    int maPN;
    int maSP;
    int soLuong;
    Date ngaySX;
    Date ngayNhap = XDate.now();
    int maNCC ;
    Date thoiDiemLap =XDate.now();
    int maNV;

    public PhieuNhap() {
    }

    public PhieuNhap(int maPN, int maSP, int soLuong, Date ngaySX, int maNCC, int maNV, Date ngayNhap, Date thoiDiemLap) {
        this.maPN = maPN;
        this.maSP = maSP;
        this.soLuong = soLuong;
        this.ngaySX = ngaySX;
        this.ngayNhap = ngayNhap;
        this.maNCC = maNCC;
        this.thoiDiemLap = thoiDiemLap;
        this.maNV = maNV;      
    }

    public int getMaPN() {
        return maPN;
    }

    public void setMaPN(int maPN) {
        this.maPN = maPN;
    }

    public int getMaSP() {
        return maSP;
    }

    public void setMaSP(int maSP) {
        this.maSP = maSP;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public Date getNgaySX() {
        return ngaySX;
    }

    public void setNgaySX(Date ngaySX) {
        this.ngaySX = ngaySX;
    }

    public Date getNgayNhap() {
        return ngayNhap;
    }

    public void setNgayNhap(Date ngayNhap) {
        this.ngayNhap = ngayNhap;
    }

    public int getMaNCC() {
        return maNCC;
    }

    public void setMaNCC(int maNCC) {
        this.maNCC = maNCC;
    }

    public Date getThoiDiemLap() {
        return thoiDiemLap;
    }

    public void setThoiDiemLap(Date thoiDiemLap) {
        this.thoiDiemLap = thoiDiemLap;
    }

    public int getMaNV() {
        return maNV;
    }

    public void setMaNV(int maNV) {
        this.maNV = maNV;
    }
    
    
    
    
    
}
