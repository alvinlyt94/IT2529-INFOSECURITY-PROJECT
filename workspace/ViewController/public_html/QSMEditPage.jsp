<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="beans.OrderItemBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <link href="CSS/standard.css" rel="stylesheet" type="text/css"></link>
    </head>
    <body>
        <%@ include file="masterpage.jsp"%>
        <div class="container">
            <h2>QSM - Product List (Update)</h2>
            <p>
                <b>Please make corrections in the fields indicated below.</b>
            </p>
            <jsp:useBean id="Item" scope="page" class="controllers.StoreManager"/>
                        
            
            <%
    //ArrayList ItemList = Item.getOnlyUserProducts((String)session.getAttribute("userName"));
    ArrayList ItemList = Item.getOneProducts((String)session.getAttribute("itemID"));
    Iterator iterator = ItemList.iterator();
    int index = 1;
    while(iterator.hasNext()){
    OrderItemBean c = (OrderItemBean)iterator.next();
    
    int index2 = index++;
    %>
    
            <input type="hidden" name="itemIndex" value="<%=index2%>"></input>
                    <form name="modelDetail1" method="POST" action="Edit" enctype="multipart/form-data">
                     <table width="96%" border="0" >
                     <tr> 
                     <td rowspan="8" width="300"><img width='250' height='200' src="displayphoto?id=<%=c.getItemID()%>" ></img></td>
                        <td width="300">
                            
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>Item:</strong>  </font>
                        </td>
                      <td><input type="text" name="ItemTile" value="<%=c.getitemTitle()%>"></input>
                        </td></tr>
                        
                        <tr>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Description:</strong>       
                        </font>
                        </td>
                  
                  <td><textarea cols="20" rows="3" name="ItemDesc"><%=c.getdescription()%></textarea></td>
                  </tr>
                     <tr><td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Category:</strong> </font></td>
                           <td><select size="1" name="category">
                             <option value="Electronics">Electronics</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                                <option value="Shoes">Shoes</option>
                                
                                <option value="Shirt">Shirt</option>
                                <option value="Pants">Pants</option>
                                
                            </select></td>
                       
                    </tr>
                    <!-- <input type="text" name="category" value="<%=c.getCategory()%>"></input>-->
                 
                      <tr><td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Quantity left in Inventory:</strong></font></p></td>
                          <td><input type="number" name="quantity" size="2" value="<%=c.getQuantity()%>"></input></td>
                        
                   </tr>
                       
                      <tr>  <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Price:</strong></font></td>
                           <td> <input type="number" name="Itemprice" value="<%=c.getPrice()%>" step="0.01" min="1"></input></td>
                        
                    </tr>
                       <tr><td> <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Select Image:</strong></font></td>
                           <td> <input type="file" name="image"/>
                        
                   </td>
                   
                   </tr>
                   
                     </table>
                        <input type="hidden" name="prod_owner" value='<%=session.getAttribute("userName")%>'></input>
                        <input type="submit" name="action" value="Update"
                           onclick="return confirm('Are you sure to update this items?');"></input>
                        <input type="hidden" name="itemID" value="<%=c.getItemID()%>"></input>
                    </form>
                
                        <%}%>
          
      
<br><br><br><br><br><br>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>