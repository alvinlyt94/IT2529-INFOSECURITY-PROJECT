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

public class ChangePinServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
            // Attributes
            String userName = request.getParameter("userName");
            String pinPassword = request.getParameter("pinPassword");
            String ableToConfirm = request.getParameter("ableToConfirm");
            String ableToUpdate = request.getParameter("ableToUpdate");
            String firstPinPassword = request.getParameter("firstPinPassword");
            String comparePinPassword = null;
            String checkPinNull = null;
            String change = request.getParameter("change");
            System.out.println("PP: " + pinPassword);
            System.out.println("FPP: " + firstPinPassword);
        try {
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            ResultSet rs = null;
            PreparedStatement ps = null;
            
            Statement statement = null;
            statement = conn.createStatement();
            
            if (change.equals("Change")){
                request.setAttribute("showEnterNew", "true");
                request.setAttribute("showEnterNewMessage", "*Please enter a new pin again!");
                request.getRequestDispatcher("ChangePin.jsp").forward(request, response);
            }
            
            // Get Pin password
            rs = statement.executeQuery("Select pinPassword from customer where username='" + userName + "'");
            if(rs.next()){
                comparePinPassword = rs.getString(1);
            }
            
            // If no pin / pin is null
//            if (comparePinPassword.equals("")){
//                comparePinPassword = pinPassword;
//                ableToChange = "true";
//            }
            if (!(ableToConfirm.equals("true"))){
                if(!(comparePinPassword.equals(pinPassword))){
                    request.setAttribute("show", "true");
                    request.setAttribute("showErrorMessage", "*Incorrect pin, please re-enter!");
                    request.getRequestDispatcher("ChangePin.jsp").forward(request, response);
                }
                else{
                    request.setAttribute("showEnterNew", "true");
                    request.setAttribute("showEnterNewMessage", "*Correct! Please enter a new pin!");
                    request.getRequestDispatcher("ChangePin.jsp").forward(request, response);
                }
            }
            else{
                if(ableToUpdate.equals("true")){
                    if (firstPinPassword.equals(pinPassword)){
                        // Update New Pin
                        ps = conn.prepareCall("UPDATE customer SET pinPassword=? WHERE username=?");
                        ps.setString(1, pinPassword);
                        ps.setString(2, userName);
                        ps.executeUpdate();
                        request.setAttribute("confirmLogMessage", "Pin Changed Successfully!");
                        
                        request.getRequestDispatcher("ConfirmLog.jsp").forward(request, response); 
                    }
                    else{
                        request.setAttribute("showNotMatched", "true");
                        request.setAttribute("showNotMatchedMessage", "*Not matched! Please re-enter another new pin!");
                        request.getRequestDispatcher("ChangePin.jsp").forward(request, response);
                    }
                }
                else if (pinPassword.length() < 4){
                    request.setAttribute("showNotMatched", "true");
                    request.setAttribute("showNotMatchedMessage", "*Connect at least 4 dots. Try again:");
                    request.getRequestDispatcher("ChangePin.jsp").forward(request, response);
                }
                else if (ableToConfirm.equals("true")){
                    request.setAttribute("showConfirm", "true");
                    request.setAttribute("firstPinPassword", pinPassword);
                    request.setAttribute("showConfirmMessage", "*Draw pattern again to confirm: ");
                    request.getRequestDispatcher("ChangePin.jsp").forward(request, response);
                }
       
                // close all the connections.
                rs.close();
                conn.close();
            }
        } catch (Exception e) {
            out.print(e);
        }
    }
}
