/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import poly.com.modal.PhieuNhap;
import poly.com.modal.PhieuXuat;
import poly.com.utils.XJdbc;

/**
 *
 * @author nhatt
 */
public class PhieuXuatDAO extends QuanLyDAO<PhieuXuat, Integer> {
    final String INSERT_PX_SQL="INSERT INTO PHIEUXUAT(MaNV,ThoiDiemLap) VALUES(?,?)";
    final String INSERT_CTPX_SQL="INSERT INTO CHITIETPHIEUXUAT(MaPX,MaSP,SoLuongBan,NgayXuat) VALUES(?,?,?,?)";
    final String UPDATE_PX_SQL="UPDATE PHIEUXUAT SET MaNV =?,ThoiDiemLap =? WHERE MaPX =?";
    final String UPDATE_CTPX_SQL="UPDATE CHITIETPHIEUXUAT SET MaSP =?,SoLuongBan =?, NgayXuat =? WHERE MaPX =?";
    final String DELETE_PX_SQL="DELETE FROM PHIEUXUAT WHERE MaPX =?";
    final String SELECT_ALL_PX_SQL="SELECT * FROM PHIEUXUAT";
    static final String SELECT_DETAILS_BY_ID_SQL="SELECT * FROM CHITIETPHIEUXUAT WHERE MaPX =?";
    final String SELECT_BY_ID_SQL ="SELECT * FROM PHIEUXUAT WHERE MaPX =?";
     
    
    @Override
    public void insert(PhieuXuat entity) {
        XJdbc.update(INSERT_PX_SQL, entity.getMaNV(),entity.getThoiDiemLap());
    }
    
    public void insertCTPX(PhieuXuat entity){
        XJdbc.update(INSERT_CTPX_SQL, entity.getMaPX(),entity.getMaSP(),entity.getSoLuongBan(),entity.getNgayXuat());
    }

    @Override
    public void update(PhieuXuat entity) {
        XJdbc.update(UPDATE_PX_SQL,entity.getMaNV(),entity.getThoiDiemLap(),entity.getMaPX());
    }
    
    public void updateCTPX(PhieuXuat entity){
        XJdbc.update(UPDATE_CTPX_SQL, entity.getMaSP(),entity.getSoLuongBan(),entity.getNgayXuat(),entity.getMaPX());
    }

    @Override
    public void delete(Integer key) {
        XJdbc.update(DELETE_PX_SQL, key);
    }

    @Override
    public List<PhieuXuat> selectAll() {
        return selectBySQL(SELECT_ALL_PX_SQL);
    }

    @Override
    public PhieuXuat selectById(Integer key) {
        List<PhieuXuat> list = this.selectBySQL(SELECT_BY_ID_SQL, key);
        return list.size() > 0 ? list.get(0) : null; 
    }

    @Override
    protected List<PhieuXuat> selectBySQL(String sql, Object... args) {
        List<PhieuXuat> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(sql, args);
                while(rs.next()){
                    PhieuXuat px = new PhieuXuat();
                    px.setMaPX(rs.getInt("MaPX"));
                    px.setThoiDiemLap(rs.getDate("ThoiDiemLap"));
                    px.setMaNV(rs.getInt("MaNV"));
                    list.add(px);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public static List<PhieuXuat> selectDetailsByID(int key) {
        List<PhieuXuat> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(SELECT_DETAILS_BY_ID_SQL, key);
                while(rs.next()){
                    PhieuXuat px = new PhieuXuat();
                    px.setMaPX(rs.getInt("MaPX"));
                    px.setMaSP(rs.getInt("MaSP"));
                    px.setSoLuongBan(rs.getInt("SoLuongBan"));
                    px.setNgayXuat(rs.getDate("NgayXuat"));
                    
                    list.add(px);
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
       String sql ="{CALL SP_getMaxIDPX}";
       String[] cols ={"MaxIDPX"};
       return XJdbc.getListOfArray(sql, cols);
    }
    
}
