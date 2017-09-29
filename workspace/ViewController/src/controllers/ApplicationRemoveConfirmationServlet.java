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

public class ApplicationRemoveConfirmationServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
                // Attributes
                String userName = request.getParameter("userName");
                String bankAcctName = request.getParameter("bankAcctName");
                String bankAcctNum = null;
                String showError = request.getParameter("showError");
                ArrayList applicantList = new ArrayList();
            
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
                if (showError.equals("false")){
                    request.setAttribute("applicant", applicantList); 
                    request.setAttribute("displayAmount", "true");
                    request.getRequestDispatcher("ApplicationRemove.jsp").forward(request, response);
                }
                else{
                    // Applicant not chosen
                    if (bankAcctName.equals("")){
                        HttpSession session = request.getSession();
                        request.setAttribute("showErrorApplicant", "true");
                        request.setAttribute("applicant", applicantList); 
                        
                        request.getRequestDispatcher("ApplicationRemove.jsp").forward(request, response);
                    }
                    else{
                        rs = statement.executeQuery("Select bankAcctNum from applicants where username = '" + userName + "' AND bankAcctName= '" + bankAcctName + "'");
                        if(rs.next()){
                            bankAcctNum = rs.getString(1);
                        }
                        HttpSession session = request.getSession();
                        session.setAttribute("userName", userName);
                        session.setAttribute("bankAcctName", bankAcctName);
                        session.setAttribute("bankAcctNum", bankAcctNum);
                        request.setAttribute("showErrorApplicant", "false"); 
                        
                        request.getRequestDispatcher("ApplicationRemoveConfirmation.jsp").forward(request, response);
                    }
            }
        } catch (Exception e) {
            out.print(e);
        }
    }
}
