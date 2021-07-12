/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import poly.com.modal.NhanVien;
import poly.com.utils.XJdbc;

public class NhanVienDAO extends QuanLyDAO<NhanVien, Integer> {
        final String INSERT_SQL = "INSERT INTO NhanVien"
                + "(HoTen,NgaySinh,GioiTinh,DiaChi,CMND,DienThoai,NgayVaoLam,ChucVu,TaiKhoan,MatKhau,img,QRCode) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
        final String UPDATE_SQL = "UPDATE NhanVien SET"
                + " HoTen =?,NgaySinh =?, GioiTinh =?, DiaChi =?, CMND =?,DienThoai =?, NgayVaoLam =?,ChucVu=?,TaiKhoan =?, MatKhau =?,img =?,QRCode =? WHERE MaNV =?";
        final String DELETE_SQL = "DELETE FROM NhanVien WHERE MaNV =?";
        final String SELECT_ALL_SQL = "SELECT * FROM NhanVien";
        final String SELECT_BY_ID_SQL = "SELECT * FROM NhanVien WHERE MaNV =?";
        final String SORT_BY_FULLNAME = "SELECT * FROM NhanVien ORDER BY HoTen ASC";
        final String SELECT_BY_USER_SQL = "SELECT * FROM NhanVien WHERE TaiKhoan = ?";
        final String SELECT_BY_QR_CODE = "SELECT * FROM NhanVien WHERE QRCode =?";
        final String SELECT_BY_EMAIL_SQL ="SELECT * FROM NhanVien WHERE Email =?";
        final String UPDATE_PASSWORD_SQL ="UPDATE NhanVien SET MatKhau =? WHERE TaiKhoan =?";
    @Override
    public void insert(NhanVien entity) {
        XJdbc.update(INSERT_SQL, entity.getHoTen(),entity.getNgaySinh(),entity.isGioiTinh(),entity.getDiaChi(),entity.getCmnd(),entity.getDienThoai(),entity.getNgayVaoLam(),entity.getChucVu(),entity.getTaiKhoan(),entity.getMatKhau(),entity.getImg(),entity.getQRCode());
    }

    @Override
    public void update(NhanVien entity) {
        XJdbc.update(UPDATE_SQL, entity.getHoTen(),entity.getNgaySinh(),entity.isGioiTinh(),entity.getDiaChi(),entity.getCmnd(),entity.getDienThoai(),entity.getNgayVaoLam(),entity.getChucVu(),entity.getTaiKhoan(),entity.getMatKhau(),entity.getImg(),entity.getQRCode(),entity.getMaNV());
    }
    
    public void updatePassword(String taiKhoan,String matKhauMoi){
        XJdbc.update(UPDATE_PASSWORD_SQL, matKhauMoi,taiKhoan);
    }

    @Override
    public void delete(Integer key) {
        XJdbc.update(DELETE_SQL, key);
    }

    @Override
    public List<NhanVien> selectAll() {
        return this.selectBySQL(SELECT_ALL_SQL);
    }

    @Override
    public NhanVien selectById(Integer key) {
        List<NhanVien> list = this.selectBySQL(SELECT_BY_ID_SQL, key);
        return list.size() > 0 ? list.get(0) : null; 
    }

    @Override
    protected List<NhanVien> selectBySQL(String sql, Object... args) {
        List<NhanVien> list = new ArrayList<NhanVien>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(sql, args);
                while(rs.next()){
                    NhanVien nv = readFromResultSet(rs);
                    list.add(nv);
                }
                
            } finally {
                rs.getStatement().getConnection().close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list; 
    }
    
    public List<NhanVien> sortByFullname() throws SQLException{
        List<NhanVien> list = this.selectBySQL(SORT_BY_FULLNAME);
        return list;
    }
    
    public List<NhanVien> sortByID() throws SQLException{
        List<NhanVien> list =this.selectBySQL("SELECT * FROM NHANVIEN ORDER BY MaNV DESC ");
        return list;
    }
    
    public NhanVien selectByUser(String key){
        List<NhanVien> list = this.selectBySQL(SELECT_BY_USER_SQL, key);
        return list.size() > 0 ? list.get(0) : null; 
    }
    
    public NhanVien loginQRCode(String QRCode){
        List<NhanVien> list = this.selectBySQL(SELECT_BY_QR_CODE, QRCode);
        return list.size() > 0 ? list.get(0) : null; 
    }
    
    public NhanVien selectByEmail(String email){
        List<NhanVien> list = this.selectBySQL(SELECT_BY_EMAIL_SQL, email);
        return list.size() > 0 ? list.get(0) : null; 
    }
    
    private NhanVien readFromResultSet(ResultSet rs) throws SQLException {
        NhanVien nv = new NhanVien();
        nv.setMaNV(rs.getInt("MaNV"));
        nv.setHoTen(rs.getString("HoTen"));
        nv.setNgaySinh(rs.getDate("NgaySinh"));
        nv.setGioiTinh(rs.getBoolean("GioiTinh"));
        nv.setDiaChi(rs.getString("DiaChi"));
        nv.setChucVu(rs.getInt("ChucVu"));
        nv.setCmnd(rs.getString("CMND"));
        nv.setDienThoai(rs.getString("DienThoai"));
        nv.setImg(rs.getString("img"));
        nv.setNgayVaoLam(rs.getDate("NgayVaoLam"));
        nv.setTaiKhoan(rs.getString("TaiKhoan"));
        nv.setMatKhau(rs.getString("MatKhau"));
        nv.setQRCode(rs.getString("QRCode"));
        return nv;
    }
    
}
