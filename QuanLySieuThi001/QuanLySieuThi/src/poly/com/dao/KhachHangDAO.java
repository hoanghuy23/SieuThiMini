/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import poly.com.modal.KhacHangTT;
import poly.com.utils.XJdbc;

/**
 *
 * @author ASUS
 */
public class KhachHangDAO extends poly.com.dao.QuanLyDAO<KhacHangTT, Integer>{

    @Override
    public void insert(KhacHangTT entity) {
        String sql = "INSERT INTO KHTT"
                + " (HoTen,DiaChi,NgayCapThe,NgayMuaGanNhat,DiemThuong,img)VALUES(?,?,?,?,?,?)";
        XJdbc.update(sql,
                entity.getHoTen(),
                entity.getDiaChi(),
                entity.getNgayCapThe(),
                entity.getNgayMuaGanNhat(),
                entity.getDiemThuong(),
                entity.getImage()
        );
    }

    @Override
    public void update(KhacHangTT entity) {
        String sql = "UPDATE KHTT SET HoTen=?,DiaChi=?,NgayCapThe=?,NgayMuaGanNhat=?,DiemThuong=?,img=? WHERE MaKH=?";
        XJdbc.update(sql, 
                entity.getHoTen(),
                entity.getDiaChi(),
                entity.getNgayCapThe(),
                entity.getNgayMuaGanNhat(),
                entity.getDiemThuong(),
                entity.getImage(),
                entity.getMaKH()
                
                );
    }

    @Override
    public void delete(Integer id) {
        String sql = "DELETE FROM KHTT WHERE MaKH";
        XJdbc.update(sql, id);
    }

    @Override
    public KhacHangTT selectById(Integer id) {
        List<KhacHangTT> list = this.selectBySQL("Select * from KHTT where MaKH=? ", id);
    return list.size()>0?list.get(0):null;
    }

    @Override
    public List<KhacHangTT> selectAll() {
        return this.selectBySQL("Select * from KHTT");
    }

    
//    protected List<KhacHangTT> selectBySql(String sql, Object... args) {
//        List<KhacHangTT> list = new ArrayList<>();
//        try {
//            ResultSet rs = null;
//            try{
//                rs = JDBC.query(sql, args);
//                while(rs.next()){
//                    KhacHangTT entity = new KhacHangTT();
//                    entity.setMaKH(rs.getInt("MaKH"));
//                    entity.setHoTen(rs.getString("HoTen"));
//                    entity.setDiaChi(rs.getString("DiaChi"));
//                    entity.setNgayCapThe(rs.getDate("NgayCapThe"));
//                    entity.setNgayMuaGanNhat(rs.getDate("NgayMuaGanNhat"));
//                    entity.setDiemThuong(rs.getDouble("DiemThuong"));
//                    list.add(entity);
//                }
//            }finally{
//                rs.getStatement().getConnection().close();
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            throw new RuntimeException(e);
//        }
//        return list;

    @Override
    protected List<KhacHangTT> selectBySQL(String sql, Object... args) {
       List<KhacHangTT> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try{
                rs = XJdbc.query(sql, args);
                while(rs.next()){
                    KhacHangTT entity = new KhacHangTT();
                    entity.setMaKH(rs.getInt("MaKH"));
                    entity.setHoTen(rs.getString("HoTen"));
                    entity.setDiaChi(rs.getString("DiaChi"));
                    entity.setNgayCapThe(rs.getDate("NgayCapThe"));
                    entity.setNgayMuaGanNhat(rs.getDate("NgayMuaGanNhat"));
                    entity.setDiemThuong(rs.getDouble("DiemThuong"));
                    entity.setImage(rs.getString("img"));
                    list.add(entity);
                }
            }finally{
                rs.getStatement().getConnection().close();
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return list;
    }
    
    public List<KhacHangTT> findByName(String tenKH){
        List<KhacHangTT> list = new ArrayList<>();
        try {
            String SELECT_BY_NAME = "SELECT * FROM KHTT WHERE HoTen LIKE N'"+tenKH+"%'";
            list = selectBySQL(SELECT_BY_NAME);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
}

    

    
    

