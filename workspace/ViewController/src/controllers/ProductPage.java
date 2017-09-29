package controllers;

import beans.ItemBean;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ProductPage extends HttpServlet {
    @SuppressWarnings("compatibility:2732968566931177806")
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse response) throws ServletException, IOException {
   
        String category = httpServletRequest.getParameter("category");
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute("string",category);
        response.sendRedirect("productPage.jsp");
    

    }
}