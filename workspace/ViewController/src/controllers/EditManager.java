package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import beans.CartBean;
import java.util.List;
import beans.ItemBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import javax.servlet.ServletException;

import java.sql.*;

import com.octo.captcha.module.servlet.image.SimpleImageCaptchaServlet;

import java.io.InputStream;

import java.io.PrintWriter;

import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;


public class EditManager extends HttpServlet {


    @SuppressWarnings("compatibility:593941467767635421")
    private static final long serialVersionUID = 1L;
    String strItemIndex = null;
    private ArrayList AdminItemList = new ArrayList();
 
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
                                                                                      {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload sfu  = new ServletFileUpload(factory);
        String action2 = null;

      
        int i = 0;

        List items =null;
        try {
            items = sfu.parseRequest(request);
        } catch (FileUploadException e) {
        }
        System.out.print("Phase1");
               FileItem  action = (FileItem) items.get(7);
               action2 =  action.getString();
            i = items.size();
        System.out.print("Action: "+ action2);
        
        
       
        String strAction = action2;
       
        System.out.print("Phase2");
      
      strItemIndex = request.getParameter("itemIndex");
        
        if (strAction != null && !strAction.equals("")) {
            if (strAction.equals("Insert")) {
               insertItem(request , response, items );
            } else if (strAction.equals("Update")) {
                try {
                    updateItem(request, response, items);
                } catch (SQLException e) {
                }
            } else if (strAction.equals("Yes")) {
                try {
                    deleteItem(request, response, items);
                } catch (SQLException e) {
                }
            }
            else if (strAction.equals("No")) {
                            response.sendRedirect("http://127.0.0.1:7101/ECommerce-ViewController-context-root/QSMProductPage.jsp");
                        }
        }
        response.sendRedirect("../errorPage.jsp");
    }

        protected void insertItem(HttpServletRequest httpServletRequest, HttpServletResponse httpServletresponse, List item) throws ServletException, IOException{
   
                                                                  
        //String userCaptchaResponse = httpServletRequest.getParameter("jcaptcha");
        //boolean captchaPassed = SimpleImageCaptchaServlet.validateResponse(httpServletRequest, userCaptchaResponse);
      //  if (captchaPassed) {
     
      // Apache Commons-Fileupload library classes
      DiskFileItemFactory factory = new DiskFileItemFactory();
      ServletFileUpload sfu  = new ServletFileUpload(factory);
      
//      
//      String idproduct = httpServletRequest.getParameter("itemID");
//      String prod_title = httpServletRequest.getParameter("ItemTile");
         
//      String prod_desc = httpServletRequest.getParameter("ItemDesc");
//      double prod_price = Double.parseDouble(httpServletRequest.getParameter("Itemprice"));
//      String prod_owner = httpServletRequest.getParameter("prod_owner");
//      String prod_ca = httpServletRequest.getParameter("category");
//      int quantity = Integer.parseInt(httpServletRequest.getParameter("quantity"));
 try {   
       List items = sfu.parseRequest(httpServletRequest);
        FileItem ItemTile = (FileItem) item.get(0);
        String   prod_title =  ItemTile.getString();
            
            FileItem ItemDesc = (FileItem) item.get(1);
            String   prod_desc =  ItemDesc.getString();
     
            FileItem category = (FileItem) item.get(2);
            String   prod_ca =  category.getString();
     
            FileItem quantity = (FileItem) item.get(3);
            int   quantities =  Integer.parseInt(quantity.getString());
     
            FileItem Itemprice = (FileItem) item.get(4);
            double   prod_price = Double.parseDouble(Itemprice.getString());
     
     
            FileItem file = (FileItem) item.get(5);
         
            FileItem prod_owner = (FileItem) item.get(6);
            String   prod_owners =  prod_owner.getString();
     
     
     if (prod_title.equals("") || prod_desc.equals("") || file.getName().isEmpty()){
         // Product Title
         if (prod_title.equals("")) {
             httpServletRequest.setAttribute("showErrorTitle", "true");
         } else {
             httpServletRequest.setAttribute("showErrorTitle", "false");
         }
         
         // Product Desc
         if (prod_desc.equals("")) {
             httpServletRequest.setAttribute("showErrorDesc", "true");
         } else {
             httpServletRequest.setAttribute("showErrorDesc", "false");
         }
         
         // File
         if (file.getName().isEmpty()) {
             httpServletRequest.setAttribute("showErrorFile", "true");
         } else {
             httpServletRequest.setAttribute("showErrorFile", "false");
         }
         
         httpServletRequest.setAttribute("prod_title", prod_title);
         httpServletRequest.setAttribute("prod_desc", prod_desc);
         httpServletRequest.setAttribute("quantities", quantities);
         httpServletRequest.setAttribute("prod_price", prod_price);
         httpServletRequest.getRequestDispatcher("QSMInsertPage.jsp").forward(httpServletRequest, httpServletresponse);
     }
            

        // get uploaded file
//      
//      if(prod_title.equals("") || prod_desc.equals("")){
//          if(prod_title.equals("")){
//              httpServletRequest.setAttribute("showErrorTitle", "true");
//          }
//          if(prod_desc.equals("")){
//              httpServletRequest.setAttribute("showErrorDesc", "true");
//          }
//          
//          httpServletRequest.getRequestDispatcher("QSMInsertPage.jsp").forward(httpServletRequest, httpServletresponse);
//      }
     
               
            int check = 2;
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
         
            ps = conn.prepareCall("insert into product(prod_title, prod_desc, prod_price, prod_owner,prod_ca,quantity,prod_images) values(?, ?, ?,?,?,?,?)");
            ps.setString(1, prod_title);
            ps.setString(2, prod_desc);
            ps.setDouble(3, prod_price);
            ps.setString(4, prod_owners);
            ps.setString(5, prod_ca);
            ps.setInt(6, quantities);
            ps.setBinaryStream(7, file.getInputStream(), (int) file.getSize());
            
            ps.executeUpdate();
        
          
            check = 1;
                if(check ==1){
                  
                   HttpSession session = httpServletRequest.getSession();
                   httpServletresponse.sendRedirect("QSMProductPage.jsp"); 
                }else{
               
                }
            
        } catch (Exception e) {
            System.out.print("EditManager Error "+e);
           
        }    
       // }
       // else{
        //    httpServletresponse.sendRedirect("index.jsp"); 
       // }
    }


