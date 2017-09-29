package controllers;

import com.octo.captcha.module.servlet.image.SimpleImageCaptchaServlet;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
//import org.jasypt.util.text.TextEncryptor;
import java.security.MessageDigest;

//import beans.UserBean;

import java.io.PrintWriter;

import java.security.NoSuchAlgorithmException;

//import model.Validation;
import java.security.SecureRandom;

import java.sql.*;

import java.util.Random;


//import org.jasypt.util.password.BasicPasswordEncryptor;
//import org.jasypt.util.text.BasicTextEncryptor;


public class RegisterServlet extends HttpServlet {
    
    public static final int PASSWORD_LENGTH = 8;
    public static final int PINPASSWORD_LENGTH = 6;
    private static final Random RANDOM = new SecureRandom();
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int check = 0;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String firstName = request.getParameter("name1");
        String lastName = request.getParameter("name2");
        String userName = request.getParameter("userName");
        String NRIC = request.getParameter("NRIC");
        String address = request.getParameter("address");
        String postal = request.getParameter("postal");
        String email = request.getParameter("email");
        String passWord = request.getParameter("passWord");
        String gender = request.getParameter("sex");
        String birthDateYear = request.getParameter("birth.year");
        String birthDateMonth = request.getParameter("birth.month");
        String birthDateDay = request.getParameter("birth.day");
        String birthDate = birthDateYear + "/" + birthDateMonth + "/" + birthDateDay;
        String country = request.getParameter("country_cd");
        String phoneNo = request.getParameter("tel_home");
        String bankAcctNum = request.getParameter("bankAcctNum");
        String UPHash = userName + passWord;

