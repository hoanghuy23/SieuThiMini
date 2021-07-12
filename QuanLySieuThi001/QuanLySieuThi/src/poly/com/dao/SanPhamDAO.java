/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;

import java.util.ArrayList;
import java.util.List;
import poly.com.modal.SanPham;
import poly.com.utils.XJdbc;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author nhatt
 */
public class SanPhamDAO extends QuanLyDAO<SanPham, Integer> {
    final private String INSERT_SQL ="INSERT INTO SanPham"
            + "(TenSP,GiaMua,GiaBan,HSD,VAT,MaLH,DonVi,img,MaVach) VALUES(?,?,?,?,?,?,?,?,?)";
    final private String UPDATE_SQL ="UPDATE SanPham SET "
            + "TenSP =?,GiaMua =?,GiaBan =?,HSD =?,VAT =?,MaLH =?,DonVi =?,img =?,MaVach =? WHERE MaSP =?";
    final private String DELETE_SQL ="DELETE FROM SanPham WHERE MaSP =?";
    final private String SELECT_ALL_SQL="SELECT * FROM SanPham";
    final private String SELECT_BY_ID_SQL="SELECT * FROM SanPham WHERE MaSP =?";
    final private String SELECT_BY_BARCODE="SELECT * FROM SanPham WHERE MaVach=?";
    final private String SELECT_BY_MaLH ="SELECT * FROM SanPham WHERE MaLH =?";
    final private String GET_MAX_ID ="SELECT MAX(MaSP) AS 'Max' FROM SANPHAM";
    
    @Override
    public void insert(SanPham entity) {
        XJdbc.update(INSERT_SQL, entity.getTenSP(),
                entity.getGiaMua(),entity.getGiaBan(),
                entity.getHsd(),entity.getVAT(),
                entity.getMaLH(),entity.getDonVi(),
                entity.getImg(),entity.getMaVach());   
    }

    @Override
    public void update(SanPham entity) {
        XJdbc.update(UPDATE_SQL, entity.getTenSP(),
                entity.getGiaMua(),entity.getGiaBan(),
                entity.getHsd(),entity.getVAT(),
                entity.getMaLH(),entity.getDonVi(),
                entity.getImg(),entity.getMaVach(),entity.getMaSP());
    }

    @Override
    public void delete(Integer key) {
        XJdbc.update(DELETE_SQL, key);
    }

    @Override
    public SanPham selectById(Integer key) {
        List<SanPham> list = this.selectBySQL(SELECT_BY_ID_SQL, key);
        return list.size() > 0 ? list.get(0) : null;
    }

    @Override
    public List<SanPham> selectAll() {
        return this.selectBySQL(SELECT_ALL_SQL);
    }

    @Override
    protected List<SanPham> selectBySQL(String sql, Object... args) {
        List<SanPham> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(sql, args);
                while(rs.next()){
                    SanPham sp = readFromResultSet(rs);
                    list.add(sp);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public List<SanPham> selectSanPhamByLH(int maLH){
        List<SanPham> list = new ArrayList<>();
        try {
            list = selectBySQL(SELECT_BY_MaLH, maLH);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<SanPham> findByName(String tenSP){
        List<SanPham> list = new ArrayList<>();
        try {
            String SELECT_BY_NAME = "SELECT * FROM SanPham WHERE tenSP LIKE N'"+tenSP+"%'";
            list = selectBySQL(SELECT_BY_NAME);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
 
    
    public SanPham readFromResultSet(ResultSet rs) throws SQLException{
        SanPham sp = new SanPham(); 
        sp.setMaSP(rs.getInt("MaSP"));
        sp.setTenSP(rs.getString("TenSP"));
        sp.setGiaMua(rs.getDouble("GiaMua"));
        sp.setGiaBan(rs.getDouble("GiaBan"));
        sp.setHsd(rs.getString("HSD"));
        sp.setVAT(rs.getDouble("VAT"));
        sp.setMaLH(rs.getInt("MaLH"));
        sp.setDonVi(rs.getString("DonVi"));
        sp.setImg(rs.getString("img"));
        sp.setMaVach(rs.getString("MaVach"));
        return sp;
    }
    
    public List<Object[]> getMaxID(){
       String sql ="{CALL SP_MAXID}";
       String[] cols ={"MaxID"};
       return XJdbc.getListOfArray(sql, cols);
    }
    
    public SanPham ScanBarcode(String Barcode){
        List<SanPham> list = this.selectBySQL(SELECT_BY_BARCODE, Barcode);
        return list.size() > 0 ? list.get(0) : null; 
    }
    
    
}
