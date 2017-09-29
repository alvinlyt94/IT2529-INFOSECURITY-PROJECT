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

public class TransferServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
            // Attributes
            String userName = request.getParameter("userName");
            String pinPassword = request.getParameter("pinPassword");
            String bankAcctName = request.getParameter("bankAcctName");
            double amount = Double.parseDouble(request.getParameter("amount"));
            String currencyType = request.getParameter("currencyType");
            double newSgdBalance = Double.parseDouble(request.getParameter("newSgdBalance"));
            double newUsdBalance = Double.parseDouble(request.getParameter("newUsdBalance"));
            double newEurBalance = Double.parseDouble(request.getParameter("newEurBalance"));
            double sgdBalance = 0;
            double usdBalance = 0;
            double eurBalance = 0;
            double transferUserSgdBalance = 0;
            double transferUserUsdBalance = 0;
            double transferUserEurBalance = 0;
            String transferUsername = null;
            String comparePinPassword = null;
            
        try {
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            ResultSet rs = null;
            PreparedStatement ps = null;
            
            Statement statement = null;
            statement = conn.createStatement();
            
            // Get Pin password
            rs = statement.executeQuery("Select pinPassword from customer where username='" + userName + "'");
            if(rs.next()){
                comparePinPassword = rs.getString(1);
            }

            if(!(comparePinPassword.equals(pinPassword))){
                request.setAttribute("show", "true");
                request.setAttribute("showErrorMessage", "*Incorrect pin, please re-enter!");
                request.getRequestDispatcher("TransferConfirmation.jsp").forward(request, response);
            }
            else{
                // Get Transfer Username Balances
                rs = statement.executeQuery("Select sgdAmount,usdAmount,eurAmount,cus.username from applicants app inner join customer cus on app.bankAcctNum = cus.bankAcctNum where app.username = '" + userName + "' AND bankAcctName='" + bankAcctName + "'");
                if(rs.next()){
                    transferUserSgdBalance = rs.getDouble(1);
                    transferUserUsdBalance = rs.getDouble(2);
                    transferUserEurBalance = rs.getDouble(3);
                    transferUsername = rs.getString(4);
                }
                
                // Minus from Transfer Username balance
                if (currencyType.equals("SGD")){
                    transferUserSgdBalance += amount;
                }
                else if (currencyType.equals("USD")){
                    transferUserUsdBalance += amount;
                }
                else if (currencyType.equals("EUR")){
                    transferUserEurBalance += amount;
                }
                // Update Transfer Username New Balances
                ps = conn.prepareCall("UPDATE customer SET sgdAmount=?, usdAmount=?, eurAmount=? WHERE username=?");
                ps.setDouble(1, transferUserSgdBalance);
                ps.setDouble(2, transferUserUsdBalance);
                ps.setDouble(3, transferUserEurBalance);
                ps.setString(4, transferUsername);
                ps.executeUpdate();
                
                // Update Username New Balances
                ps = conn.prepareCall("UPDATE customer SET sgdAmount=?, usdAmount=?, eurAmount=? WHERE username=?");
                ps.setDouble(1, newSgdBalance);
                ps.setDouble(2, newUsdBalance);
                ps.setDouble(3, newEurBalance);
                ps.setString(4, userName);
                ps.executeUpdate();
                
                // Get Username Details
                rs = statement.executeQuery("Select sgdAmount, usdAmount, eurAmount from customer where username='" + userName + "'");
                if(rs.next()){
                    sgdBalance = rs.getDouble(1);
                    usdBalance = rs.getDouble(2);
                    eurBalance = rs.getDouble(3);
                }
                HttpSession session = request.getSession();
                session.setAttribute("userName", userName);
                session.setAttribute("sgdBalance", sgdBalance);
                session.setAttribute("usdBalance", usdBalance);
                session.setAttribute("eurBalance", eurBalance);
                
                request.setAttribute("confirmLogMessage", "Transferred to " + bankAcctName + " Successfully!");

                request.getRequestDispatcher("ConfirmLog.jsp").forward(request, response);
       
                // close all the connections.
                rs.close();
                conn.close();
            }
        } catch (Exception e) {
            out.print(e);
        }
    }
}
