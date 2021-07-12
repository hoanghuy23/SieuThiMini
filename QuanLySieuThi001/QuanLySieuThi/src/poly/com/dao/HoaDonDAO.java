/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import poly.com.modal.HoaDon;
import poly.com.utils.XJdbc;
import java.sql.ResultSet;

/**
 *
 * @author nhatt
 */
public class HoaDonDAO extends QuanLyDAO<HoaDon, Integer>{
    final String INSERT_HOADON_SQL ="INSERT INTO HoaDon(ThoiDiemLap,TongTienTra,MucGiam,DiemThuong,MaNV,MaKH,GioMua) VALUES(?,?,?,?,?,?,?)";
    final String INSERT_HDCT_SQL ="INSERT INTO HoaDonChiTiet(MaHD,MASP,SOLUONG) VALUES(?,?,?)";
    final String UPDATE_HDCT_SQL ="UPDATE HoaDonChiTiet SET MaSP =?,SoLuong =?, WHERE MaHD =?";
    final String UPDATE_HOADON_SQL ="UPDATE HoaDon SET ThoiDiemLap =?,TongTienTra =?,MucGiam =?,DiemThuong =?,MaNV =?,MaKH =?,GioMua =? WHERE MaHD =?";
    
    
    final String DELETE_SQL="DELETE FROM HOADON WHERE MAHD =?";
    final String SELECT_ALL_SQL ="SELECT * FROM HOADON";
    final String SELECT_BY_ID_SQL="SELECT * FROM HOADON WHERE MAHD =?";
    final String SELECT_DETAILS_BY_ID_SQL="SELECT * FROM HOADONCHITIET WHERE MAHD =?";
    
    
    @Override
    public void insert(HoaDon entity) {
        XJdbc.update(INSERT_HOADON_SQL, entity.getThoiDiemLap()
                ,entity.getTongTienTra(),entity.getMucGiam()
                ,entity.getDiemThuong(),entity.getMaNV()
                ,entity.getMaKH(),entity.getGioMua());
    }
    
    public void insertHDCT(HoaDon entity){ 
        XJdbc.update(INSERT_HDCT_SQL, entity.getMaHD(),entity.getMaSP(),entity.getSoLuong());
    }

    @Override
    public void update(HoaDon entity) {
        XJdbc.update(UPDATE_HOADON_SQL, entity.getThoiDiemLap(),
                entity.getTongTienTra(),entity.getMucGiam(),
                entity.getDiemThuong(),entity.getMaNV(),entity.getMaKH(),
                entity.getGioMua(),entity.getMaHD());
    }
    
    public void updateHDCT(HoaDon entity){
        XJdbc.update(UPDATE_HDCT_SQL, entity.getMaSP(),entity.getSoLuong(),entity.getMaHD());
    }

    @Override
    public void delete(Integer key) {
        XJdbc.update(DELETE_SQL, key);
    }

    @Override
    public List<HoaDon> selectAll() {
        return selectBySQL(SELECT_ALL_SQL);
    }

    @Override
    public HoaDon selectById(Integer key) {
        List<HoaDon> list = this.selectBySQL(SELECT_BY_ID_SQL, key);
        return list.size() > 0 ? list.get(0) : null; 
    }
    
    public List<HoaDon> selectDetailById(Integer key) {
        List<HoaDon> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(SELECT_DETAILS_BY_ID_SQL, key);
                while(rs.next()){
                    HoaDon hd = new HoaDon();
//                    (ThoiDiemLap,TongTienTra,MucGiam,DiemThuong,MaNV,MaKH,GioMua)
                    hd.setMaHD(rs.getInt("MaHD"));
                    hd.setSoLuong(rs.getInt("SoLuong"));
                    hd.setMaSP(rs.getInt("MaSP"));
                    list.add(hd);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    protected List<HoaDon> selectBySQL(String sql, Object... args) {
        List<HoaDon> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(sql, args);
                while(rs.next()){
                    HoaDon hd = new HoaDon();
//                    (ThoiDiemLap,TongTienTra,MucGiam,DiemThuong,MaNV,MaKH,GioMua)
                    hd.setMaHD(rs.getInt("MaHD"));
                    hd.setThoiDiemLap(rs.getDate("ThoiDiemLap"));
                    hd.setTongTienTra(rs.getDouble("TongTienTra"));
                    hd.setMucGiam(rs.getDouble("MucGiam"));
                    hd.setDiemThuong(rs.getDouble("DiemThuong"));
                    hd.setMaNV(rs.getInt("MaNV"));
                    hd.setMaKH(rs.getInt("MaKH"));
                    hd.setGioMua(rs.getString("GioMua"));
//                    hd.setSoLuong(rs.getInt("SoLuong"));
//                    hd.setMaSP(rs.getInt("MaSP"));
                    list.add(hd);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
//    private HoaDon readFromResultSet(ResultSet rs){
//        HoaDon hd = new HoaDon();
//    }
    
    public List<Object[]> getMaxID(){
       String sql ="{CALL SP_MAXHD}";
       String[] cols ={"MaxID"};
       return XJdbc.getListOfArray(sql, cols);
    }
    
}