    private void updateItem(HttpServletRequest httpServletRequest, HttpServletResponse httpServletresponse, List item) throws SQLException {
        //String idproduct = httpServletRequest.getParameter("itemID");
//        String prod_title = httpServletRequest.getParameter("ItemTile");
//        String prod_desc = httpServletRequest.getParameter("ItemDesc");
//        double prod_price = Double.parseDouble(httpServletRequest.getParameter("Itemprice"));
//        String prod_owner = httpServletRequest.getParameter("prod_owner");
//        String prod_ca = httpServletRequest.getParameter("category");
//       String quantity = httpServletRequest.getParameter("quantity");
      DiskFileItemFactory factory = new DiskFileItemFactory();
      ServletFileUpload sfu  = new ServletFileUpload(factory);
        try {
            List items = sfu.parseRequest(httpServletRequest);
             FileItem ItemTile = (FileItem) item.get(0);
             String   prod_title =  ItemTile.getString();
                 
                 FileItem ItemDesc = (FileItem) item.get(1);
                 String   prod_desc =  ItemDesc.getString();
            System.out.print(prod_desc);
                 FileItem category = (FileItem) item.get(2);
                 String   prod_ca =  category.getString();
            
                 FileItem quantity = (FileItem) item.get(3);
                 int   quantities =  Integer.parseInt(quantity.getString());
            
                 FileItem Itemprice = (FileItem) item.get(4);
                 double   prod_price = Double.parseDouble(Itemprice.getString());
            
            
                 FileItem file = (FileItem) item.get(5);
                FileItem itemID = (FileItem) item.get(8);
                String   itemID2 =  itemID.getString();
            
            int check = 2;
    
            if (file.getName().isEmpty()) {
                    DataManager connection = new DataManager();
                    Connection conn = connection.getConnection();
                    PreparedStatement ps = null;
                    ResultSet rs = null;
                    //UPDATE Persons
                    //SET Address='Nissestien 67', City='Sandnes'
                    //WHERE LastName='Tjessem' AND FirstName='Jakob'
                    ps = conn.prepareCall("UPDATE product SET prod_title=?, prod_desc=?, prod_price=?, prod_ca=?, quantity=? Where idproduct=?" );
                    ps.setString(1, prod_title);
                    ps.setString(2, prod_desc);
                    ps.setDouble(3, prod_price);
                    ps.setString(4, prod_ca);
                    ps.setInt(5, quantities);
                    ps.setString(6, itemID2);
                    ps.executeUpdate();
                    check = 1;
                }
           // int intQuantity = Integer.parseInt(quantity);
            else{
            
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            //UPDATE Persons
            //SET Address='Nissestien 67', City='Sandnes'
            //WHERE LastName='Tjessem' AND FirstName='Jakob'
            ps = conn.prepareCall("UPDATE product SET prod_title=?, prod_desc=?, prod_price=?, prod_ca=?, quantity=?, prod_images=? Where idproduct=?" );
            ps.setString(1, prod_title);
            ps.setString(2, prod_desc);
            ps.setDouble(3, prod_price);
            ps.setString(4, prod_ca);
            ps.setInt(5, quantities);
            ps.setBinaryStream(6, file.getInputStream(), (int) file.getSize());
            ps.setString(7, itemID2);
            
//            ps.setString(1, prod_title);
//            ps.setString(2, prod_desc);
//            ps.setDouble(3, prod_price);
//            ps.setString(4, prod_owners);
//            ps.setString(5, prod_ca);
//            ps.setInt(6, quantities);
//            ps.setBinaryStream(7, file.getInputStream(), (int) file.getSize());
            
            ps.executeUpdate();
            check = 1;
                }
                if(check ==1){
                    HttpSession session = httpServletRequest.getSession();
                    System.out.print("Update has been runned");
                    httpServletresponse.sendRedirect("QSMProductPage.jsp"); 
                
                }else{
               
                }
            
        } catch (Exception e) {
            System.out.print("EditManager Error "+e.getMessage());
           
        }  
        
    }

