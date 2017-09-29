package controllers;

import controllers.DataManager;

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

import java.util.HashMap;
import java.util.Map;

public class TransferConfirmationServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
                // Attributes
                String userName = request.getParameter("userName");
                String bankAcctName = request.getParameter("bankAcctName");
                String currencyType = request.getParameter("currencyType");
                String showAllError = request.getParameter("showAllError");
                double amount = Double.parseDouble(request.getParameter("amount"));
                double amountSame = Double.parseDouble(request.getParameter("amount"));
                double sgdBalance = Double.parseDouble(request.getParameter("sgdBalance"));
                double usdBalance = Double.parseDouble(request.getParameter("usdBalance"));
                double eurBalance = Double.parseDouble(request.getParameter("eurBalance"));
                double newSgdBalance = Double.parseDouble(request.getParameter("sgdBalance"));
                double newUsdBalance = Double.parseDouble(request.getParameter("usdBalance"));
                double newEurBalance = Double.parseDouble(request.getParameter("eurBalance"));
                ArrayList applicantList = new ArrayList();
                
                // Minus from balance
                if (currencyType.equals("SGD")){
                    newSgdBalance = sgdBalance - amount;
                }
                else if (currencyType.equals("USD")){
                    newUsdBalance = usdBalance - amount;
                }
                else if (currencyType.equals("EUR")){
                    newEurBalance = eurBalance - amount;
                }
            
                // DecimalFormat
                DecimalFormat dec = new DecimalFormat("#.00");
                String newSgdBalanceFormated = dec.format(newSgdBalance);
                String newUsdBalanceFormated = dec.format(newUsdBalance);
                String newEurBalanceFormated = dec.format(newEurBalance);
                String amountFormatted = dec.format(amount);
            
                DataManager connection = new DataManager();
                Connection conn = connection.getConnection();
                ResultSet rs = null;
                PreparedStatement ps = null;
            
                Statement statement = null;
                statement = conn.createStatement();
            
                // Retrive Drop Down Data
                rs = statement.executeQuery("Select bankAcctName from applicants where username='" + userName + "'");
                while(rs.next()){
                    Map applicantMap = new HashMap();
                    applicantMap.put("applicant", rs.getString(1));
                    applicantList.add(applicantMap);
                }
            
