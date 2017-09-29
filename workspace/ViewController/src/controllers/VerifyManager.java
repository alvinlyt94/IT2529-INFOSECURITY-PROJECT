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


public class VerifyManager extends HttpServlet {
    @SuppressWarnings("compatibility:2732968566931177806")
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String userName = request.getParameter("userName");
        String verify = request.getParameter("verify");
        String compareVerify = null;
        System.out.print(userName+""+verify);
     int check = 2;
        try {
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            ResultSet rs = null;
            PreparedStatement ps = null;
             
            Statement statement = null;
            statement = conn.createStatement();
            if (userName.equals("") || verify.equals("")) {
                // User Name
                if (userName.equals("")) {
                    request.setAttribute("showErrorUserName", "true");
                } else {
                    request.setAttribute("showErrorUserName", "false");
                }
                // Verify Code
                if (verify.equals("")) {
                    request.setAttribute("showErrorVerify", "true");
                } else {
                    request.setAttribute("showErrorVerify", "false");
                }
                request.setAttribute("userName", userName);
                request.setAttribute("verify", verify);
                request.getRequestDispatcher("VerifyPage.jsp").forward(request, response);
            }
         
            rs = statement.executeQuery("select verifyCode from customer Where username='"+ userName + "'" );
            if(rs.next()){
                compareVerify = rs.getString(1);
            }
            else{
                request.setAttribute("userName", userName);
                request.setAttribute("verify", verify);
                request.setAttribute("showErrorNotFound", "true");
                request.setAttribute("showErrorUserName", "false");
                request.setAttribute("showErrorVerify", "false");
                request.getRequestDispatcher("VerifyPage.jsp").forward(request, response);
            }
            if (compareVerify.equals("Verified")){
                request.setAttribute("userName", userName);
                request.setAttribute("verify", verify);
                request.setAttribute("showErrorVerified", "true");
                request.setAttribute("showErrorUserName", "false");
                request.setAttribute("showErrorVerify", "false");
                request.getRequestDispatcher("VerifyPage.jsp").forward(request, response);
            }
            else if (compareVerify.equals(verify)){
                ps = conn.prepareCall("UPDATE customer SET verifyCode=? Where username=?;" );
                String verifyTEDT = "Verified";
                System.out.print(ps);
                ps.setString(1, verifyTEDT);
                ps.setString(2, userName);
                System.out.print(ps);
                ps.executeUpdate();
                check = 1;
                    if(check ==1){
                        System.out.print("Account has been verified");
                        HttpSession session = request.getSession();
                        request.setAttribute("showToLogin", "true");
                        session.setAttribute("showToLoginMessage", "Account has been Verified! Please Login!");
                        request.getRequestDispatcher("LoginPage.jsp").forward(request, response);
                        
                        rs.close();
                        conn.close();
                    }else{
                   
                    }
            }
            else{
                request.setAttribute("userName", userName);
                request.setAttribute("verify", verify);
                request.setAttribute("showErrorNotMatched", "true");
                request.setAttribute("showErrorUserName", "false");
                request.setAttribute("showErrorVerify", "false");
                request.getRequestDispatcher("VerifyPage.jsp").forward(request, response);
            }
           
          
        } catch (Exception e) {
            out.print(e);
        }
    }

}
