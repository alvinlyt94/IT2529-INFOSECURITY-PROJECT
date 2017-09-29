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

import java.io.PrintWriter;

//import model.Validation;
import java.sql.*;

import java.text.DecimalFormat;

public class ApplicationConfirmationServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
                // Attributes
                String userName = request.getParameter("userName");
                String applyUsername = null;
                String bankAcctNum = request.getParameter("bankAcctNum");
                String bankAcctName = request.getParameter("bankAcctName");
                String bankAcctNameCheck = null;
//                String applyBankAcctNum = null;
//                String applyBankAcctName = null;
            
                DataManager connection = new DataManager();
                Connection conn = connection.getConnection();
                ResultSet rs = null;
                PreparedStatement ps = null;
            
                Statement statement = null;
                statement = conn.createStatement();
            
//                rs = statement.executeQuery("Select * from users where bankAcctNum='" + bankAcctNum + "'");
//                if(rs.next()){
//                    v
//                }
                // Particulars not entered for Bank Account Num & Bank Account Name
                if (bankAcctNum.equals("") || bankAcctName.equals("")){
                    HttpSession session = request.getSession();
                    session.setAttribute("bankAcctNum", bankAcctNum);
                    session.setAttribute("bankAcctName", bankAcctName);
                    if (bankAcctNum.equals("")){
                        request.setAttribute("showErrorAcctNum", "true");
                    }
                    if (bankAcctName.equals("")){
                        request.setAttribute("showErrorAcctName", "true");
                    }
                    request.getRequestDispatcher("Application.jsp").forward(request, response);
                }
                // Particulars entered existing Bank Account Num
                rs = statement.executeQuery("Select * from applicants where username='" + userName + "' AND bankAcctNum='" + bankAcctNum + "'");
                if(rs.next()){
                    HttpSession session = request.getSession();
                    session.setAttribute("applyUsername", applyUsername);
                    session.setAttribute("bankAcctNum", bankAcctNum);
                    session.setAttribute("bankAcctName", bankAcctName);
                    request.setAttribute("show3", "true");
                    
                    request.getRequestDispatcher("Application.jsp").forward(request, response);
                }
                // Particulars entered ownself Bank Account Num
                rs = statement.executeQuery("Select * from customer where username='" + userName + "' AND bankAcctNum='" + bankAcctNum + "'");
                if(rs.next()){
                    HttpSession session = request.getSession();
                    session.setAttribute("applyUsername", applyUsername);
                    session.setAttribute("bankAcctNum", bankAcctNum);
                    session.setAttribute("bankAcctName", bankAcctName);
                    request.setAttribute("show2", "true");
                    
                    request.getRequestDispatcher("Application.jsp").forward(request, response);
                }
                ps = conn.prepareCall("Select * from customer where bankAcctNum=?");
                ps.setString(1, bankAcctNum);
                rs = ps.executeQuery();
            
                if(rs.next()){
//                    rs = statement.executeQuery("Select * from users where bankAcctNum='" + bankAcctNum + "");
//                    if(rs.next()){
//                        applyUsername = rs.getString(2);
//                    }
//                    // Particulars not entered for Bank Account Name
//                    if (bankAcctName.equals("")){
//                        HttpSession session = request.getSession();
//                        session.setAttribute("applyUsername", applyUsername);
//                        session.setAttribute("bankAcctNum", bankAcctNum);
//                        session.setAttribute("bankAcctName", bankAcctName);
//                        request.setAttribute("showErrorAcctName", "true");
//                        
//                        request.getRequestDispatcher("Application.jsp").forward(request, response);
//                    }
                    // Particulars entered existing Bank Account Name
                    rs = statement.executeQuery("Select * from applicants where username='" + userName + "' AND bankAcctName='" + bankAcctName + "'");
                    if(rs.next()){
                        HttpSession session = request.getSession();
                        session.setAttribute("applyUsername", applyUsername);
                        session.setAttribute("bankAcctNum", bankAcctNum);
                        session.setAttribute("bankAcctName", bankAcctName);
                        request.setAttribute("show", "true");
                        
                        request.getRequestDispatcher("Application.jsp").forward(request, response);
                    }
                    HttpSession session = request.getSession();
                    session.setAttribute("userName", userName);
                    session.setAttribute("bankAcctNum", bankAcctNum);
                    session.setAttribute("bankAcctName", bankAcctName);
                    
                    request.setAttribute("show", "false");
                    request.setAttribute("show2", "false");
                    request.setAttribute("showErrorAcctNum", "false");
                    request.setAttribute("showErrorAcctName", "false");
                    
                    request.getRequestDispatcher("ApplicationConfirmation.jsp").forward(request, response);
                }
                else{
                    // Bank Account Num not found
                    if (!(bankAcctNum.equals(""))){
                        HttpSession session = request.getSession();
                        session.setAttribute("bankAcctNum", bankAcctNum);
                        session.setAttribute("bankAcctName", bankAcctName);
                        request.setAttribute("show1", "true");
                        
                        request.getRequestDispatcher("Application.jsp").forward(request, response);
                    }
                }
