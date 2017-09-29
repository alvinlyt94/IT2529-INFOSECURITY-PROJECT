<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="beans.UserBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    </head>
    <body>
        <jsp:useBean id="user" scope="page" class="controllers.UserManager"/>
        <%@ include file="masterpage.jsp" %>
        <div class="container">
            <h2>Update Profile</h2>
            <p>
                <b>Please make corrections in the fields indicated below.</b>
            </p>
   <%
    ArrayList ItemList = user.getUserDetails((String)session.getAttribute("userName"));
    Iterator iterator = ItemList.iterator();
    while(iterator.hasNext()){
    UserBean users = (UserBean)iterator.next();
    %>
            <img width='250' height='200' src="displayuserphoto?id=<%=session.getAttribute("userName")%>" ></img>
            <br>

                    <form name="modelDetail1" method="POST" action="UpdateUser" enctype="multipart/form-data">
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>First Name:</strong>
                        <input type="text" name="ItemTile" value="<%=users.getFname()%>"></input>
                    </font>
                    <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Last Name:</strong> 
                        <input type="text" name="ItemDesc" value="<%=users.getLname()%>"></input>
                    </font>
                    </p>
                    <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>NRIC:</strong> 
                        <input type="text" name="ItemDesc" value="<%=users.getNric()%>"></input>
                    </font>
                    </p>   
                    
                    <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Email:</strong>
                        <input type="text" name="quantity" value="<%=users.getEmail()%>"></input>
                    </font>
                    </p>
                    <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>DOB:</strong>
                        <input type="text" name="Itemprice" value="<%=users.getDOB()%>" step="0.01" min="1"></input>
                    </font>
                    </p>
                     <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Address:</strong>
                        <input type="text" name="Itemprice" value="<%=users.getAddress()%>" step="0.01" min="1"></input>
                    </font>
                    </p>
                     <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Country:</strong>
                        <input type="text" name="Itemprice" value="<%=users.getCountry() %>" step="0.01" min="1"></input>
                    </font>
                    </p>
                     <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Postal:</strong>
                        <input type="text" name="Itemprice" value="<%=users.getPostal()%>" step="0.01" min="1"></input>
                    </font>
                    </p>
                     <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Phone:</strong>
                        <input type="text" name="Itemprice" value="<%=users.getPhone() %>" step="0.01" min="1"></input>
                    </font>
                    </p>
                     <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>BankAcctNum:</strong>
                        <input type="text" name="Itemprice" value="<%=users.getBankAcctNum()%>" step="0.01" min="1"></input>
                    </font>
                    </p>
                    <p>
                     <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Gender:</strong>
                        <input type="text" name="Itemprice" value="<%=users.getGender()%>" step="0.01" min="1"></input>
                    </font>
                    </p>
                    <p>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Select Image:</strong>
                        <input type="file" name="image"/>
                    </font>
                    </p>
                  <input type="hidden" name="itemID" value="<%=users.getUserID()%>"></input>
                    <input type="submit" name="action" value="Update" onclick="return confirm('Are you sure to update this items?');"></input>
                    
                    </form>
                <%}%>
</div>
         <%@ include file="footer.jsp" %>
    </body>
</html>