//                ps = conn.prepareCall("Select * from users where username=?");
//                ps.setString(1, transferUsername);
//                rs = ps.executeQuery();
            if (showAllError.equals("false")){
                request.setAttribute("applicant", applicantList); 
                request.setAttribute("displayAmount", "true");
                request.getRequestDispatcher("Transfer.jsp").forward(request, response);
            }
            else{
                // Same username
//                if (transferUsername.equals(userName)){
//                    HttpSession session = request.getSession();
//                    session.setAttribute("transferUsername", transferUsername);
//                    session.setAttribute("amountSame", amountSame);
//                    session.setAttribute("currencyType", currencyType);
//                    request.setAttribute("show", "true");
//                    request.setAttribute("showInsufficient", "false");
//                    request.setAttribute("showUsernameError", "false");
//                    request.setAttribute("showErrorMessage", "*Please enter a different username!");
//                    request.setAttribute("applicant", applicantList); 
//                    
//                    request.getRequestDispatcher("Transfer.jsp").forward(request, response);
//                }
                // Username not entered
                if (bankAcctName.equals("")){
                    HttpSession session = request.getSession();
                    session.setAttribute("bankAcctName", bankAcctName);
                    session.setAttribute("amountSame", amountSame);
                    session.setAttribute("currencyType", currencyType);
                    request.setAttribute("show", "true");
                    request.setAttribute("showInsufficient", "false");
                    request.setAttribute("showUsernameError", "false");
                    request.setAttribute("showErrorMessage", "*Please select a applicant!");
                    request.setAttribute("applicant", applicantList); 
                    
                    request.getRequestDispatcher("Transfer.jsp").forward(request, response);
                }
                // Currency Not Selected
                else if (currencyType.equals("")){
                    HttpSession session = request.getSession();
                    session.setAttribute("bankAcctName", bankAcctName);
                    session.setAttribute("amountSame", amountSame);
                    session.setAttribute("currencyType", currencyType);
                    request.setAttribute("show", "true");
                    request.setAttribute("showInsufficient", "false");
                    request.setAttribute("showUsernameError", "false");
                    request.setAttribute("showErrorMessage", "*Please select a currency!");
                    request.setAttribute("applicant", applicantList); 
                    
                    request.getRequestDispatcher("Transfer.jsp").forward(request, response);
                }
                // Insufficient Balance
                else if (newSgdBalance < 0 || newUsdBalance < 0 || newEurBalance < 0){
                    HttpSession session = request.getSession();
                    session.setAttribute("bankAcctName", bankAcctName);
                    session.setAttribute("amountSame", amountSame);
                    session.setAttribute("currencyType", currencyType);
                    request.setAttribute("show", "false");
                    request.setAttribute("showInsufficient", "true");
                    request.setAttribute("showUsernameError", "false");
                    if (newSgdBalance < 0){
                        request.setAttribute("whichInsufficient", "SGD");
                    }
                    else if (newUsdBalance < 0){
                        request.setAttribute("whichInsufficient", "USD");
                    }
                    else if (newEurBalance < 0){
                        request.setAttribute("whichInsufficient", "EUR");
                    }
                    request.setAttribute("applicant", applicantList); 
                    
                    request.getRequestDispatcher("Transfer.jsp").forward(request, response);
                }
                else{
                    HttpSession session = request.getSession();
                    session.setAttribute("userName", userName);
                    session.setAttribute("bankAcctName", bankAcctName);
                    session.setAttribute("currencyType", currencyType);                
                    session.setAttribute("sgdBalance", sgdBalance);
                    session.setAttribute("usdBalance", usdBalance);
                    session.setAttribute("eurBalance", eurBalance);
                    session.setAttribute("newSgdBalance", newSgdBalanceFormated);
                    session.setAttribute("newUsdBalance", newUsdBalanceFormated);
                    session.setAttribute("newEurBalance", newEurBalanceFormated);
                    session.setAttribute("amount", amountFormatted);
                    
                    request.setAttribute("show", "false");
                    request.setAttribute("showInsufficient", "false");
                    request.setAttribute("showUsernameError", "false");
                    request.setAttribute("whichInsufficient", "none");
                    
                    request.setAttribute("currencyType", currencyType);  
                    
                    request.getRequestDispatcher("TransferConfirmation.jsp").forward(request, response);
                }
            }
//            else{
//                // Username not entered
//                if (transferUsername.equals("")){
//                    HttpSession session = request.getSession();
//                    session.setAttribute("transferUsername", transferUsername);
//                    session.setAttribute("amountSame", amountSame);
//                    session.setAttribute("currencyType", currencyType);
//                    request.setAttribute("show", "true");
//                    request.setAttribute("showInsufficient", "false");
//                    request.setAttribute("showUsernameError", "false");
//                    request.setAttribute("showErrorMessage", "*Please select a username!");
//                    request.setAttribute("applicant", applicantList); 
//                    
//                    request.getRequestDispatcher("Transfer.jsp").forward(request, response);
//                }
//                else{
//                    HttpSession session = request.getSession();
//                    session.setAttribute("transferUsername", transferUsername);
//                    session.setAttribute("amountSame", amountSame);
//                    session.setAttribute("currencyType", currencyType);
//                    request.setAttribute("show", "false");
//                    request.setAttribute("showInsufficient", "false");
//                    request.setAttribute("showUsernameError", "true");
//                    request.setAttribute("applicant", applicantList); 
//                    
//                    request.getRequestDispatcher("Transfer.jsp").forward(request, response);
//                }
//            }
        } catch (Exception e) {
            out.print(e);
        }
    }
}
