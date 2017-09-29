package controllers;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EditPage  extends HttpServlet  {

    @SuppressWarnings("compatibility:306351583826804353")
    private static final long serialVersionUID = 1L;
    String strItemIndex = null;
    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse response) throws ServletException, IOException {
 
        String itemID = httpServletRequest.getParameter("itemID");
        System.out.print("ITEM ID :"+ itemID );
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute("itemID",itemID);

        String strAction = httpServletRequest.getParameter("action");

        strItemIndex = httpServletRequest.getParameter("itemIndex");
        
        if (strAction != null && !strAction.equals("")) {
            if (strAction.equals("Insert")) {
              // insertItem(httpServletRequest , response);
            } else if (strAction.equals("Update")) {
                response.sendRedirect("QSMEditPage.jsp");
            } else if (strAction.equals("Delete")) {
                response.sendRedirect("QSMDeletePage.jsp");
            }
        }
        response.sendRedirect("../errorPage.jsp");
    }
}
