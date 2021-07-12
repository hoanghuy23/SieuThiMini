/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.utils;
import java.text.NumberFormat;
/**
 *
 * @author nhatt
 */
public class XConvert {
    public static String formatMoney(double money){
        return NumberFormat.getNumberInstance().format(money);
    }
    
    public static double convertToDouble(String money){
        try {
            return NumberFormat.getNumberInstance().parse(money).doubleValue();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    
    
}
