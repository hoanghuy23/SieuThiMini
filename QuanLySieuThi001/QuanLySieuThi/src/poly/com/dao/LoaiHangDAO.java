/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;

import java.util.ArrayList;
import java.util.List;
import poly.com.modal.LoaiHang;
import poly.com.utils.XJdbc;
import java.sql.ResultSet;
import java.util.Vector;
import java.sql.Statement;
/**
 *
 * @author nhatt
 */
public class LoaiHangDAO extends QuanLyDAO<LoaiHang, Integer> {
    final String INSERT_SQL="INSERT INTO LoaiHang(TenLH) VALUES(?)";
    final String UPDATE_SQL="UPDATE LoaiHang SET TenLH =? WHERE MaLH =?";
    final String DELETE_SQL="DELETE FROM LoaiHang WHERE MaLH =?";
    final String SELECT_ALL_SQL="SELECT * FROM LoaiHang";
    final String SELECT_BY_ID="SELECT * FROM LoaiHang WHERE MaLH=?";
    @Override
    public void insert(LoaiHang entity) {
        XJdbc.update(INSERT_SQL, entity.getTenLH());
    }

    @Override
    public void update(LoaiHang entity) {
        XJdbc.update(UPDATE_SQL, entity.getTenLH(),entity.getMaLH());
    }

    @Override
    public void delete(Integer key) {
        XJdbc.update(DELETE_SQL, key);
    }

    @Override
    public List<LoaiHang> selectAll() {
        return this.selectBySQL(SELECT_ALL_SQL);
    }

    @Override
    public LoaiHang selectById(Integer key) {
        List<LoaiHang> list = this.selectBySQL(SELECT_BY_ID, key);
        return list.size() > 0 ? list.get(0) : null; 
    }

    @Override
    protected List<LoaiHang> selectBySQL(String sql, Object... args) {
        List<LoaiHang> list = new ArrayList<LoaiHang>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(sql, args);
                while(rs.next()){
                    LoaiHang lh = new LoaiHang();
                    lh.setMaLH(rs.getInt("MaLH"));
                    lh.setTenLH(rs.getString("TenLH"));
                    list.add(lh);
                }
                
            } finally {
                rs.getStatement().getConnection().close();
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return list; 
    }
    
    public Vector<LoaiHang> selectAll_LH(){
        Vector<LoaiHang> vec = new Vector<LoaiHang>();
        try {
            ResultSet rs = XJdbc.query(SELECT_ALL_SQL);
            while(rs.next()){
                LoaiHang lh = new LoaiHang();
                lh.setMaLH(rs.getInt("MaLH"));
                lh.setTenLH(rs.getString("TenLH"));
                vec.add(lh);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return vec;
    }
    
}
