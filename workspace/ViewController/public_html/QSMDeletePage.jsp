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
            <%@ include file="masterpage.jsp"%>
        <div class="container">
                    <h2>QSM - Product List (Delete)</h2>
                 
                <p><b>Are you sure to delete this item?</b></p>
    <jsp:useBean id="Item" scope="page" class="controllers.StoreManager" />
                             <table width="96%" border="1" >
            <tr>
    <%
    //ArrayList ItemList = Item.getOnlyUserProducts((String)session.getAttribute("userName"));
    ArrayList ItemList = Item.getOneProducts((String)session.getAttribute("itemID"));
    Iterator iterator = ItemList.iterator();
    int index = 1;
    while(iterator.hasNext()){
    OrderItemBean c = (OrderItemBean)iterator.next();
    
    int index2 = index++;
    %>
            <td width="300"><img width='250' height='200' src="displayphoto?id=<%=c.getItemID()%>" ></img></td>
                <td>
                    <form name="modelDetail1" method="POST" action="Edit" enctype="multipart/form-data">
                    <input type="hidden" name="itemIndex" value="<%=index2%>"></input>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Item: </strong><%=c.getitemTitle()%>
                    </font>
                        
                    <input type="hidden" name="ItemTile" value="<%=c.getitemTitle()%>"></input>
                    
                    <p>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Description: </strong> <%=c.getdescription()%>
                        </font>
                    </p>
                        
                    <input type="hidden" name="ItemDesc" value=" <%=c.getdescription()%>"></input>
                      
                    <p>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Category: </strong> <%=c.getCategory()%>
                        </font>
                    </p>
                        
                    <input type="hidden" name="category" value=" <%=c.getCategory()%>"></input>
                      
                    <p>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Quantity left in Inventory: </strong> <%=c.getQuantity()%>
                        </font>
                    </p>
                    
                    <input type="hidden" name="quantity" size="2" value="<%=c.getQuantity()%>"></input>
                        
                    <p>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Price:</strong> <%=c.getPrice()%>
                        </font>
                    </p>
                    
                    <input type="hidden" name="Itemprice" value="<%=c.getPrice()%>"></input>
                    <input type="hidden" name="prod_owner" value=" <%=session.getAttribute("userName")%>"></input>
                    <input type="submit" name="action" value="Yes" onclick="return alert('Item delete successfully!');"></input>
                    <input type="submit" name="action" value="No"></input>
                    <input type="hidden" name="itemID" value="<%=c.getItemID()%>"></input>
                    </form>
                </td>
                        <%}%>
            </tr>
        </table>
        <br><br><br><br><br><br><br><br><br>
                 </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>