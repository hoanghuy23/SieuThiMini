/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.utils;

/**
 *
 * @author ADMIN
 */
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.util.Scanner;
import org.krysalis.barcode4j.impl.code128.Code128Bean;
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider;
public class Barcode_Image {
	public static void main(String[] args) {
            Scanner scan = new Scanner(System.in);
            String img;
            int maVach = 29;
            for(int i = 5; i<=5;i++){
                System.out.println("Nhập tên ảnh: ");
                img = scan.nextLine();
                Barcode_Image.createImage(img, "0000"+String.valueOf(maVach));
                maVach++;
                
                
		System.out.println("finished");
            }
		
	}
	public static void createImage(String image_name,String myString)  {
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
		FileOutputStream fos = new FileOutputStream("Barcode\\"+image_name+".png");
		fos.write(baos.toByteArray());
		fos.flush();
		fos.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
