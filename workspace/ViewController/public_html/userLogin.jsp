<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <%@ include file="masterpage.jsp"%>
    <div class="container">
  <h2><u><%=session.getAttribute("userName")%></u>'s Profile Page</h2>
  <u><b>Profile Picture:</b></u>
  <br>
  <br>
    <img width='250' height='200' src="displayuserphoto?id=<%=session.getAttribute("userName")%>" ></img>
    
        
             <br>
            <u><b>Particulars:</b></u>
             
            <br></br>
             
            <b>Username: </b><%=session.getAttribute("userName")%><br></br>
             
            <b>Full Name: </b><%=session.getAttribute("fullName")%><br></br>
             
            <b>DOB: </b><%=session.getAttribute("DOB")%> <font size="-3">(DD/MM/YYYY)</font><br></br>
             
            <b>Email: </b><%=session.getAttribute("email")%><br></br>
            
            <b>Country: </b><%=session.getAttribute("country")%><br></br>
            
            <b>Postal: </b><%=session.getAttribute("postal")%><br></br>
                        
            <b>Phone: </b><%=session.getAttribute("phone")%><br></br>
            
            <b>Bank Account Number: </b><%=session.getAttribute("bankAcctNum")%><br></br>
             
            <br></br>
             
            <u><b>Current Balance:</b></u><br></br>
             
            <b>Singapore Dollar - SGD: $</b><%=session.getAttribute("sgdBalance")%><br></br>
             
            <b>US Dollar - USD: $</b><%=session.getAttribute("usdBalance")%><br></br>
             
            <b>Euro Dollar - EUR: $</b><%=session.getAttribute("eurBalance")%><br></br>
            
            <a href="ChangePin.jsp">Change Pin?</a> <br>
            <a href="ChangePassword.jsp">Change Password?</a> <br>
            <a href="userProfileEdit.jsp">Update Profile?</a>
            </div>
            <%@ include file="footer.jsp" %>
    </body>
</html>