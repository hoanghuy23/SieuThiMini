/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.utils;

/**
 *
 * @author nhatt
 */
public class XSqueezeString {
    static int i;
   
    public static String squeeze(String s){
        String str = "";
        for(i=0;i<s.length();i++)
        {
            char ch=s.charAt(i);
            if(ch != ' ')
            str += ch;
        }
        return str;
    }
}
