<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="beans.OrderItemBean" %> 
<%@ page import="java.util.ArrayList" %> 
<%@ page import="java.util.Iterator" %> 
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.math.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
            <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%@ include file="masterpage.jsp"%>
        <div class="container">
                    <h2>QSM - Product List</h2>
                 
                <p><b>List of item(s) you had in your inventory.</b></p>
   <jsp:useBean id="Item" scope="page" class="controllers.StoreManager" />
               <table width="96%" border="1" >
            <tr>
    <%
   // ArrayList ItemList = Item.getOnlyUserProducts((String)session.getAttribute("userName"));
    ArrayList ItemList = Item.getOnlyUserProducts((String)session.getAttribute("userName"));
    Iterator iterator = ItemList.iterator();
    int index = 1;
    int counter = 0;
    while(iterator.hasNext()){
    if (counter == 2){%>
        <tr>
    <%
        counter = 0;
    }
    counter++;
    OrderItemBean c = (OrderItemBean)iterator.next();
    
    int index2 = index++;
    %>
            <td width="300"><img width='250' height='200' src="displayphoto?id=<%=c.getItemID()%>" ></img></td>
                <td>    
                    <form name="modelDetail1" method="POST" action="EditManager">
                    <input type="hidden" name="itemID" value="<%=c.getItemID()%>"></input>
                    <input type="hidden" name="itemIndex" value="<%=index2%>"></input>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Item: </strong><%=c.getitemTitle()%>
                    </font>
                        <p>
                            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                <strong>Description: </strong><%=c.getdescription()%>
                            </font>
                        </p>
                        <p>
                            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                <strong>Quantity left in Inventory: </strong> <%=c.getQuantity()%>
                            </font>
                        </p>
                        <p>
                            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                <strong>Price:</strong>
                                <%DecimalFormat df = new DecimalFormat(".00");
                                %>
                                <%=df.format(c.getPrice())%>
                            </font><input type="hidden" name="price" value="<%=c.getPrice()%>"></input>
                        </p>

                     <input type="submit" name="action" value="Update"></input>
                     <input type="submit" name="action" value="Delete"></input>
                     </form>
                </td>
               
                <%}%>
                            </tr>
        </table>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>