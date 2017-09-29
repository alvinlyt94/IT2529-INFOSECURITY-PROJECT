package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ViewPage extends HttpServlet {
    @SuppressWarnings("compatibility:-5964360293224896991")
    private static final long serialVersionUID = 1L;
    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse response) throws ServletException, IOException {
        String ItemID = httpServletRequest.getParameter("itemID");
        HttpSession session = httpServletRequest.getSession();
        System.out.println(ItemID);
        session.setAttribute("ItemID",ItemID);
        response.sendRedirect("productDetail.jsp");
        
    }
}