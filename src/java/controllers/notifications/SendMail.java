/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.notifications;
// File Name SendEmail.java

import com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException;
import java.util.Date;
import java.util.Properties;
 
//import javax.mail.Authenticator;
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.AddressException;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
// File Name SendEmail.java
/**
 *
 * @author DELL
 */
public class SendMail {
    public static void send(String to, String subject,
            String message,  String user, String pass
          ) throws 
            MessagingException 
    { 
//        //create an instance of Properties Class   
//        Properties props = new Properties();
//        props.put("mail.smtp.host", "smtp.gmail.com");
//        props.put("mail.smtp.port", "587");		
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.starttls.enable", "true");
//        Authenticator auth = new Authenticator() {
//            public PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication(user, pass);
//            }
//        };
//
//        Session session = Session.getInstance(props, auth);
//         // creates a new e-mail message
//        Message dgv = new MimeMessage(session);
//        dgv.setFrom(new InternetAddress(user));
//        InternetAddress[] toAddresses = { new InternetAddress(to) };
//        dgv.setRecipients(Message.RecipientType.TO, toAddresses);
//        dgv.setSubject(subject);
//        dgv.setSentDate(new Date());
//        dgv.setText(message);
//        // sends the e-mail
//        Transport.send(dgv);
// 
   }  
}
