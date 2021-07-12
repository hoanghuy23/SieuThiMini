/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;

import java.util.ArrayList;
import java.util.List;
import poly.com.modal.PhieuNhap;
import poly.com.utils.XJdbc;
import java.sql.ResultSet;
/**
 *
 * @author nhatt
 */
public class PhieuNhapDAO extends QuanLyDAO<PhieuNhap , Integer>{
    final String INSERT_PN_SQL="INSERT INTO PHIEUNHAP(MaNV,ThoiDiemLap) VALUES(?,?)";
    final String INSERT_CTPN_SQL="INSERT INTO CHITIETPHIEUNHAP(MaPN,MaSP,MaNCC,SoLuong,NgaySX,NgayNhap) VALUES(?,?,?,?,?,?)";
    final String UPDATE_PN_SQL="UPDATE PHIEUNHAP SET MaNV =?,ThoiDiemLap =? WHERE MaPN =?";
    final String UPDATE_CTPN_SQL="UPDATE CHITIETPHIEUNHAP SET MaSP =?,MaNCC =?, SoLuong =?, NgaySX =?, NgayNhap =? WHERE MaPN =?";
    final String DELETE_PN_SQL="DELETE FROM PHIEUNHAP WHERE MAPN =?";
    final String SELECT_ALL_PN_SQL="SELECT * FROM PHIEUNHAP";
    static final String SELECT_DETAILS_BY_ID_SQL="SELECT * FROM CHITIETPHIEUNHAP WHERE MaPN =?";
    final String SELECT_BY_ID_SQL ="SELECT * FROM PHIEUNHAP WHERE MaPN =?";
    
    @Override
    public void insert(PhieuNhap entity) {
        XJdbc.update(INSERT_PN_SQL, entity.getMaNV(),entity.getThoiDiemLap());
    }
    
    public void insertCTPN(PhieuNhap entity){
        XJdbc.update(INSERT_CTPN_SQL, entity.getMaPN(),entity.getMaSP(),entity.getMaNCC(),entity.getSoLuong(),entity.getNgaySX(),entity.getNgayNhap());
    }

    @Override
    public void update(PhieuNhap entity) {
        XJdbc.update(UPDATE_PN_SQL, entity.getMaNV(),entity.getThoiDiemLap(),entity.getMaPN());
    }
    
    public void updateCTPN(PhieuNhap entity){
        XJdbc.update(UPDATE_CTPN_SQL, entity.getMaSP(),entity.getMaNCC(),entity.getSoLuong(),entity.getNgaySX(),entity.getNgayNhap(),entity.getMaPN());
    }

    @Override
    public void delete(Integer key) {
        XJdbc.update(DELETE_PN_SQL, key);
    }

    @Override
    public List<PhieuNhap> selectAll() {
        return selectBySQL(SELECT_ALL_PN_SQL);
    }

    @Override
    public PhieuNhap selectById(Integer key) {
        List<PhieuNhap> list = this.selectBySQL(SELECT_BY_ID_SQL, key);
        return list.size() > 0 ? list.get(0) : null; 
    }

    @Override
    protected List<PhieuNhap> selectBySQL(String sql, Object... args) {
        List<PhieuNhap> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(sql, args);
                while(rs.next()){
                    PhieuNhap pn = new PhieuNhap();
                    pn.setMaPN(rs.getInt("MaPN"));
                    pn.setThoiDiemLap(rs.getDate("ThoiDiemLap"));
                    pn.setMaNV(rs.getInt("MaNV"));
                    list.add(pn);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public static List<PhieuNhap> selectDetailsByID(int key) {
        List<PhieuNhap> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(SELECT_DETAILS_BY_ID_SQL, key);
                while(rs.next()){
                    PhieuNhap pn = new PhieuNhap();
                    pn.setMaPN(rs.getInt("MaPN"));
                    pn.setMaSP(rs.getInt("MaSP"));
                    pn.setSoLuong(rs.getInt("SoLuong"));
                    pn.setNgaySX(rs.getDate("NgaySX"));
                    pn.setNgayNhap(rs.getDate("NgayNhap"));
                    pn.setMaNCC(rs.getInt("MaNCC"));
                    list.add(pn);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    
    
    public List<Object[]> getMaxID(){
       String sql ="{CALL SP_getMaxIDPN}";
       String[] cols ={"MaxIDPN"};
       return XJdbc.getListOfArray(sql, cols);
    }
    
    
}
