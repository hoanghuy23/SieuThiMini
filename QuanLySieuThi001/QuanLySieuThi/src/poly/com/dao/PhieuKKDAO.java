/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import poly.com.modal.PhieuKiemKe;
import poly.com.modal.PhieuXuat;
import poly.com.utils.XJdbc;

/**
 *
 * @author nhatt
 */
public class PhieuKKDAO extends QuanLyDAO<PhieuKiemKe, Integer> {
    final String INSERT_KK_SQL="INSERT INTO PhieuKiemKe(MaNV,ThoiDiemLap) VALUES(?,?)";
    final String INSERT_CTKK_SQL="INSERT INTO PhieuKKCHITIET(MaPhieuKK,MaSP,SLTonKho) VALUES(?,?,?)";
    final String UPDATE_KK_SQL="UPDATE PhieuKiemKe SET MaNV =?,ThoiDiemLap =? WHERE MaPhieuKK =?";
    final String UPDATE_CTKK_SQL="UPDATE PhieuKKCHITIET SET MaSP =?,SLTonKho =? WHERE MaPhieuKK =?";
    final String DELETE_KK_SQL="DELETE FROM PhieuKiemKe WHERE MaPhieuKK =?";
    final String SELECT_ALL_KK_SQL="SELECT * FROM PhieuKiemKe";
    static final String SELECT_DETAILS_BY_ID_SQL="SELECT * FROM PhieuKKCHITIET WHERE MaPhieuKK =?";
    final String SELECT_BY_ID_SQL ="SELECT * FROM PhieuKiemKe WHERE MaPhieuKK =?";
    
    @Override
    public void insert(PhieuKiemKe entity) {
        XJdbc.update(INSERT_KK_SQL, entity.getMaNV(),entity.getThoiDiemLap());
    }
    
    public void insertKKCT(PhieuKiemKe entity){
        XJdbc.update(INSERT_CTKK_SQL, entity.getMaPhieuKK(),entity.getMaSP(),entity.getSLTonKho());
    }

    @Override
    public void update(PhieuKiemKe entity) {
        XJdbc.update(UPDATE_KK_SQL, entity.getMaNV(),entity.getThoiDiemLap(),entity.getMaPhieuKK());
    }
    
    public void updateCTPX(PhieuKiemKe entity){
        XJdbc.update(UPDATE_CTKK_SQL, entity.getMaSP(),entity.getSLTonKho(),entity.getMaPhieuKK());
    }

    @Override
    public void delete(Integer key) {
        XJdbc.update(DELETE_KK_SQL, key);
    }

    @Override
    public List<PhieuKiemKe> selectAll() {
        return selectBySQL(SELECT_ALL_KK_SQL);
    }

    @Override
    public PhieuKiemKe selectById(Integer key) {
        List<PhieuKiemKe> list = this.selectBySQL(SELECT_BY_ID_SQL, key);
        return list.size() > 0 ? list.get(0) : null; 
    }

    @Override
    protected List<PhieuKiemKe> selectBySQL(String sql, Object... args) {
        List<PhieuKiemKe> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(sql, args);
                while(rs.next()){
                    PhieuKiemKe pkk = new PhieuKiemKe();
                    pkk.setMaPhieuKK(rs.getInt("MaPhieuKK"));
                    pkk.setThoiDiemLap(rs.getDate("ThoiDiemLap"));
                    pkk.setMaNV(rs.getInt("MaNV"));
                    list.add(pkk);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public static List<PhieuKiemKe> selectDetailsByID(int key) {
        List<PhieuKiemKe> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(SELECT_DETAILS_BY_ID_SQL, key);
                while(rs.next()){
                    PhieuKiemKe pkk = new PhieuKiemKe();
                    pkk.setMaPhieuKK(rs.getInt("MaPhieuKK"));
                    pkk.setMaSP(rs.getInt("MaSP"));
                    pkk.setSLTonKho(rs.getInt("SLTonKho"));
                    
                    list.add(pkk);
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
       String sql ="{CALL SP_getMaxIDPKK}";
       String[] cols ={"MaxID"};
       return XJdbc.getListOfArray(sql, cols);
    }
    
}