        // BasicTextEncryptor textEncryptor = new BasicTextEncryptor();
        //textEncryptor.setPassword("SHA-1");
        //String passWord = textEncryptor.encrypt(password); //myEncryptedText
        //System.out.println("Encrypted password is :" + passWord);
        //String plainText = textEncryptor.decrypt(passWord);
        //System.out.println("Decrypted password is :" + plainText);
        System.out.println("Password : " + passWord);
        System.out.println(UPHash);
        //MD5 Hashing
        MessageDigest md;
        try {
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            ResultSet rs = null;
            PreparedStatement ps = null;
            
//            Statement statement = null;
//            statement = conn.createStatement();

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

            String userCaptchaResponse = request.getParameter("jcaptcha");
            boolean captchaPassed = SimpleImageCaptchaServlet.validateResponse(request, userCaptchaResponse);
            if (firstName.equals("") || lastName.equals("") || NRIC.equals("") || userName.equals("") ||
                email.equals("") || passWord.equals("") || gender.equals("0") || birthDateYear.equals("") ||
                birthDateMonth.equals("") || birthDateDay.equals("") || country.equals("") || phoneNo.equals("") || 
                bankAcctNum.equals("") || captchaPassed == false) {
                check = 0;
                out.print("Fail to Register!");
                // First Name
                if (firstName.equals("")) {
                    request.setAttribute("showErrorFirstName", "true");
                } else {
                    request.setAttribute("showErrorFirstName", "false");
                }
                // Last Name
                if (lastName.equals("")) {
                    request.setAttribute("showErrorLastName", "true");
                } else {
                    request.setAttribute("showErrorLastName", "false");
                }
                // NRIC
                if (NRIC.equals("")) {
                    request.setAttribute("showErrorNRIC", "true");
                } else {
                    request.setAttribute("showErrorNRIC", "false");
                }
                // Address
                if (address.equals("")) {
                    request.setAttribute("showErrorAddress", "true");
                } else {
                    request.setAttribute("showErrorAddress", "false");
                }
                // Postal
                if (postal.equals("")) {
                    request.setAttribute("showErrorPostal", "true");
                } else {
                    request.setAttribute("showErrorPostal", "false");
                }
                // Email
                if (email.equals("")) {
                    request.setAttribute("showErrorEmail", "true");
                } else {
                    request.setAttribute("showErrorEmail", "false");
                }
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

                // PhoneNo
                if (phoneNo.equals("")) {
                    request.setAttribute("showErrorPhoneNo", "true");
                } else {
                    request.setAttribute("showErrorPhoneNo", "false");
                }
                // Date of Birth
                if (birthDateYear.equals("") || birthDateMonth.equals("") || birthDateDay.equals("")) {
                    request.setAttribute("showErrorBirth", "true");
                } else {
                    request.setAttribute("showErrorBirth", "false");
                }
                // Bank Account Num
                if (bankAcctNum.equals("")) {
                    request.setAttribute("showErrorBankAcctNum", "true");
                } else {
                    request.setAttribute("showErrorBankAcctNum", "false");
                }
                // Captcha
                if (captchaPassed == false) {
                    request.setAttribute("showErrorCaptcha", "true");
                } else {
                    request.setAttribute("showErrorCaptcha", "false");
                }
                

                request.setAttribute("showError", "true");
                request.setAttribute("showErrorMessage", "*Please fill up all the fields!");
                request.setAttribute("firstName", firstName);
                request.setAttribute("lastName", lastName);
                request.setAttribute("userName", userName);
                request.setAttribute("email", email);
                request.setAttribute("NRIC", NRIC);
                request.setAttribute("address", address);
                request.setAttribute("postal", postal);
                request.setAttribute("passWord", passWord);
                request.setAttribute("birthDateYear", birthDateYear);
                request.setAttribute("birthDateMonth", birthDateMonth);
                request.setAttribute("birthDateDay", birthDateDay);
                request.setAttribute("phoneNo", phoneNo);
                request.setAttribute("bankAcctNum", bankAcctNum);
                request.setAttribute("fromRegisterPage", "true");
                request.getRequestDispatcher("registerPage.jsp").forward(request, response);
            } else {
                check = 1;
            }


            System.out.println("================================");
            System.out.println("First name: " + firstName);
            System.out.println("Last name: " + lastName);
            System.out.println("Email : " + email);
            System.out.println("Username: " + userName);
            System.out.println("Password : " + hashValue);
            System.out.println("Gender : " + gender);
            System.out.println("Date of Birth : " + birthDate);
            System.out.println("Country : " + country);
            System.out.println("Phone Number : " + phoneNo);
            System.out.println("================================");

            try {
                if (check == 1) {
                    SMSManager sms = new SMSManager();

                    String verifyCode = generateRandomCode();
                    String pinCode = generatePinCode();
                    String Text = "Your Account Activation Code is: " + verifyCode + ". Your Random Pin code is: " + pinCode + ".";
                    sms.sendSMS(phoneNo, Text);
                    
                    ps = conn.prepareCall("INSERT INTO customer (fname, lname, email, password, gender, DOB, country, phone, username, nric, address, postal, bankAcctNum, verifyCode, pinPassword) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, firstName);
                    ps.setString(2, lastName);
                    ps.setString(3, email);
                    ps.setString(4, pw);
                    ps.setString(5, gender);
                    ps.setString(6, birthDate);
                    ps.setString(7, country);
                    ps.setString(8, phoneNo);
                    ps.setString(9, userName);
                    ps.setString(10, NRIC);
                    ps.setString(11, address);
                    ps.setString(12, postal);
                    ps.setString(13, bankAcctNum);
                    ps.setString(14, verifyCode);
                    ps.setString(15, pinCode);
                    ps.executeUpdate();

                    HttpSession session = request.getSession();
                    request.setAttribute("showToLogin", "true");
                    session.setAttribute("showToLoginMessage", "Successfully Registered! Please Login!");
                    request.getRequestDispatcher("LoginPage.jsp").forward(request, response);
                } else {
                    out.print("Fail to Create Account!");
                    request.getRequestDispatcher("registerPage.jsp").forward(request, response);
                }

            } catch (Exception e) {
                e.printStackTrace();
                out.print(e);

            }
        } catch (NoSuchAlgorithmException e) {
        }
    }
    public static String generateRandomCode(){
        String letters = "abcdefghijkmnpqrstuvwxyz123456789";
        String rpw = "";
        for (int i=0; i<PASSWORD_LENGTH; i++){
            int index = (int)(RANDOM.nextDouble()*letters.length());
            rpw += letters.substring(index, index+1);
        }
        return rpw;
    }
    
    public static String generatePinCode(){
        String letters = "123456789";
        String rpw = "";
        for (int i=0; i<PINPASSWORD_LENGTH; i++){
            int index = (int)(RANDOM.nextDouble()*letters.length());
            rpw += letters.substring(index, index+1);
        }
        return rpw;
    }
}