//                // Particulars not entered for Bank Account Name
//                if (bankAcctName.equals("")){
//                    HttpSession session = request.getSession();
//                    session.setAttribute("applyUsername", applyUsername);
//                    session.setAttribute("bankAcctNum", bankAcctNum);
//                    session.setAttribute("bankAcctName", bankAcctName);
//                    request.setAttribute("show", "true");
//                    request.setAttribute("showErrorMessage", "*Please enter a bank account name!");
//                    
//                    request.getRequestDispatcher("Application.jsp").forward(request, response);
//                }
//                ps = conn.prepareCall("Select * from users where bankAcctNum=?");
//                ps.setString(1, bankAcctNum);
//                rs = ps.executeQuery();
//                if(rs.next()){
//                    rs = statement.executeQuery("Select * from users where bankAcctNum='" + bankAcctNum + "");
//                    if(rs.next()){
//                        applyUsername = rs.getString(2);
//                    }
//                    HttpSession session = request.getSession();
//                    session.setAttribute("userName", userName);
//                    session.setAttribute("applyUsername", applyUsername);
//                    session.setAttribute("bankAcctNum", bankAcctNum);
//                    session.setAttribute("bankAcctName", bankAcctName);
//                    
//                    request.setAttribute("show", "false");
//                    request.setAttribute("showUsernameError", "false");
//                    
//                    request.getRequestDispatcher("ApplicationConfirmation.jsp").forward(request, response);
//                }
//                else{
//                    // Bank Account Name not found
//                    if (!(bankAcctName.equals(""))){
//                        HttpSession session = request.getSession();
//                        session.setAttribute("applyUsername", applyUsername);
//                        session.setAttribute("bankAcctNum", bankAcctNum);
//                        session.setAttribute("bankAcctName", bankAcctName);
//                        request.setAttribute("show", "true");
//                        request.setAttribute("showErrorMessage", "*Bank account name does not match!");
//                        
//                        request.getRequestDispatcher("Application.jsp").forward(request, response);
//                    }
//                }
//                try{
//                    ps = conn.prepareCall("INSERT INTO applicants (username,applyUsers) VALUES (?,?)");
//                    ps.setString(1, userName);
//                    ps.setString(2, applyUsername);
//                    ps.executeUpdate();
//                    
//                    ps = conn.prepareCall("DELETE FROM applicants WHERE username=? and applyUsers=?");
//                    ps.setString(1, userName);
//                    ps.setString(2, applyUsername);
//                    ps.executeUpdate();
//                }
//                catch(Exception e){
//                    HttpSession session = request.getSession();
//                    session.setAttribute("applyUsername", applyUsername);
//                    session.setAttribute("bankAcctNum", bankAcctNum);
//                    session.setAttribute("bankAcctName", bankAcctName);
//                    request.setAttribute("show", "true");
//                    request.setAttribute("showUsernameError", "false");
//                    request.setAttribute("showErrorMessage", "*Applicant already exists!");
//                    
//                    request.getRequestDispatcher("Application.jsp").forward(request, response);
//                }
            
