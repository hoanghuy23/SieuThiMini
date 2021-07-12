/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.utils;

import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author nhatt
 */
public class SendEmailToRecover {
    public static final String APP_EMAIL ="ministop742@gmail.com";
    
    public static final String APP_PASSWORD = "Nhattan123";
   

    public SendEmailToRecover() {
    }

    

    
    public static void CodeToRecover(String emailReceiver,String code){
        
        
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", 465);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.port", 465);
        
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(APP_EMAIL, APP_PASSWORD);
            }
        });
        
        
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(APP_EMAIL));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(emailReceiver));
            
            // 3) create HTML content
            message.setSubject("Xác minh tài khoản nhân viên Ministop");
            String htmlContent = "<h1>Welcome to <a href=\"ministop.vn\">Ministop</a></h1>" +
                    "<img src=\"http://ministop.vn/img/campaign/slide/5fb4e12e446ed_7e4ed5586af0072859d50c6e7c7e6238.jpg\" " 
                    + " width=\"300\" " + " height=\"180\" " + " border=\"0\" " + " alt=\"Ministop.vn\" /><br/>"
                    + "<a>Đây là mã xác minh tài khoản của bạn: </a>" +code;
            message.setContent(htmlContent, "text/html");
             
            // 4) send message
            Transport.send(message);
 
            System.out.println("Message sent successfully");
        } catch (MessagingException ex) {
            ex.printStackTrace();
        }
        
        
    }
}
