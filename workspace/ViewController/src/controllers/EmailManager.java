package controllers;

import java.util.Properties;

import javax.mail.Message;

import javax.mail.Session;

import javax.mail.Transport;

import javax.mail.internet.InternetAddress;

import javax.mail.internet.MimeMessage;


public class EmailManager {


    public EmailManager(){}

    public void sendEmail(String subject,String content,String email){
        
        boolean check = false;
        try{
        // setup the mail server properties
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        // set up the message
        Session session = Session.getInstance(props);
        Message message = new MimeMessage(session);
        // add a TO address
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            
            // add a TO address
          //  message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("ohayoucollections@gmail.com"));
            // add a multiple CC addresses
            //message.setRecipients(Message.RecipientType.CC, InternetAddress.parse("yyyyy@gmail.com,zzzzzz@yahoo.com"));
            message.setSubject(subject);
            message.setContent(content, "text/plain");
            Transport transport = session.getTransport("smtp");
            transport.connect("smtp.gmail.com", 25, "ispjproject@gmail.com", "project12345");
            transport.sendMessage(message, message.getAllRecipients());
            System.out.print("successfully send email");
   
        } catch (Exception e) {
            System.out.print(e);
            System.out.print("unsucessful");
        
        }
      
    }
}

  

       