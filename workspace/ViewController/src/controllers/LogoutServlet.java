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


public class LogoutServlet extends HttpServlet {
    @SuppressWarnings("compatibility:2732968566931177806")
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        session.setAttribute("userName", null);
        request.getRequestDispatcher("Index.jsp").forward(request, response);
    }

}
