/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.dao;

import java.util.Date;
import java.util.List;
import poly.com.utils.XJdbc;

/**
 *
 * @author nhatt
 */
public class ThongKeDAO {
    
    public List<Object[]> getKhoHang(){
       String sql ="{CALL getKhoHang}";
       String[] cols ={"MASP","SoLuongHang","NgayNhapGN"};
       return XJdbc.getListOfArray(sql, cols);
    }
        public List<Object[]> getTonKho(){
       String sql ="{CALL getTonKho}";
       String[] cols ={"MASP","SLTonKho"};
       return XJdbc.getListOfArray(sql, cols);
    }
    public List<Object[]> getChiPhi(Date from , Date to){
        String sql ="{CALL SP_ChiPhi(?,?)}";
        String[] cols ={"MaSP","ChiPhi"};  
        return XJdbc.getListOfArray(sql,cols,from,to);
    }
    
    public List<Object[]> getDoanhThu(Date from , Date to){
        String sql ="{CALL SP_DoanhThu(?,?)}";
        String[] cols ={"MaSP","DoanhThu"};
        return XJdbc.getListOfArray(sql,cols,from,to);
    }
        public List<Object[]> getLoiNhuan(Date from , Date to){
        String sql ="{CALL SP_LoiNhuan(?,?)}";
        String[] cols ={"MaSP","Loi nhuan"};  
        return XJdbc.getListOfArray(sql,cols,from,to);
    }
    
}
