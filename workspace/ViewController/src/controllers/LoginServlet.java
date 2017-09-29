package controllers;

import java.io.IOException;
/*
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
*/
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;

//import beans.UserBean;

import java.io.PrintWriter;


import java.security.MessageDigest;

import java.sql.*;


//import com.octo.captcha.module.servlet.image.SimpleImageCaptchaServlet;


public class LoginServlet extends HttpServlet {
    @SuppressWarnings("compatibility:2732968566931177806")
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String UPHash = userName + passWord;
        try {
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            ResultSet rs = null;
            PreparedStatement ps = null;
             
            Statement statement = null;
            statement = conn.createStatement();
            //MD5 Hashing
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

            double sgdBalance = 0;
            double usdBalance = 0;
            double eurBalance = 0;
            String fullName = null;
            String address = null;
            String DOB = null;
            String country = null;
            String postal = null;
            String phone = null;
            String bankAcctNum = null;
            String bankAcctType = null;
            String email = null;
            String compareVerify = null;
            String userID = null;
            
            rs = statement.executeQuery("Select sgdAmount, usdAmount, eurAmount, fname, lname, address, email, DOB, country, postal, phone, bankAcctNum, idcustomer from customer where username='" + userName + "'");
            if(rs.next()){
                sgdBalance = rs.getDouble(1);
                usdBalance = rs.getDouble(2);
                eurBalance = rs.getDouble(3);
                fullName = rs.getString(4) + " " + rs.getString(5);
                address = rs.getString(6);
                email = rs.getString(7);
                DOB = rs.getString(8);
                country = rs.getString(9);
                postal = rs.getString(10);
                phone = rs.getString(11);
                bankAcctNum = rs.getString(12);
                userID = rs.getString(13);
            }
        
            ps = conn.prepareCall("Select * from customer where username=? and password=? and verifyCode=?");
            ps.setString(1, userName);
            ps.setString(2, pw);
            ps.setString(3, "Verified");
            rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("userName", userName);
                session.setAttribute("passWord", passWord);
                session.setAttribute("sgdBalance", sgdBalance);
                session.setAttribute("usdBalance", usdBalance);
                session.setAttribute("eurBalance", eurBalance);
                session.setAttribute("fullName", fullName);
                session.setAttribute("address", address);
                session.setAttribute("DOB", DOB);
                session.setAttribute("email", email);
                session.setAttribute("country", country);
                session.setAttribute("postal", postal);
                session.setAttribute("phone", phone);
                session.setAttribute("bankAcctNum", bankAcctNum);
                session.setAttribute("bankAcctType", bankAcctType);
                session.setAttribute("userID", userID);
                request.setAttribute("show", "false");
                request.getRequestDispatcher("userLogin.jsp").forward(request, response);
            } else {
                if (userName.equals("") || passWord.equals("")){
                    // User Name
                    if (userName.equals("")) {
                        request.setAttribute("showErrorUserName", "true");
                    } else {
                        request.setAttribute("showErrorUserName", "false");
                    }

                    // Password
                    if (passWord.equals("")) {
                        request.setAttribute("showErrorPassword", "true");
                    } else {
                        request.setAttribute("showErrorPassword", "false");
                    }
                }
                else{
                    request.setAttribute("show", "true");
                }
                rs = statement.executeQuery("select verifyCode from customer Where username='"+ userName + "' AND password='" + pw + "'");
                if(rs.next()){
                    compareVerify = rs.getString(1);
                    if (!compareVerify.equals("Verified")){
                        request.setAttribute("showErrorVerified", "true");
                        request.setAttribute("show", "false");
                    }
                    else if (compareVerify.equals("Verified")){
                        request.setAttribute("showErrorVerified", "false");
                    }
                }
                else{
                    
                }
                request.setAttribute("userName", userName);
                request.setAttribute("passWord", passWord);
                request.getRequestDispatcher("LoginPage.jsp").forward(request, response);
            }           
            // close all the connections.
            rs.close();
            conn.close();
        } catch (Exception e) {
            out.print(e);
        }
    }

}