    private void deleteItem(HttpServletRequest httpServletRequest, HttpServletResponse httpServletresponse, List item)throws SQLException, IOException {
       // String idproduct = httpServletRequest.getParameter("itemID");
       DiskFileItemFactory factory = new DiskFileItemFactory();
       ServletFileUpload sfu  = new ServletFileUpload(factory);
        try {
            List items = sfu.parseRequest(httpServletRequest);
                FileItem itemID = (FileItem) item.get(8);
                String   itemID2 =  itemID.getString();
            System.out.println("item num:"+ itemID2);
              
               
               int check = 2;
               DataManager connection = new DataManager();
               Connection conn = connection.getConnection();
               PreparedStatement ps = null;
               ResultSet rs = null;
               ps = conn.prepareCall("Delete from product where idproduct =?");
               ps.setString(1, itemID2);
               ps.executeUpdate();
               check = 1;
               if(check ==1){
                   HttpSession session = httpServletRequest.getSession();
                   System.out.print("Delete has been runned");
                   httpServletresponse.sendRedirect("QSMProductPage.jsp"); 
               
               }else{
               
               }
                   
           } catch (FileUploadException e) {
               System.out.println(e);
               
           } 

    }
    
//    private ArrayList selectItem(HttpServletRequest httpServletRequest, HttpServletResponse httpServletresponse) throws SQLException {
//        String itemID = httpServletRequest.getParameter("itemID");
//        ArrayList itemList = new ArrayList();
//           try{
//            
//               DataManager connection = new DataManager();
//               Connection conn = connection.getConnection();
//               PreparedStatement ps = null;
//               ResultSet rs = null;
//               ps = conn.prepareCall("Select * from product where idproduct=?");
//               ps.setString(1, itemID);
//               rs = ps.executeQuery();
//             
//               while (rs.next()) {
//                   ItemBean newItem = new ItemBean();
//                   newItem.setitemTitle(rs.getString("itemTitle"));
//                   newItem.setDescription(rs.getString("description"));
//                   newItem.setPrice(rs.getDouble("price"));
//                   newItem.setCategory(rs.getString("description"));
//                   newItem.setQuantity(rs.getInt("quantity"));
//                   itemList.add(newItem);
//                   
//               
//           } 
//    }catch (Exception e) {
//            System.out.print("EditManager Error "+e);
//           
//    }
//           
//   
//    httpServletRequest.setAttribute("arraylist",itemList);
//        return itemList;
//    }

}
