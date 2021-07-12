/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import poly.com.dao.QuanLyDAO;
import poly.com.modal.NhaCungCap;
import poly.com.utils.XJdbc;
/**
 *
 * @author ASUS
 */
public class NhaCCDAO extends QuanLyDAO<NhaCungCap, Integer>{

    @Override
    public void insert(NhaCungCap entity) {
        String sql = "INSERT INTO NHACC(TenNCC,DiaChi,DienThoai)VALUES(?,?,?)";
        XJdbc.update(sql, 
                entity.getTenNCC(),
                entity.getDiaChi(),
                entity.getDienThoai()
        );
    }

    @Override
    public void update(NhaCungCap entity) {
        String sql = "UPDATE NHACC SET TenNCC=?,DiaChi=?,DienThoai=? WHERE MaNCC=?";
        XJdbc.update(sql, 
                entity.getTenNCC(),
                entity.getDiaChi(),
                entity.getDienThoai(),
                entity.getMaNCC()
            );
    }

    @Override
    public void delete(Integer ID) {
    String sql = "DELETE FROM NHACC WHERE MaNCC=?";
    XJdbc.update(sql, ID);
    }

    @Override
    public List<NhaCungCap> selectAll() {
        return this.selectBySQL("SELECT*FROM NHACC");
    }

    @Override
    public NhaCungCap selectById(Integer ID) {
        List<NhaCungCap> list =  this.selectBySQL("SELECT * FROM NHACC WHERE MaNCC=?", ID);
        return list.size()>0 ? list.get(0) : null;
    }

    @Override
    protected List<NhaCungCap> selectBySQL(String sql, Object... args) {
        List<NhaCungCap> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try {
                rs = XJdbc.query(sql, args);
                while (rs.next()) {                    
                    NhaCungCap entity = new NhaCungCap();
                    entity.setMaNCC(rs.getInt("MaNCC"));
                    entity.setTenNCC(rs.getString("TenNCC"));
                    entity.setDiaChi(rs.getString("DiaChi"));
                    entity.setDienThoai(rs.getString("DienThoai"));
                    list.add(entity);
                }
            } finally {
                rs.getStatement().getConnection().close();
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return list;
    }
    
}
