<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="beans.OrderItemBean"%>
<%@ page import="beans.reviewBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <link href="CSS/standard.css" rel="stylesheet" type="text/css"></link>
        <link href="styles/layout.css" rel="stylesheet" type="text/css"></link>
    </head>
    <body>
        <%@ include file="MasterPage.jsp"%>
        <div class="container">
            <h2>Product Detail</h2>
             
            <jsp:useBean id="Item" scope="page" class="controllers.StoreManager"/>
             
            <jsp:useBean id="Review" scope="page" class="controllers.ReviewManager"/>
             
            <a href="ShoppingCart.jsp" mce_href="/ShoppingCart.jsp">View Cart</a>
            <p/>
            <%
ArrayList ItemList = Item.getOneProducts((String)session.getAttribute("ItemID"));
Iterator iterator = ItemList.iterator();
int index = 0;
while(iterator.hasNext()){
OrderItemBean c = (OrderItemBean)iterator.next();
int index2 = index++;
%>
            <p></p>
            <table width="75%" border="1">
                <tr>
                <td width="300"><img width='250' height='200' src="displayuserphoto?id=<%=session.getAttribute("userName")%>" ></img></td>
                    <td>
                        <form name="modelDetail1" method="POST" action="servlet/CartController">
                            <input type="hidden" name="itemCode" value="<%=c.getItemID()%>"></input>
                            <input type="hidden" name="userName" value="<%=session.getAttribute("userName")%>"></input>
                            <input type="hidden" name="prod_owner" value="<%=c.getProd_owner()%>"></input>
                            <input type="hidden" name="itemIndex" value="<%=index2%>"></input>
                            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                <strong>Item:</strong>
                                <%=c.getitemTitle()%>
                            </font>
                            <input type="hidden" name="modelNo" value="<%=c.getitemTitle()%>"></input>
                            <p>
                                <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                    <strong>Description:</strong>
                                    <%=c.getdescription()%>
                                </font><input type="hidden" name="description" value="<%=c.getdescription()%>"></input>
                            </p>
                            <p>
                                <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                    <strong>Quantity:
                                        <input type="text" size="2" value="1" name="quantity"></input></strong>
                                </font>
                            </p>
                            <p>
                                <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                    <strong>Price:</strong>
                                    <%=c.getPrice()%>
                                </font><input type="hidden" name="price" value="<%=c.getPrice()%>"></input>
                            </p>
                            <input type="submit" name="action" value="Buy Now" onclick="return confirm('Comfirm to Buy Now?');"></input>
                            <input type="submit" name="action" value="Add To Cart"></input>
                        </form>
                         
                        <%}%>
                    </td>
                </tr>
            </table>
             
            <%
ArrayList reviewList = Review.getItemReviews((String)session.getAttribute("ItemID"));
Iterator iteratorList = reviewList.iterator();
int indexList = 0;
while(iteratorList.hasNext()){
reviewBean r = (reviewBean)iteratorList.next();
int indexList2 = indexList++;
%>
             
            <input type="hidden" name="itemCode" value="<%=r.getIdproductview()%>"></input>
            <div id="comments">
                <ul class="commentlist">
                    <li class="comment_even" style="width:95%;">
                        <div class="author">
                            <img class="avatar" src="displayuserphoto?id=<%=r.getUsername()%>" width="32" height="32" alt=""/><span class="name">
                                <a href="#">
                                    <%=r.getUsername()%></a></span>
                             
                            <span class="wrote">wrote:</span>
                        </div>
                        <div class="submitdate">
                            <a href="#">August 4, 2009 at 8:35 am</a>
                        </div>
                        <p>
                            <%=r.getReviews()%>
                        </p>
                    </li>
                </ul>
            </div>
            <%}%>
             
            <h2>Reviews</h2>
            
            <div id="respond">
                <form name="modelDetail1" method="POST" action="ReviewManagerPage">
                    <input type="hidden" name="idproductView" value='<%=(String)session.getAttribute("ItemID")%>'></input>
                    <p>
                        <strong>Username: <u><%=(String)session.getAttribute("userName")%></u></strong>
                        <input type="hidden" name="userName" value='<%=(String)session.getAttribute("userName")%>'></input>
                        <c:if test="${requestScope.showErrorReview == 'true'}"> 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <b><font color="red">*Please enter your comments below.</font></b>
                        </c:if>
                    </p>
                    <p>
                        <c:choose>
                            <c:when test="${requestScope.showErrorReview == 'true'}">
                                <textarea name="review" id="comment" cols="100%" rows="10"><%=request.getAttribute("review")%></textarea>
                            </c:when>
                            <c:when test="${requestScope.showErrorReview == 'false'}">
                                <textarea name="review" id="comment" cols="100%" rows="10"/><%=request.getAttribute("review")%></textarea>
                            </c:when>
                            <c:otherwise>
                                <textarea name="review" id="comment" cols="100%" rows="10"></textarea>
                            </c:otherwise>
                        </c:choose>
                        <label for="comment" style="display:none;">
                            <small>Comment (required)</small>
                        </label>
                    </p>
                    <p>
                        <c:if test="${requestScope.showErrorCaptcha == 'true'}">  
                            <b><font color="red">*Invalid Captcha! Please re-enter!</font></b>
                            <br>
                        </c:if>
                        <img src="jcaptcha.jpg"/>
                         
                        <input type="text" name="jcaptcha" value=""/>
                         
                        <input name="action" type="submit" id="submit" value="Post Review"/>
                         &nbsp; 
                        <input name="reset" type="reset" id="reset" tabindex="5" value="Reset"/>
                    </p>
                </form>
            </div>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>