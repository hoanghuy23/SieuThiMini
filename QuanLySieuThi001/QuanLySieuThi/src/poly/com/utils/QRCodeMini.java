/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.utils;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import javax.swing.JFileChooser;
import net.glxn.qrgen.image.ImageType;
import net.glxn.qrgen.QRCode;
/**
 *
 * @author ADMIN
 */
public class QRCodeMini {
    public static void main(String[] args) throws Exception {
        
    
      String data = "PhucHN;333";
    ByteArrayOutputStream out = QRCode.from(data).to(ImageType.PNG).stream();
        JFileChooser choose  = new JFileChooser();
        int x = choose.showSaveDialog(null);
        if(x == JFileChooser.APPROVE_OPTION)
        {
         String file = choose.getSelectedFile().getAbsolutePath();
         FileOutputStream fos = new FileOutputStream(file);
         fos.write(out.toByteArray());
        fos.flush();
        
        } 
        
}
    }
