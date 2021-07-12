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
public class NhanVien {
      int maNV; 
      String hoTen;
      Date ngaySinh; 
      boolean gioiTinh; 
      String diaChi; 
      String cmnd; 
      String dienThoai; 
      Date ngayVaoLam = XDate.now(); 
      int chucVu; 
      String taiKhoan; 
      String matKhau; 
      String img; 
      String QRCode;

    public String getQRCode() {
        return QRCode;
    }

    public void setQRCode(String QRCode) {
        this.QRCode = QRCode;
    }

    public NhanVien(int maNV, String hoTen, Date ngaySinh, boolean gioiTinh, String diaChi, String cmnd, String dienThoai, Date ngayVaoLam, int chucVu, String taiKhoan, String matKhau, String img, String QRCode) {
        this.maNV = maNV;
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.cmnd = cmnd;
        this.dienThoai = dienThoai;
        this.ngayVaoLam = ngayVaoLam;
        this.chucVu = chucVu;
        this.taiKhoan = taiKhoan;
        this.matKhau = matKhau;
        this.img = img;
        this.QRCode = QRCode;
    }

    public NhanVien() {
    }

    public NhanVien(int maNV, String hoTen, Date ngaySinh, boolean gioiTinh, String diaChi, String cmnd, String dienThoai, Date ngayVaoLam, int chucVu, String taiKhoan, String matKhau, String img) {
        this.maNV = maNV;
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.cmnd = cmnd;
        this.dienThoai = dienThoai;
        this.ngayVaoLam = ngayVaoLam;
        this.chucVu = chucVu;
        this.taiKhoan = taiKhoan;
        this.matKhau = matKhau;
        this.img = img;
    }

    public int getMaNV() {
        return maNV;
    }

    public void setMaNV(int maNV) {
        this.maNV = maNV;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public boolean isGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(String dienThoai) {
        this.dienThoai = dienThoai;
    }

    public Date getNgayVaoLam() {
        return ngayVaoLam;
    }

    public void setNgayVaoLam(Date ngayVaoLam) {
        this.ngayVaoLam = ngayVaoLam;
    }

    public int getChucVu() {
        return chucVu;
    }

    public void setChucVu(int chucVu) {
        this.chucVu = chucVu;
    }

    public String getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(String taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Ten NV: " + hoTen;
    }
      
    
}
