package controllers;

import beans.OrderItemBean;

import beans.UserBean;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UserManager extends HttpServlet{
    
    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse response) throws ServletException, IOException {
        //String userCaptchaResponse = httpServletRequest.getParameter("jcaptcha");
        //boolean captchaPassed = SimpleImageCaptchaServlet.validateResponse(httpServletRequest, userCaptchaResponse);
        //  if (captchaPassed) {
        
        // Apache Commons-Fileupload library classes
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload sfu  = new ServletFileUpload(factory);
     
        try {
        List items = sfu.parseRequest(httpServletRequest);
       
            FileItem fname = (FileItem) items.get(0);
            String   fname2 =  fname.getString();
            
            FileItem lname = (FileItem) items.get(1);
            String   lname2 =  lname.getString();
        
            FileItem nric = (FileItem) items.get(2);
            String   nric2 =  nric.getString();
        
            FileItem email = (FileItem) items.get(3);
            String   email2=  email.getString();
            
            FileItem DOB = (FileItem) items.get(4);
            String   DOB2=  DOB.getString();
            
            FileItem address = (FileItem) items.get(5);
            String   address2 =  address.getString();
            
            FileItem country = (FileItem) items.get(6);
            String   country2 =  country.getString();
            
            FileItem postal = (FileItem) items.get(7);
            String   postal2 =  postal.getString();
            
            FileItem phone = (FileItem) items.get(8);
            String   phone2=  phone.getString();
            
            FileItem bank = (FileItem) items.get(9);
            String   bank2=  bank.getString();
            
            FileItem gender = (FileItem) items.get(10);
            String   gender2=  gender.getString();
            
            FileItem file = (FileItem) items.get(11);
            
            FileItem userID = (FileItem) items.get(12);
            String   userID2 =  userID.getString();
            
           // FileItem email = (FileItem) items.get(3);
           // String   email2=  email.getString();
        
           // FileItem Itemprice = (FileItem) items.get(4);
           // double   prod_price = Double.parseDouble(Itemprice.getString());
         
        
      
         
           
        
        
       // if (prod_title.equals("") || prod_desc.equals("") || file.getName().isEmpty()){
         // Product Title
      //   if (prod_title.equals("")) {
       //      httpServletRequest.setAttribute("showErrorTitle", "true");
       //  } else {
       //      httpServletRequest.setAttribute("showErrorTitle", "false");
       ///  }
         
         // Product Desc
       //  if (prod_desc.equals("")) {
         //    httpServletRequest.setAttribute("showErrorDesc", "true");
        // } else {
        //     httpServletRequest.setAttribute("showErrorDesc", "false");
        // }
         
         // File
        // if (file.getName().isEmpty()) {
        ///     httpServletRequest.setAttribute("showErrorFile", "true");
        // } else {
        //     httpServletRequest.setAttribute("showErrorFile", "false");
        // }
         
        // httpServletRequest.setAttribute("prod_title", prod_title);
       //  httpServletRequest.setAttribute("prod_desc", prod_desc);
      //   httpServletRequest.setAttribute("quantities", quantities);
      //   httpServletRequest.setAttribute("prod_price", prod_price);
      //   httpServletRequest.getRequestDispatcher("QSMInsertPage.jsp").forward(httpServletRequest, httpServletresponse);
      //  }
            

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
            if (file.getName().isEmpty()) {
                ps = conn.prepareCall("UPDATE customer SET fname=?, lname=?, nric=?, email=?, DOB=?, address=?,country=?,postal=?,phone=?,bankAcctNum=?,gender=? Where idcustomer=?" );
                ps.setString(1, fname2);
                ps.setString(2, lname2);
                ps.setString(3, nric2);
                ps.setString(4, email2);
                ps.setString(5, DOB2);
                ps.setString(6, address2);
                ps.setString(7, country2);
                ps.setString(8, postal2);
                ps.setString(9, phone2);
                ps.setString(10, bank2);
                ps.setString(11, gender2);
                ps.setString(12, userID2);
                ps.executeUpdate();
                check = 1;
            }
            else {
                ps = conn.prepareCall("UPDATE customer SET fname=?, lname=?, nric=?, email=?, DOB=?, address=?,country=?,postal=?,phone=?,bankAcctNum=?,gender=?,user_image=? Where idcustomer=?" );
                ps.setString(1, fname2);
                ps.setString(2, lname2);
                ps.setString(3, nric2);
                ps.setString(4, email2);
                ps.setString(5, DOB2);
                ps.setString(6, address2);
                ps.setString(7, country2);
                ps.setString(8, postal2);
                ps.setString(9, phone2);
                ps.setString(10, bank2);
                ps.setString(11, gender2);
                ps.setBinaryStream(12, file.getInputStream(), (int) file.getSize());
                ps.setString(13, userID2);
                ps.executeUpdate();
                check = 1;
            }
                if(check ==1){
                  
                   HttpSession session = httpServletRequest.getSession();
                   response.sendRedirect("userLogin.jsp"); 
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
    public ArrayList getUserDetails(String userName){
     ArrayList userList = new ArrayList();
        try{
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Select * from customer where username=?");
            ps.setString(1, userName);
            rs = ps.executeQuery();
          
            while (rs.next()) {
   
            UserBean user = new UserBean();
            user.setFname(rs.getString("fname"));
            user.setLname(rs.getString("lname"));
            user.setUserID(rs.getString("idcustomer"));
            user.setNric(rs.getString("nric"));
            user.setEmail(rs.getString("email"));
            user.setDOB(rs.getString("DOB"));
            user.setAddress(rs.getString("address"));
            user.setCountry(rs.getString("country"));
            user.setPostal(rs.getString("postal"));
            user.setPhone(rs.getInt("phone"));
            user.setBankAcctNum(rs.getString("bankAcctNum"));
            user.setPinPassword(rs.getString("pinPassword"));
            user.setSgdAmount(rs.getDouble("sgdAmount"));
            user.setEurAmount(rs.getDouble("eurAmount"));
            user.setUsdAmount(rs.getDouble("usdAmount"));
            user.setGender(rs.getString("gender"));
            user.setVerifyCode(rs.getString("verifyCode"));
            userList.add(user);
        } 
    } catch (SQLException e) {
            System.out.println(e);
        }
        return userList;
    }
}
