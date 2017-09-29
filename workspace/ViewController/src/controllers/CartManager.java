package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.CartBean;
import beans.OrderItemBean;
import beans.reviewBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Statement;

import java.text.DecimalFormat;

import java.util.ArrayList;


public class CartManager extends HttpServlet {

    //public static final String addToCart
    String strItemIndex = null;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String strAction = request.getParameter("action");


        strItemIndex = request.getParameter("itemIndex");

        if (strAction != null && !strAction.equals("")) {
            if (strAction.equals("Add To Cart")) {
                addToCart(request);
            } else if (strAction.equals("Update")) {
                updateCart(request);
            } else if (strAction.equals("Delete")) {
                deleteCart(request);
            }

            else if (strAction.equals("Buy Now")) {
                
                System.out.println("It's IN");
             doGet(request, response);
             }
        }
        response.sendRedirect("../ShoppingCart.jsp");
    }

    protected void deleteCart(HttpServletRequest request) {
        HttpServletResponse response = null;
        HttpSession session = request.getSession();


        CartBean cartBean = null;

        Object objCartBean = session.getAttribute("cart");
        if (objCartBean != null) {
            cartBean = (CartBean)objCartBean;
        } else {
            cartBean = new CartBean();
        }
        cartBean.deleteCartItem(strItemIndex);

    }

    protected void updateCart(HttpServletRequest request) {

        HttpSession session = request.getSession();
        String strQuantity = request.getParameter("quantity");

        String strItemIndex = request.getParameter("itemIndex");

        CartBean cartBean = null;

        Object objCartBean = session.getAttribute("cart");
        if (objCartBean != null) {
            cartBean = (CartBean)objCartBean;
        } else {
            cartBean = new CartBean();
        }
        cartBean.updateCartItem(strItemIndex, strQuantity);

    }

    protected void addToCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String strModelNo = request.getParameter("modelNo");
        String strDescription = request.getParameter("description");
        String strPrice = request.getParameter("price");
        String strQuantity = request.getParameter("quantity");

        CartBean cartBean = null;

        Object objCartBean = session.getAttribute("cart");

        if (objCartBean != null) {
            cartBean = (CartBean)objCartBean;
        } else {
            cartBean = new CartBean();
            session.setAttribute("cart", cartBean);
        }

        cartBean.addCartItem(strModelNo, strDescription, strPrice, strQuantity);

    }

    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse response) throws ServletException,
                                                                                                  IOException {

        HttpSession session = httpServletRequest.getSession();
        int itemCode = Integer.parseInt(httpServletRequest.getParameter("itemCode"));
        String strDescription = httpServletRequest.getParameter("description");
        double strPrice =  Double.parseDouble(httpServletRequest.getParameter("price"));
        int strQuantity = Integer.parseInt(httpServletRequest.getParameter("quantity"));
        String userName = httpServletRequest.getParameter("userName");
        String prod_owner = httpServletRequest.getParameter("prod_owner");
        boolean check = transaction(userName, strPrice,httpServletRequest );
        ArrayList reviewList = new ArrayList();
        System.out.println(check);
        if (check) {
            try {

                DataManager connection = new DataManager();
                Connection conn = connection.getConnection();
                PreparedStatement ps = null;
                ResultSet rs = null;
                ps =
 conn.prepareCall("insert into orders(idproduct,status,username,orderQuantity, prod_owner) values(?,?,?,?,?)");
                ps.setInt(1, itemCode);
                ps.setString(2, "On Request");
                ps.setString(3, userName);
                ps.setInt(4, strQuantity);
                ps.setString(5, prod_owner);

                ps.executeUpdate();
                System.out.println("Order Inserted");
            } catch (SQLException e) {
                System.out.println(e);
            }


            response.sendRedirect("../productPage.jsp");
        }

        else {

            System.out.print("No Money");
        }


    }
    
    
    public boolean transaction(String userName, double amount,HttpServletRequest httpServletRequest){
        double checkprice = 0;
      
        boolean check = false;
        ArrayList itemList;
        itemList = new ArrayList();
        try {
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            ResultSet rs = null;
            PreparedStatement ps = null;
             
            Statement statement = null;
            statement = conn.createStatement();
         
            rs = statement.executeQuery("select sgdAmount from customer Where username='"+ userName + "'" );
            if(rs.next()){
              
                checkprice = rs.getDouble(1) - amount ;
                System.out.println("price"+checkprice);
            }
            
            if (checkprice > 0){
                ps = conn.prepareCall("UPDATE customer SET sgdAmount=? Where username=?" );
                
            
                ps.setDouble(1, checkprice);
                ps.setString(2, userName);
              
                System.out.println("Statement: "+ps);
                ps.executeUpdate();
                
                // DecimalFormat
                DecimalFormat dec = new DecimalFormat("#.00");
                String checkpriceFormatted = dec.format(checkprice);
                
                HttpSession session = httpServletRequest.getSession();
                session.setAttribute("sgdBalance", checkpriceFormatted);
                check=true;
                  
            }
        
           
          
        } catch (Exception e) {
      
        }
        
    
        return check;
    }


}
