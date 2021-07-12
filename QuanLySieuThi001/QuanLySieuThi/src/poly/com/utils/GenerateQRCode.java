/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.utils;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;
import org.krysalis.barcode4j.impl.code128.Code128Bean;
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider;

/**
 *
 * @author nhatt
 */
public class GenerateQRCode {

    public GenerateQRCode() {
        
    }


    public void generateQRCode(String data,File src) throws FileNotFoundException, IOException{ 
       ByteArrayOutputStream out = QRCode.from(data).to(ImageType.PNG).stream();
       File f = new File("QRCode", src.getName());
       FileOutputStream fos = new FileOutputStream(f);
       if(!f.getParentFile().exists()){
            f.getParentFile().mkdirs();
       }
       try {
            Path from = Paths.get(src.getAbsolutePath());
            Path to = Paths.get(f.getAbsolutePath());
            Files.copy(from, to, StandardCopyOption.REPLACE_EXISTING);
        } 
        catch (Exception ex) {
            throw new RuntimeException(ex);
        }
       fos.write(out.toByteArray());
       fos.flush();
    }
    
    public static void createBarcode(String image_name,String myString)  {
		try {
		Code128Bean code128 = new Code128Bean();
		code128.setHeight(15f);
		code128.setModuleWidth(0.3);
		code128.setQuietZone(10);
		code128.doQuietZone(true);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		BitmapCanvasProvider canvas = new BitmapCanvasProvider(baos, "image/x-png", 300, BufferedImage.TYPE_BYTE_BINARY, false, 0);
		code128.generateBarcode(canvas, myString);
		canvas.finish();
		//write to png file
		FileOutputStream fos = new FileOutputStream("Barcode\\"+image_name);
		fos.write(baos.toByteArray());
		fos.flush();
		fos.close();
		} catch (Exception e) {
			// TODO: handle exception
                        e.printStackTrace();
		}
	}



}
