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
public class HoaDon {
    int maHD;
    Date thoiDiemLap;
    double tongTienTra; 
    double mucGiam; 
    double diemThuong; 
    int maNV; 
    int maKH; 
    int maSP;
    int soLuong;
    String gioMua;

    public HoaDon(int maHD, Date thoiDiemLap, double tongTienTra, double mucGiam, double diemThuong, int maNV, int maKH, int maSP, int soLuong, String gioMua) {
        this.maHD = maHD;
        this.thoiDiemLap = thoiDiemLap;
        this.tongTienTra = tongTienTra;
        this.mucGiam = mucGiam;
        this.diemThuong = diemThuong;
        this.maNV = maNV;
        this.maKH = maKH;
        this.maSP = maSP;
        this.soLuong = soLuong;
        this.gioMua = gioMua;
    }

    public String getGioMua() {
        return gioMua;
    }

    public void setGioMua(String gioMua) {
        this.gioMua = gioMua;
    }

    public HoaDon() {
    }

    public int getMaHD() {
        return maHD;
    }

    public void setMaHD(int maHD) {
        this.maHD = maHD;
    }

    public HoaDon(int maHD, Date thoiDiemLap, double tongTienTra, double mucGiam, double diemThuong, int maNV, int maKH, int maSP, int soLuong) {
        this.maHD = maHD;
        this.thoiDiemLap = thoiDiemLap;
        this.tongTienTra = tongTienTra;
        this.mucGiam = mucGiam;
        this.diemThuong = diemThuong;
        this.maNV = maNV;
        this.maKH = maKH;
        this.maSP = maSP;
        this.soLuong = soLuong;
    }

    public HoaDon(Date thoiDiemLap, double tongTienTra, double mucGiam, double diemThuong, int maNV, int maKH, int maSP, int soLuong) {
        this.thoiDiemLap = thoiDiemLap;
        this.tongTienTra = tongTienTra;
        this.mucGiam = mucGiam;
        this.diemThuong = diemThuong;
        this.maNV = maNV;
        this.maKH = maKH;
        this.maSP = maSP;
        this.soLuong = soLuong;
    }

    public Date getThoiDiemLap() {
        return thoiDiemLap;
    }

    public void setThoiDiemLap(Date thoiDiemLap) {
        this.thoiDiemLap = thoiDiemLap;
    }

    public double getTongTienTra() {
        return tongTienTra;
    }

    public void setTongTienTra(double tongTienTra) {
        this.tongTienTra = tongTienTra;
    }

    public double getMucGiam() {
        return mucGiam;
    }

    public void setMucGiam(double mucGiam) {
        this.mucGiam = mucGiam;
    }

    public double getDiemThuong() {
        return diemThuong;
    }

    public void setDiemThuong(double diemThuong) {
        this.diemThuong = diemThuong;
    }

    public int getMaNV() {
        return maNV;
    }

    public void setMaNV(int maNV) {
        this.maNV = maNV;
    }

    public int getMaKH() {
        return maKH;
    }

    public void setMaKH(int maKH) {
        this.maKH = maKH;
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
    
    
}
