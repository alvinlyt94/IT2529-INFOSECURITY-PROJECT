<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <link rel="stylesheet" href="styles/layout.css" type="text/css"/>
        <script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
        <script type="text/javascript" src="scripts/jquery.jcarousel.pack.js"></script>
        <script type="text/javascript" src="scripts/jquery.jcarousel.setup.js"></script>
    </head>
    <body id="top">
        <div class="wrapper col1">
            <div id="header">
                <div id="logo">
                    <h1>
                        <a href="Index.jsp">LaoCheng+</a>
                    </h1>
                    <p>A Global Trading Platform</p>
                </div>
                <div id="topnav">
                    <%  session = request.getSession();  
                        if(null==session.getAttribute("userName") || request.getAttribute("fromRegisterPage")=="true"){  %>
                            <li><a href="Index.jsp">Home</a></li> 
                            <li><a href="registerPage.jsp">Sign Up</a></li>
                            <li><a href="LoginPage.jsp">Login</a></li>
                            <li><a href="#">Items</a>
                                <ul>
                                   
                                    <li><a href="productpage?category=Electronics">Electronics</a></li>
                                    <li><a href="productpage?category=Miscellaneous">Miscellaneous</a></li>
                                     <li><a href="productpage?category=Shoes">Shoes</a></li>
                                    <li><a href="productpage?category=Pants">Pants</a></li>
                                    <li><a href="productpage?category=Shirt">Socks</a></li>
                                    <li><a href="productpage?category=Shirt">Gift & Craft</a></li>
                                    <li><a href="productpage?category=Shirt">Home & Garden</a></li>
                                    <li><a href="productpage?category=Shirt">Lights & Lightings</a></li>
                                    <li><a href="productpage?category=Shirt">Sports and Entetainment</a></li>
                                    <li><a href="productpage?category=Tools">Tools</a></li>
                                    
                                </ul>
                            </li>
                        <% } else { %>
                            <li><a href="Index.jsp">Home</a>
                                <ul>
                                    <li><a href="Logout">Logout</a></li>
                                </ul>
                            </li> 
                            <li><a href="userLogin.jsp">Profile Page</a></li>
                            <li><a href="#">QSM</a>
                                <ul>
                                    <li><a href="QSMProductPage.jsp">Product List</a></li>
                                    <li><a href="QSMInsertPage.jsp">Add Items</a></li>
                                    <li><a href="QSMOnRequest.jsp">Sales Delivery</a>
                                </ul>
                            </li>
                            <li><a href="productPage.jsp">Items</a>
                                <ul>
                                    <li><a href="productpage?category=Shoes">Shoes</a></li>
                                    <li><a href="productpage?category=Pants">Pants</a></li>
                                    <li><a href="productpage?category=Shirt">Socks</a></li>
                                    <li><a href="productpage?category=Shirt">Gift & Craft</a></li>
                                    <li><a href="productpage?category=Shirt">Home & Garden</a></li>
                                    <li><a href="productpage?category=Shirt">Lights & Lightings</a></li>
                                    <li><a href="productpage?category=Shirt">Sports and Entetainment</a></li>
                                    <li><a href="productpage?category=Tools">Tools</a></li>
                                    <li><a href="productpage?category=Misc">Misc</a></li>
                                </ul>
                            </li>
                            <li><a href="ShoppingCart.jsp">Shopping Cart</a>
                                <ul>
                                    <li><a href="userOrderPage.jsp">My Orders</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Currency</a>
                                <ul>
                                    <li><a href="Currency.jsp">Currency Converter</a></li>
                                    <li><a href="transferConfirmationPath?userName=<%=session.getAttribute("userName")%>&showAllError=false&currencyType=SGD&amount=1&sgdBalance=<%=session.getAttribute("sgdBalance")%>&usdBalance=<%=session.getAttribute("usdBalance")%>&eurBalance=<%=session.getAttribute("eurBalance")%>">Transfer</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Application</a>
                                <ul>
                                    <li><a href="Application.jsp">Apply Applicant</a></li>
                                    <li><a href="applicationRemovePath?userName=<%=session.getAttribute("userName")%>&showError=false">Remove Applicant</a></li>
                                </ul>
                            </li>
                        <% } 
                    %>
                    <li><a href="ContactUs.jsp">Contact Us</a></li>
                </div>
                <br class="clear"/>
            </div>
        </div>
    </body>
</html>