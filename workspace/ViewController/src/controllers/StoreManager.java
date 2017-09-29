package controllers;

import java.sql.*;
import java.util.ArrayList;
import beans.OrderItemBean;

import beans.OrderItemBean;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class StoreManager {
    
    String strItemIndex = null;
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    String strAction = request.getParameter("action");
    strItemIndex = request.getParameter("itemIndex");
        
        if (strAction != null && !strAction.equals("")) {
            if (strAction.equals("add")) {
              //  addToCart(request);
            } else if (strAction.equals("Update")) {
               // updateCart(request);
            } else if (strAction.equals("Delete")) {
               
                deleteItem(request);
            }
        }
        response.sendRedirect("../ShoppingCart.jsp");
    }
   
    public ArrayList getOnlyUserProducts(String storeID, String category){
        ArrayList itemList;
        itemList = new ArrayList();
        try{
         
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Select * from product where storeID=? && category=?");
            ps.setString(1, storeID);
            ps.setString(2, category);
            rs = ps.executeQuery();
          
            while (rs.next()) {
                OrderItemBean newItem = new OrderItemBean();
                newItem.setItemID(rs.getString("idproduct"));
                newItem.setitemTitle(rs.getString("prod_title"));
                newItem.setDescription(rs.getString("prod_desc"));
                newItem.setPrice(rs.getDouble("prod_price"));
                newItem.setQuantity(rs.getInt("quantity"));
                itemList.add(newItem);  
        } 
  
    } catch (SQLException e) {
            System.out.println(e);
        }
       
        return itemList;
    }  
    
    public ArrayList getCategoryProducts(String category){
     ArrayList itemList = new ArrayList();
        try{
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Select * from product where prod_ca=?");
            ps.setString(1, category);
            rs = ps.executeQuery();
          
            while (rs.next()) {
                OrderItemBean newItem = new OrderItemBean();
                newItem.setItemID(rs.getString("idproduct"));
                newItem.setitemTitle(rs.getString("prod_title"));
                newItem.setDescription(rs.getString("prod_desc"));
                newItem.setPrice(rs.getDouble("prod_price"));
                itemList.add(newItem);
        } 
    } catch (SQLException e) {
            System.out.println(e);
        }
        return itemList;
} 
    
    public ArrayList getOnlyUserProducts(String storeID){
     ArrayList itemList = new ArrayList();
  
        try{
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Select * from product where prod_owner=?");
            ps.setString(1, storeID);
            rs = ps.executeQuery();
          
            while (rs.next()) {
                OrderItemBean newItem = new OrderItemBean();
                newItem.setItemID(rs.getString("idproduct"));
                newItem.setitemTitle(rs.getString("prod_title"));
                newItem.setDescription(rs.getString("prod_desc"));
                newItem.setPrice(rs.getDouble("prod_price"));
                newItem.setQuantity(rs.getInt("quantity"));
                newItem.setProd_owner(rs.getString("prod_owner"));
                itemList.add(newItem);
        } 
    } catch (SQLException e) {
            System.out.println(e);
        }
        System.out.print("User Product Returned");
        return itemList;
}  
    
    
    public ArrayList getAllProducts(){
     ArrayList itemList = new ArrayList();
        try{
         
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Select * from product");
            rs = ps.executeQuery();
          
            while (rs.next()) {
                OrderItemBean newItem = new OrderItemBean();
                newItem.setItemID(rs.getString("idproduct"));
                newItem.setitemTitle(rs.getString("prod_title"));
                newItem.setDescription(rs.getString("prod_desc"));
                newItem.setPrice(rs.getDouble("prod_price"));
                
                itemList.add(newItem);
                
        } 
            
      
     
      
    } catch (SQLException e) {
            System.out.println(e);
        }
       System.out.print("returned");
        return itemList;
    }  
    
    
    
    public ArrayList getOneProducts(String itemID){
     ArrayList itemList = new ArrayList();
       // int itemID2 = Integer.parseInt(itemID);
        try{
         
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Select * from product where idproduct =? ");
            ps.setString(1, itemID);
            rs = ps.executeQuery();
          
            while (rs.next()) {
                OrderItemBean newItem = new OrderItemBean();
                newItem.setItemID(rs.getString("idproduct"));
                newItem.setitemTitle(rs.getString("prod_title"));
                newItem.setDescription(rs.getString("prod_desc"));
                newItem.setQuantity(rs.getInt("quantity"));
                newItem.setCategory(rs.getString("prod_ca"));
                newItem.setPrice(rs.getDouble("prod_price"));
                newItem.setProd_owner(rs.getString("prod_owner"));
                itemList.add(newItem);
                
        } 
    } catch (SQLException e) {
            System.out.println(e);
        }
       System.out.print("Only one hasreturned");
        return itemList;
    }  
    
    public void deleteProducts(String itemID) throws SQLException {
     ArrayList itemList = new ArrayList();
        try{
         
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Delete from product where idproduct =?");
            ps.setString(1, itemID);
            rs = ps.executeQuery();
          
                
        } catch (SQLException e) {
            System.out.println(e);
        }
 
    }

    private void deleteItem(HttpServletRequest httpServletRequest) {
    }
}
