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

public class ApplicationRemoveServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
                // Attributes
                String userName = request.getParameter("userName");
                String bankAcctNum = request.getParameter("bankAcctNum");
                String bankAcctName = request.getParameter("bankAcctName");
            
                DataManager connection = new DataManager();
                Connection conn = connection.getConnection();
                ResultSet rs = null;
                PreparedStatement ps = null;
            
                Statement statement = null;
                statement = conn.createStatement();
            
            System.out.println(userName + " " + bankAcctNum);
            
                ps = conn.prepareCall("DELETE FROM applicants WHERE username=? AND bankAcctNum=?");
                ps.setString(1, userName);
                ps.setString(2, bankAcctNum);
                ps.executeUpdate();
           
                request.setAttribute("confirmLogMessage", "Applicant " + bankAcctName + " has been Removed Successfully!");
            
                request.getRequestDispatcher("ConfirmLog.jsp").forward(request, response);
        } catch (Exception e) {
            out.print(e);
        }
    }
}
