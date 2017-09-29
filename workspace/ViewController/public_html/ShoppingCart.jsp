<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <!--<%
    session = request.getSession();  
    if(null!=session.getAttribute("userName")){  
    out.write("Welcome! "+session.getAttribute("userName").toString());  
    }  
    else{  
    response.sendRedirect("LoginPage.jsp");  
    }  
    %>-->
        <%@ include file="masterpage.jsp" %>
        <div class="container">
            <h2>Shopping Cart</h2>
                 
                <p><b>List of item(s) currently in cart.</b></p>
        <p>
            <a href="productPage.jsp" mce_href="/productPage.jsp">Back to Product Page</a>
        </p>
        <table width="75%" border="1">
            <tr bgcolor="#CCCCCC">
                <td>
                    <strong>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">Model Description</font></strong>
                </td>
                <td>
                    <strong>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong>
                </td>
                <td>
                    <strong>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">Unit Price</font></strong>
                </td>
                <td>
                    <strong>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong>
                </td>
            </tr>
             
            <jsp:useBean id="cart" scope="session" class="beans.CartBean"/>
             
            <c:if test="${cart.lineItemCount==0}">
                <tr>
                    <td colspan="4">
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            - Cart is currently empty -
                            <br/>
                        </font>
                    </td>
                </tr>
            </c:if>
             
            <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
                <form name="item" method="POST" action="servlet/CartController">
                <tr>
                    <td>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <b>
                                <c:out value="${cartItem.partNumber}"/></b>
                            <br/>
                            <c:out value="${cartItem.modelDescription}"/>
                        </font>
                    </td>
                    <td>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                    
                            <input type='hidden' name='itemIndex' value='${counter.count}'></input>
                            <input type='text' name="quantity" value="${cartItem.quantity}" size='2'></input>
                            
                            <input type="submit" name="action" value="Update"></input>
                            <br/>
                            <input type="submit" name="action" value="Delete"></input>
                        </font>
                    </td>
                    <td>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            $
                            <c:out value="${cartItem.unitCost}"/>
                        </font>
                    </td>
                    <td>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            $
                            <c:out value="${cartItem.totalCost}"/>
                        </font>
                    </td>
                </tr>
                 </form>
            </c:forEach>
            
            <tr>
                <td colspan="2"></td>
                <td></td>
                <td>
                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                        Subtotal: $
                        <c:out value="${cart.orderTotal}"/>
                    </font>
                </td>
            </tr>
        </table>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
        <%@ include file="footer.jsp" %> 
    </body>
</html>