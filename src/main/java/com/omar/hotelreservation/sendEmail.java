/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.omar.hotelreservation;
import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.servlet.http.*;
import javax.servlet.*;
/**
 *
 * @author omerfaruk
 */
public class sendEmail {
    static String stop = "";

    public static Boolean mailInfo(String msg, String subject, String to){
        if(to != "" || to != null){

            String from = "tot174281@gmail.com";

            String messageText = msg;

            final String username = "tot174281@gmail.com";
            final String password = "grljvfrbcgjkoxbm";

            String reddirectURL = "index.jsp";

            String host = "smtp.gmail.com";

            Properties prop = new Properties();
            prop.put("mail.smtp.auth", "true");
            prop.put("mail.smtp.starttls.enable", "true");
            prop.put("mail.smtp.host", host);
            prop.put("mail.smtp.port", "587");

            Session session1 = Session.getInstance(prop, new javax.mail.Authenticator(){
                protected PasswordAuthentication getPasswordAuthentication(){
                    return new PasswordAuthentication(username, password);
                }
            });
            try{
                Message message = new MimeMessage(session1);
                message.setFrom(new InternetAddress(from));
                message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
                message.setSubject(subject);
                message.setText(messageText);
                Transport.send(message);


            }
            catch(Exception e){
                System.out.println(e);
                return false;
            }



        }
        else{
            return false;
        }
        return true;
    }


    public static void setStop(String _stop){

        stop = _stop;
    }
    public static String getStop(){
        return stop;
    }
}