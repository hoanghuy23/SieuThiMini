/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.modal;

import java.util.Date;
import poly.com.utils.XDate;

/**
 *
 * @author nhatt
 */
public class PhieuKiemKe {
    int maPhieuKK;
    int maNV ;
    int maSP ;
    int SLTonKho;
    Date thoiDiemLap = XDate.now();
    
    public PhieuKiemKe() {
    }

    public PhieuKiemKe(int maPhieuKK, int maNV, int maSP, int SLTonKho, Date thoiDiemLap) {
        this.maPhieuKK = maPhieuKK;
        this.maNV = maNV;
        this.maSP = maSP;
        this.SLTonKho = SLTonKho;
        this.thoiDiemLap = thoiDiemLap ;
    }

    public int getMaPhieuKK() {
        return maPhieuKK;
    }

    public void setMaPhieuKK(int maPhieuKK) {
        this.maPhieuKK = maPhieuKK;
    }

    public int getMaNV() {
        return maNV;
    }

    public void setMaNV(int maNV) {
        this.maNV = maNV;
    }

    public int getMaSP() {
        return maSP;
    }

    public void setMaSP(int maSP) {
        this.maSP = maSP;
    }

    public int getSLTonKho() {
        return SLTonKho;
    }

    public void setSLTonKho(int SLTonKho) {
        this.SLTonKho = SLTonKho;
    }

    public Date getThoiDiemLap() {
        return thoiDiemLap;
    }

    public void setThoiDiemLap(Date thoiDiemLap) {
        this.thoiDiemLap = thoiDiemLap;
    }
    
    
    
}
