<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="beans.ItemBean" %> 
<%@ page import="beans.OrderItemBean" %> 
<%@ page import="java.util.ArrayList" %> 
<%@ page import="java.util.Iterator" %> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
            <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
    </head>
  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ include file="masterpage.jsp" %>
 <div class="container">
             <h2>QSM - Sales Delivery</h2>
             
             <p><b>Please ensure item(s) had been mailed.</b></p>
    <jsp:useBean id="Order" scope="page" class="controllers.QSManager" />
    <body>
    
    <%
    ArrayList OrderList = Order.getOwnerOrder((String)session.getAttribute("userName"));
    Iterator iterator = OrderList.iterator();
    int index = 0;
    while(iterator.hasNext()){
    OrderItemBean c = (OrderItemBean)iterator.next();
    int index2 = index++;
    %>
    <form name="modelDetail1" method="POST" action="QSManager">  
    <input type="hidden" name="itemID" value="<%=c.getItemID()%>"></input>
    <input type="hidden" name="itemID" value="<%=c.getItemID()%>"></input>
    <input type="hidden" name="idorder" value="<%=c.getIdorder()%>"></input>
    <input type="hidden" name="itemIndex" value="<%=index2%>"></input>
    <input type="hidden" name="modelNo" value="<%=c.getitemTitle()%>"></input>
    <input type="hidden" name="description" value=" <%=c.getdescription()%>"></input>
   <table width="789" border="1" style="border-width:5px;">
 
  <tr>
    <td width="129" height="23"><b>Item Title:</b></td>
    <td width="223"><%=c.getitemTitle()%> </td>
    <td width="150" rowspan="2"><b>Address:</b></td>
    <td width="259" rowspan="2"><%=c.getAddress()%> </td>
  </tr>
  <tr>
    <td><b>Description:</b></td>
    <td><%=c.getdescription()%></td>
  </tr>
  <tr>
    <td><b>Quantity Ordered:</b></td>
    <td><%=c.getQuantityOrder()%></td>
    <td><b>Postal Code:</b></td>
    <td><%=c.getPostal()%></td>
  </tr>
  <tr>
    <td><b>Price:</b></td>
    <td><%=c.getPrice()%></td>
    <td><b>Country:</b></td>
    <td><%=c.getCountry()%></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><b>Customer Name:</b></td>
    <td><%=c.getCustomerName()%></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
    <%
                   if (c.getStatus().equals("On Request")){ %>
                   <input type="submit" name="action" value="On Delivery" onclick="return confirm('Confirm?');"></input>
                 <%} else if(c.getStatus().equals("On Delivery")) {%> 
                   <font color="blue"><b>On Delivery</b></font>
                   <%} else {%> 
                   Items have been Delivered.
                <% } %>
    
    
    </td>
    <td><b>Email:</b></td>
    <td><%=c.getEmail()%></td>
  </tr>

</table>
      </form>            
<p></p>
<p></p>
                </td>
                <%}%>
            </tr>
        </table>

</div>
 <%@ include file="footer.jsp" %>
    </body>
</html>