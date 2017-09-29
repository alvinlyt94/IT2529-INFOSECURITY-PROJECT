<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
            <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <%
    session = request.getSession();  
    if(null!=session.getAttribute("userName")){  
    out.write("Welcome! "+session.getAttribute("userName").toString());  
    }  
    else{  
    response.sendRedirect("LoginPage.jsp");  
    }  
    %>
      <h2>QSM - Quality System Management </h2>
      <div id="menu_wrapper" class="grey">
            <div class="left"></div>
            <ul id="menu">
                <li><a href="#">Inventory</a>
                    <ul>
                        <li><a href="QSMProductPage.jsp">Product List</a></li>
                        <li><a href="QSMInsertPage.jsp">Add Items</a></li>
                        <li><a href="QSMEditPage.jsp">Update Items</a></li>
                        <li><a href="QSMDeletePage.jsp">Delete Items</a></li>
                    </ul>
                </li> 
                
                <li><a href="Index.jsp">Sales Status</a>
                    <ul>
                        <li><a href="QSMOnRequest.jsp">On Request</a></li>
                        <li><a href="QSMOnDelivery.jsp">On Delivery</a></li>
                        <li><a href="QSMOnConfirm.jsp">Order Comfirmed</a></li>
                        <li><a href="QSMOrderRefund.jsp">Order Refunded</a></li>
                    </ul>
                </li> 
                
            </ul>
    </div>
    Comfirm
    </body>
</html>