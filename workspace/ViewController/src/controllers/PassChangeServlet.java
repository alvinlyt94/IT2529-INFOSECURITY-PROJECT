package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import java.security.MessageDigest;

import java.security.NoSuchAlgorithmException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PassChangeServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int check = 0;
        HttpSession session = request.getSession();
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String password = null;
        String oldPass = request.getParameter("oldPass");
        String newPass = request.getParameter("newPass");
        String userName = (String)session.getAttribute("userName");
        String OldUPHash = userName + oldPass;
        String NewUPHash = userName + newPass;

        //  System.out.println("----------------UserName is :" + userName + "-------------------------");

        try {
            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;


            //MD5 Hashing oldPass
            MessageDigest md;
            try {

                md = MessageDigest.getInstance("MD5");

                md.update(OldUPHash.getBytes());

                byte byteData[] = md.digest();

                //convert the byte to hex format method 1
                StringBuffer hashValue = new StringBuffer();
                for (int i = 0; i < byteData.length; i++) {
                    hashValue.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
                }

                String opw = hashValue.toString();

                System.out.println("Digest(in hex format):: " + opw);


//MD5 Hashing newPass
                 MessageDigest mdn;
                mdn = MessageDigest.getInstance("MD5");

                mdn.update(NewUPHash.getBytes());

                byte byteDataN[] = mdn.digest();

                //convert the byte to hex format method 1
                StringBuffer hashValueN = new StringBuffer();
                for (int i = 0; i < byteDataN.length; i++) {
                    hashValueN.append(Integer.toString((byteDataN[i] & 0xff) + 0x100, 16).substring(1));
                }

                String npw = hashValueN.toString();

                System.out.println("Digest(in hex format):: " + npw);
                

                    //Get data from database
                    Statement statement = null;
                    statement = conn.createStatement();
                    ps = conn.prepareCall("Select * from customer where username=?");
                    ps.setString(1, userName);
                    rs = ps.executeQuery();
                    

                    if (rs.next()) {
                        rs = statement.executeQuery("Select password from customer where username='" + userName + "'");
                        if (rs.next()) {
                            password = rs.getString(1); //get password
                        }


                        session.setAttribute("passWord", password);
                
                

                if (oldPass.equals("") || newPass.equals("")) {
                    check = 0;
                    out.print("Fail to Register!");
                    // oldPass
                    if (oldPass.equals("")) {
                        request.setAttribute("showError", "true");
                        request.setAttribute("showErrorMessage", "*Please enter Old Password");
                    } 
                    else{
                        request.setAttribute("showError", "false");
                        if(!opw.equals(password)){
                            //print error message
                            request.setAttribute("showError", "true");
                            request.setAttribute("showErrorMessage", "*Wrong Password!");
                        }
                    }
                    // newPass
                    if (newPass.equals("")) {
                        request.setAttribute("showErrorNewPass", "true");
                    } 
                    else{
                        request.setAttribute("showErrorNewPass", "false");
                    }
                    request.setAttribute("oldPass", oldPass);
                    request.setAttribute("newPass", newPass);
                    request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
                }

                else {
                    check = 1;
                }
                System.out.println("================================");
                System.out.println("Old Password: " + oldPass);
                System.out.println("New Password: " + newPass);
                System.out.println("================================");


                /*when all fields is filled up*/
                if (check == 1) {



                        if (opw.equals(password)) {
                            //update npw to db
                            request.setAttribute("showError", "false");

                            System.out.println("-------------------------New Password = " + npw +
                                               "-----------------------------");
                            System.out.println("------------------------- User Name = " + userName +
                                               "-----------------------------");
                            ps = conn.prepareCall("Update customer set password = ? where username= ?");
                            ps.setString(1, npw);
                            ps.setString(2, userName);
                            ps.executeUpdate();
                            request.setAttribute("confirmLogMessage", "Password Changed Successfully!");
                            request.getRequestDispatcher("ConfirmLog.jsp").forward(request, response);
                            
                                
                        } else {
                            //print error message
                            request.setAttribute("oldPass", oldPass);
                            request.setAttribute("newPass", newPass);
                            // newPass
                            if (newPass.equals("")) {
                                request.setAttribute("showErrorNewPass", "true");
                            } 
                            else{
                                request.setAttribute("showErrorNewPass", "false");
                            }
                            request.setAttribute("showError", "true");
                            request.setAttribute("showErrorMessage", "*Wrong Password!");
                            request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
                        }


                    }
                }


                else {
                    out.print("Field Missing!");
                    request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
                }

            } catch (NoSuchAlgorithmException e) {
            }


        } catch (Exception e) {
            e.printStackTrace();
            out.print(e);

        }


    }
}
