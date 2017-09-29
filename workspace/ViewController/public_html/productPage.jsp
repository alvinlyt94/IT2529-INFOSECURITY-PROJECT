<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="beans.OrderItemBean" %> 
<%@ page import="java.util.ArrayList" %> 
<%@ page import="java.util.Iterator" %> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
    </head>
    <body>

        <%@ include file="masterpage.jsp" %>
        <div class="container">
                    <h2>Shopping Items</h2>
                 
                <p><b>List of item(s) available for sale.</b></p>
    </p><a href="ShoppingCart.jsp" mce_href="/ShoppingCart.jsp">View Cart</a> <p/>
    <jsp:useBean id="Item" scope="page" class="controllers.StoreManager" />
            <table width="96%" border="1" >
            <tr>
    <%
    ArrayList ItemList = Item.getCategoryProducts((String)session.getAttribute("string"));
    Iterator iterator = ItemList.iterator();
    int index = 0;
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
                    <form name="modelDetail1" method="POST" action="servlet/CartController">
                    <input type="hidden" name="itemCode" value="<%=c.getItemID()%>"></input>
                    <input type="hidden" name="itemIndex" value="<%=index2%>"></input>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Item:</strong> <a href="productDetail?itemID=<%=c.getItemID()%>"><%=c.getitemTitle()%> </a>
                    </font>
                        <input type="hidden" name="modelNo" value="<%=c.getitemTitle()%>"></input>
                        <p>
                            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                <strong>Price:</strong>
                               <%=c.getPrice()%>
                            </font><input type="hidden" name="price" value="<%=c.getPrice()%>"></input>
                        </p>
                
                        <input type="submit" name="action" value="Add To Cart"></input>
                    </form>
                </td>
                        <%}%>
            </tr>
        </table>
                    </div>
    <%@ include file="footer.jsp" %>
    </body>
</html>