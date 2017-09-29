package controllers;

import beans.OrderItemBean;


import java.io.IOException;

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

public class QSManager extends HttpServlet {
   
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    String strAction = request.getParameter("action");
    
        if (strAction != null && !strAction.equals("")) {
            if (strAction.equals("On Delivery")) {
               delivery(request, response);
            } else if (strAction.equals("Confirm Delivery")) {
               cmDelivery(request, response);
            } 
        }
        response.sendRedirect("../ShoppingCart.jsp");
    }
   
   
   
   
    public QSManager() {
        super();
    }

    private void delivery(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        String idproduct = httpServletRequest.getParameter("itemID");
        String idorder = httpServletRequest.getParameter("idorder");
        String status = httpServletRequest.getParameter("status");
        
        try {
            
            int check = 2;
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
          
            ps = conn.prepareCall("UPDATE orders SET status=? Where idproduct=? && idorder=?" );
            ps.setString(1, "On Delivery");
            ps.setString(2, idproduct);
            ps.setString(3, idorder);
            ps.executeUpdate();
            check = 1;
                if(check ==1){
                    HttpSession session = httpServletRequest.getSession();
                    System.out.print("Update has been runned");
                    httpServletResponse.sendRedirect("QSMOnRequest.jsp"); 
                
                }else{
               
                }
            
        } catch (Exception e) {
            System.out.print("EditManager Error "+e);
           
        }  
    }

    private void cmDelivery(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        
        String idproduct = httpServletRequest.getParameter("itemID");
        String idorder = httpServletRequest.getParameter("idorder");
        String status = httpServletRequest.getParameter("status");
        
        try {
            
            int check = 2;
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
          
            ps = conn.prepareCall("UPDATE orders SET status=? Where idproduct=? && idorder=?" );
            ps.setString(1, "Delivery Comfirmed");
            ps.setString(2, idproduct);
            ps.setString(3, idorder);
            ps.executeUpdate();
            check = 1;
                if(check ==1){
                    HttpSession session = httpServletRequest.getSession();
                    System.out.print("Update has been runned");
                    httpServletResponse.sendRedirect("userOrderPage.jsp"); 
                }else{
               
                }
            
        } catch (Exception e) {
            System.out.print("EditManager Error "+e);
           
        }  
    }
    
    public ArrayList getUserAllOrder(String userID){
     ArrayList RequestList = new ArrayList();
        try{
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Select * from orders o right join product p on o.idproduct=p.idproduct where o.username=?");
            ps.setString(1, userID);
         
            rs = ps.executeQuery();
       
            while (rs.next()) {
                OrderItemBean OrderRequest = new OrderItemBean();
                OrderRequest.setItemID(rs.getString("idproduct"));
                OrderRequest.setitemTitle(rs.getString("prod_title"));
                OrderRequest.setQuantity(rs.getInt("quantity"));
                OrderRequest.setDescription(rs.getString("prod_desc"));
                OrderRequest.setPrice(rs.getInt("prod_price"));
            OrderRequest.setIdorder(rs.getString("idorder"));
                OrderRequest.setStatus(rs.getString("status"));
                RequestList.add(OrderRequest);
            
        } 
    } catch (SQLException e) {
            System.out.println("SQManager SQL Error: "+e);
        }
        return RequestList;
    }
    
    public ArrayList getOwnerOrder(String prod_owner){
     ArrayList RequestList = new ArrayList();
        try{
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Select * from orders o right join product p on o.idproduct=p.idproduct right join customer c on c.username=o.username where o.prod_owner=?");
            ps.setString(1, prod_owner);
         
            rs = ps.executeQuery();
       
            while (rs.next()) {
                OrderItemBean OrderRequest = new OrderItemBean();
                OrderRequest.setItemID(rs.getString("idproduct"));
                OrderRequest.setitemTitle(rs.getString("prod_title"));
                OrderRequest.setQuantityOrder(rs.getInt("quantityOrder"));
                OrderRequest.setDescription(rs.getString("prod_desc"));
                OrderRequest.setPrice(rs.getInt("prod_price"));
                OrderRequest.setIdorder(rs.getString("idorder"));
                OrderRequest.setStatus(rs.getString("status"));
                OrderRequest.setAddress(rs.getString("address"));
                OrderRequest.setPostal(rs.getString("postal"));
                OrderRequest.setEmail(rs.getString("email"));
                OrderRequest.setCountry(rs.getString("country"));
                OrderRequest.setCustomerName(rs.getString("fname")+rs.getString("lname"));
                RequestList.add(OrderRequest);
            
        } 
    } catch (SQLException e) {
            System.out.println("SQManager SQL Error: "+e);
        }
        return RequestList;
    }
}
