package controllers;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;

import controllers.EmailManager;

import java.io.PrintWriter;

import java.sql.*;


import com.octo.captcha.module.servlet.image.SimpleImageCaptchaServlet;

import java.security.MessageDigest;

import java.util.Random;
import java.security.SecureRandom;



public class PassRecoveryServlet extends HttpServlet {
    
    // Random password generator  
    private static final Random RANDOM = new SecureRandom();
     /** Length of password. @see #generateRandomPassword() */
     public static final int PASSWORD_LENGTH = 8;
     /**
      * Generate a random String suitable for use as a temporary password.
      *
      * @return String suitable for use as a temporary password
      * @since 2.4
      */
     public static String generateRandomPassword()
     {
        
         String letters = "abcdefghijkmnpqrstuvwxyz123456789";

         String rpw = "";
         for (int i=0; i<PASSWORD_LENGTH; i++)
         {
             int index = (int)(RANDOM.nextDouble()*letters.length());
             rpw += letters.substring(index, index+1);
         }
         return rpw;
     }
     
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String userName = request.getParameter("userName");
            String email = request.getParameter("email");
            boolean check = false;
            System.out.println(userName);
            System.out.println(email);
            
            try {

                DataManager connection = new DataManager();
                Connection conn = connection.getConnection();
                PreparedStatement ps = null;
                ResultSet rs = null;
                
                if (userName.equals("") || email.equals("")){
                    // User Name
                    if (userName.equals("")) {
                        request.setAttribute("showErrorUserName", "true");
                    } else {
                        request.setAttribute("showErrorUserName", "false");
                    }
                    // Email
                    if (email.equals("")) {
                        request.setAttribute("showErrorEmail", "true");
                    } else {
                        request.setAttribute("showErrorEmail", "false");
                    }
                    request.setAttribute("userName", userName);
                    request.setAttribute("email", email);
                    request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
                }
                else{
                    ps = conn.prepareCall("Select * from customer where username=? and email=?");
                    ps.setString(1, userName);
                    ps.setString(2, email);
                    rs = ps.executeQuery();
                }
                if (rs.next()) {                  
                    String rpw = generateRandomPassword();
                    
                    EmailManager recoveryMail = new EmailManager();
                    recoveryMail.sendEmail("Recovery Mail", "Your New Password is : "+ rpw, email);
                    HttpSession session = request.getSession();
                    request.setAttribute("showToLogin", "true");
                    session.setAttribute("showToLoginMessage", "A randomly generated password has been sent to your email!");
                    request.getRequestDispatcher("LoginPage.jsp").forward(request, response);
                    
                    String UPHash = userName + rpw;
                    MessageDigest md;
              
                     md = MessageDigest.getInstance("MD5");
                    
                    md.update(UPHash.getBytes());
                    
                           byte byteData[] = md.digest();
                    
                           //convert the byte to hex format method 1
                           StringBuffer hashValue = new StringBuffer();
                           for (int i = 0; i < byteData.length; i++) {
                            hashValue.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
                           }
                         
                          String pw = hashValue.toString();
                    
                           System.out.println("Digest(in hex format):: " + pw);
                    ps = conn.prepareCall("Update customer set password = ? where username= ? AND email =?");
                    ps.setString(1,pw);
                    ps.setString(2,userName);
                    ps.setString(3,email);
                    ps.executeUpdate();
                  
                 
                    
                } else {
                    request.setAttribute("showErrorNotMatch", "true");
                    request.setAttribute("showErrorUserName", "false");
                    request.setAttribute("showErrorEmail", "false");
                    request.setAttribute("userName", userName);
                    request.setAttribute("email", email);
                    request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
                }

            } catch (Exception e) {
                out.print(e);

            }
       

    }


}
