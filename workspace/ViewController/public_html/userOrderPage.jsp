<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <body>
    <jsp:useBean id="Order" scope="page" class="controllers.QSManager" />
            <%@ include file="masterpage.jsp"%>
                <div class="container">
            <h2>My Orders</h2>
            
            <p><b>List of item(s) that were ordered.</b></p>
    <%
    ArrayList OrderList = Order.getUserAllOrder((String)session.getAttribute("userName"));
    Iterator iterator = OrderList.iterator();
    int index = 0;
    while(iterator.hasNext()){
    OrderItemBean c = (OrderItemBean)iterator.next();
    int index2 = index++;
    %>
     <p>
        <table width="75%" border="1" style="border-width:5px;">
            <tr>
                <td>
                    <form name="modelDetail1" method="POST" action="QSManager">
                     <input type="hidden" name="itemID" value="<%=c.getItemID()%>"></input>
                      <input type="hidden" name="idorder" value="<%=c.getIdorder()%>"></input>
                     <strong>Item No: </strong><%=c.getItemID()%>
                     <input type="hidden" name="itemIndex" value="<%=index2%>"></input>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        </font>
                        <input type="hidden" name="modelNo" value="<%=c.getitemTitle()%>"></input>
                        <p>
                         <strong>Item Title: </strong><%=c.getitemTitle()%>  </p>
                            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                               </p>     <strong>Description:</strong>
                                <%=c.getdescription()%>
                            </font><input type="hidden" name="description" value=" <%=c.getdescription()%>"></input>
                        </p>
                        <p>
                            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                <strong>Quantity: </strong><%=c.getQuantity()%>
                                   
                            </font>
                        </p>
                        <p>
                            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                <strong>Price:</strong>
                               <%=c.getPrice()%>
                            </font><input type="hidden" name="price" value="<%=c.getPrice()%>"></input>
                        </p>
                   
                   
                   <%
                   if (c.getStatus().equals("On Request")){ %>
                      <i>Waiting for Delivery...</i>
                 <%} else if(c.getStatus().equals("On Delivery")){%> 
                    <input type="submit" name="action" value="Confirm Delivery" onclick="return confirm('Confirm Delivery?');"></input>
                   <%} else{%> 
                   <font color="green"><b>Item has been Delivered!</b></font>
                          <%}%>  
                    </form>
                </td>
                <%}%>
            </tr>
        </table>
                </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>