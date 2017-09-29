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

public class ExchangeServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
            // Attributes
            String userName = request.getParameter("userName");
            String passWord = request.getParameter("passWord");
            double newSgdBalance = Double.parseDouble(request.getParameter("newSgdBalance"));
            double newUsdBalance = Double.parseDouble(request.getParameter("newUsdBalance"));
            double newEurBalance = Double.parseDouble(request.getParameter("newEurBalance"));
            double sgdBalance = 0;
            double usdBalance = 0;
            double eurBalance = 0;
            
        try {
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            ResultSet rs = null;
            PreparedStatement ps = null;
            
            Statement statement = null;
            statement = conn.createStatement();
        
            ps = conn.prepareCall("UPDATE customer SET sgdAmount=?, usdAmount=?, eurAmount=? WHERE username=?");
            ps.setDouble(1, newSgdBalance);
            ps.setDouble(2, newUsdBalance);
            ps.setDouble(3, newEurBalance);
            ps.setString(4, userName);
            ps.executeUpdate();
            
            rs = statement.executeQuery("Select sgdAmount, usdAmount, eurAmount from customer where username='" + userName + "'");
            if(rs.next()){
                sgdBalance = rs.getDouble(1);
                usdBalance = rs.getDouble(2);
                eurBalance = rs.getDouble(3);
            }
            
            HttpSession session = request.getSession();
            session.setAttribute("userName", userName);
            session.setAttribute("passWord", passWord);
            session.setAttribute("sgdBalance", sgdBalance);
            session.setAttribute("usdBalance", usdBalance);
            session.setAttribute("eurBalance", eurBalance);
            
            request.setAttribute("confirmLogMessage", "Exchanged Successfully!");
            
            request.getRequestDispatcher("ConfirmLog.jsp").forward(request, response);
   
            // close all the connections.
            rs.close();
            conn.close();
        } catch (Exception e) {
            out.print(e);
        }
    }
}