//                ps = conn.prepareCall("Select * from users where username=?");
//                ps.setString(1, applyUsername);
//                rs = ps.executeQuery();
//               
//            // Particulars not entered for username
//            if (applyUsername.equals("")){
//                HttpSession session = request.getSession();
//                session.setAttribute("applyUsername", applyUsername);
//                session.setAttribute("bankAcctNum", bankAcctNum);
//                session.setAttribute("bankAcctName", bankAcctName);
//                request.setAttribute("show", "true");
//                request.setAttribute("showUsernameError", "false");
//                request.setAttribute("showErrorMessage", "*Please enter a username!");
//                
//                request.getRequestDispatcher("Application.jsp").forward(request, response);
//            }
//            // Same Username 
//            else if (applyUsername.equals(userName)){
//                HttpSession session = request.getSession();
//                session.setAttribute("applyUsername", applyUsername);
//                session.setAttribute("bankAcctNum", bankAcctNum);
//                session.setAttribute("bankAcctName", bankAcctName);
//                request.setAttribute("show", "true");
//                request.setAttribute("showUsernameError", "false");
//                request.setAttribute("showErrorMessage", "*Please enter a different username!");
//
//                request.getRequestDispatcher("Application.jsp").forward(request, response);
//            }
//              if (rs.next()) {
                // Particulars not entered for Bank Account Num
//                if (bankAcctNum.equals("")){
//                    HttpSession session = request.getSession();
//                    session.setAttribute("applyUsername", applyUsername);
//                    session.setAttribute("bankAcctNum", bankAcctNum);
//                    session.setAttribute("bankAcctName", bankAcctName);
//                    request.setAttribute("show", "true");
//                    request.setAttribute("showUsernameError", "false");
//                    request.setAttribute("showErrorMessage", "*Please enter a bank account number!");
//                    
//                    request.getRequestDispatcher("Application.jsp").forward(request, response);
//                }
//                // Wrong bank account num
//                else if (!(applyBankAcctNum.equals(bankAcctNum))){
//                    HttpSession session = request.getSession();
//                    session.setAttribute("applyUsername", applyUsername);
//                    session.setAttribute("bankAcctNum", bankAcctNum);
//                    session.setAttribute("bankAcctName", bankAcctName);
//                    request.setAttribute("show", "true");
//                    request.setAttribute("showUsernameError", "false");
//                    request.setAttribute("showErrorMessage", "*Bank Account Number does not match!");
//                        
//                    request.getRequestDispatcher("Application.jsp").forward(request, response);
//                }
//                // Particulars not entered for Bank Account Name
//                else if (bankAcctName.equals("")){
//                    HttpSession session = request.getSession();
//                    session.setAttribute("applyUsername", applyUsername);
//                    session.setAttribute("bankAcctNum", bankAcctNum);
//                    session.setAttribute("bankAcctName", bankAcctName);
//                    request.setAttribute("show", "true");
//                    request.setAttribute("showUsernameError", "false");
//                    request.setAttribute("showErrorMessage", "*Please enter a bank account name!");
//                    
//                    request.getRequestDispatcher("Application.jsp").forward(request, response);
//                }
//                // Wrong bank account name
//                else if (!(applyBankAcctName.equals(bankAcctName))){
//                    HttpSession session = request.getSession();
//                    session.setAttribute("applyUsername", applyUsername);
//                    session.setAttribute("bankAcctNum", bankAcctNum);
//                    session.setAttribute("bankAcctName", bankAcctName);
//                    request.setAttribute("show", "true");
//                    request.setAttribute("showUsernameError", "false");
//                    request.setAttribute("showErrorMessage", "*Bank Account Name does not match!");
//                    
//                    request.getRequestDispatcher("Application.jsp").forward(request, response);
//                }
//                else{
//                    HttpSession session = request.getSession();
//                    session.setAttribute("userName", userName);
//                    session.setAttribute("applyUsername", applyUsername);
//                    session.setAttribute("bankAcctNum", bankAcctNum);
//                    session.setAttribute("bankAcctName", bankAcctName);
//                    
//                    request.setAttribute("show", "false");
//                    request.setAttribute("showUsernameError", "false");
//                    
//                    request.getRequestDispatcher("ApplicationConfirmation.jsp").forward(request, response);
//                }
//            }
//            else{
//                // Username not found
//                HttpSession session = request.getSession();
//                session.setAttribute("applyUsername", applyUsername);
//                session.setAttribute("bankAcctNum", bankAcctNum);
//                session.setAttribute("bankAcctName", bankAcctName);
//                request.setAttribute("show", "false");
//                request.setAttribute("showUsernameError", "true");
//                   
//                request.getRequestDispatcher("Application.jsp").forward(request, response);
//            }
        } catch (Exception e) {
            out.print(e);
        }
    }
}
