/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
/**
 *
 * @author nhatt
 */
public class XJdbc {
    
    private static String driver ="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static String dburl = "jdbc:sqlserver://localhost:1433;database=QuanLySieuThi";
    private static String user = "sa";
    private static String pass = "SQLPhuc";
    public static Connection conn ;
    
    public static Connection ConnectDb(){
        try{
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection conn=DriverManager.getConnection("jdbc:mysql://Localhost/quanlysach", "root", "");
//            return conn;
            Class.forName(driver);
            conn = DriverManager.getConnection(dburl,user,pass);
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        
        }
        return conn;
    }
    public XJdbc() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(dburl,user,pass);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
    
    
    public static PreparedStatement getStmt(String sql,Object...args) throws SQLException{ 
        Connection con = DriverManager.getConnection(dburl,user,pass);
        PreparedStatement stmt = null; 
        if(sql.trim().startsWith("{")){
            stmt = con.prepareCall(sql);
        }else{
            stmt = con.prepareStatement(sql);
        }
        
        for(int i = 0;i<args.length; i++){
            stmt.setObject(i+1, args[i]);
        }
        return stmt;
    }
    
    public static int update(String sql,Object...args){
        try {
            PreparedStatement stmt = XJdbc.getStmt(sql, args);
            try {
                return stmt.executeUpdate();
            } finally {
                stmt.getConnection().close();
            }
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
        
    }
    
    public static ResultSet query(String sql, Object...args) throws SQLException{
        PreparedStatement stmt = XJdbc.getStmt(sql, args);
        return stmt.executeQuery();
    }
    
    public static Object value(String sql, Object...args){
        try {
            ResultSet rs = XJdbc.query(sql, args);
            if(rs.next()){
                return rs.getObject(1);
            }
            rs.getStatement().getConnection().close();
            return null; 
        } catch (SQLException e) {
            throw new RuntimeException(e); 
        }
        
    }
    
    
    public static List<Object[]> getListOfArray(String sql,String[] cols,Object...args){
        try {
            List<Object[]> list = new ArrayList<>();
            ResultSet rs = XJdbc.query(sql, args);
            while(rs.next()){
                Object[] vals = new Object[cols.length];
                for(int i = 0;i<cols.length;i++){
                    vals[i] = rs.getObject(cols[i]);
                }
                list.add(vals);
            }
            rs.getStatement().getConnection().close();
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    
}

