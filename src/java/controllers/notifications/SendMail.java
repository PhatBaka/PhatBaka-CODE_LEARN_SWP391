/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.notifications;
// File Name SendEmail.java

import java.util.Date;
import java.util.Properties;
 
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
// File Name SendEmail.java
/**
 *
 * @author DELL
 */
public class SendMail {
    public static void send(String host, String port,
            final String userName, final String password, String toAddress,
            String subject, String message) throws AddressException,
            MessagingException 
    { 
        //create an instance of Properties Class   
        Properties props = new Properties();
     
      
        props.put("mail.smtp.host", "smtp.gmail.com");
  
        props.put("mail.smtp.port", "587");		
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
     
        /* Pass Properties object(props) and Authenticator object   
           for authentication to Session instance 
        */
               
            Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(userName, password);
            }
        };

        Session session = Session.getInstance(props, auth);
       
 
        // creates a new e-mail message
        Message dgv = new MimeMessage(session);
 
        dgv.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        dgv.setRecipients(Message.RecipientType.TO, toAddresses);
        dgv.setSubject(subject);
        dgv.setSentDate(new Date());
        dgv.setText(message);
 
        // sends the e-mail
        Transport.send(dgv);
 
    }  
}
