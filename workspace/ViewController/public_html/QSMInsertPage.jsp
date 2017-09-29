<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="beans.ItemBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <link href="CSS/standard.css" rel="stylesheet" type="text/css"></link>
    </head>
    <body>
     <%@ include file="masterpage.jsp" %>
        <div class="container">
                            <h2>QSM - Add Items</h2>
                 
                <p><b>Please enter your information or make corrections in the fields indicated below.</b></p>
        <jsp:useBean id="Item" scope="page" class="controllers.StoreManager"/>
         
        <form name="modelDetail1" method="POST" action="Edit" enctype="multipart/form-data">
           
            <table border="0">
                <!-- Item --> 
                <tr>
                    <td width="150">
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Item:</strong>
                        </font>
                    </td>
                    <td width="650">
                        <c:choose>
                            <c:when test="${requestScope.showErrorTitle == 'true'}">
                                <input type="text" name="ItemTile" value="<%=request.getAttribute("prod_title")%>">
                            </c:when>
                            <c:when test="${requestScope.showErrorTitle == 'false'}">
                                <input type="text" name="ItemTile" value="<%=request.getAttribute("prod_title")%>">
                            </c:when>
                            <c:otherwise>
                                <input type="text" name="ItemTile" value="">
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <c:if test="${requestScope.showErrorTitle == 'true'}">  
                            <b><font color="red">*Please enter your Item Name!</font></b>
                        </c:if>
                    </td>
                </tr>
                <!-- Description -->
                <tr>
                    <td>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Description:</strong>
                        </font>
                    </td>
                    <td>
                       <c:choose>
                            <c:when test="${requestScope.showErrorDesc == 'true'}">
                                <textarea cols="20" rows="3" name="ItemDesc"><%=request.getAttribute("prod_desc")%></textarea>
                            </c:when>
                            <c:when test="${requestScope.showErrorDesc == 'false'}">
                                <textarea cols="20" rows="3" name="ItemDesc"><%=request.getAttribute("prod_desc")%></textarea>
                            </c:when>
                            <c:otherwise>
                                <textarea cols="20" rows="3" name="ItemDesc"></textarea>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <c:if test="${requestScope.showErrorDesc == 'true'}">  
                                <b><font color="red">*Please enter your Item Description!</font></b>
                        </c:if>
                    </td>
                </tr>
                <!-- Category -->
                <tr>
                    <td>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Category:</strong>
                        </font>
                    </td>
                    <td>
                        <select size="1" name="category">
                            <option value="Electronics">Electronics</option>
                             <option value="Miscellaneous">Miscellaneous</option>
                                <option value="Shoes">Shoes</option>
                                
                                <option value="Shirt">Shirt</option>
                                <option value="Pants">Pants</option>
                                
                        </select>
                    </td>
                    <td>
                    </td>
                </tr>
                <!-- Quantity -->
                <tr>
                    <td>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Quantity:</strong>
                        </font>
                    </td>
                    <td>
                        <input type="number" name="quantity" size="2" value="1">
                    </td>
                    <td>
                    </td>
                </tr>
                <!-- Price -->
                <tr>
                    <td>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Price:</strong>
                        </font>
                    </td>
                    <td>
                        <input type="number" name="Itemprice" value="1" step="0.01" min="1" >
                    </td>
                    <td>
                    </td>
                </tr>
                <!-- Image -->
                <tr>
                    <td>
                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                            <strong>Select Image:</strong>
                        </font>  
                    </td>
                    <td>
                        <input type="file" name="image" />
                    </td>
                    <td>
                        <c:if test="${requestScope.showErrorFile == 'true'}">  
                                <b><font color="red">*Please upload an image!</font></b>
                        </c:if>
                    </td>
                </tr>
            </table>
              <input type="hidden" name="prod_owner" value="<%=session.getAttribute("userName")%>"></input>
            
            <input type="submit" name="action" value="Insert" onclick="return confirm('Are you sure to insert this items?');">
        </form>
                <br><br><br><br><br><br>
                    </div>
    <%@ include file="footer.jsp" %>
    </body>
</html>


