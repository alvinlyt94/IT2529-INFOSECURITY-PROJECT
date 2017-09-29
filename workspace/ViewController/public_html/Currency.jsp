<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
        <style type="text/css">
                div.padding {
                    padding-top: 0px;
                    padding-bottom: 0px;
                    padding-right: 0px;
                    padding-left: 650px;
                }
        </style>
    </head>
    <body>
    <%@ include file="masterpage.jsp" %>
        <div class="container">
            <h2>Currency - Currency Converter</h2>
                 
            <p><b>Please enter your information or make corrections in the fields indicated below.</b></p>
         
        <form id="form1" name="form1" method="post" action="currencyPath">
            <p>
                <b>Currency 1: </b>
                <select name="currencyType1">
                    <c:choose>
                        <c:when test="${sessionScope.currencyType1 == 'SGD'}">
                            <option value="">--Select Currency--</option>
                            <option value="SGD" selected="">SGD - Singapore Dollar</option>
                            <option value="USD">USD - US Dollar</option>
                            <option value="EUR">EUR - Euro Dollar</option>
                        </c:when>
                        <c:when test="${sessionScope.currencyType1 == 'USD'}">
                            <option value="">--Select Currency--</option>
                            <option value="SGD">SGD - Singapore Dollar</option>
                            <option value="USD" selected="">USD - US Dollar</option>
                            <option value="EUR">EUR - Euro Dollar</option>
                        </c:when>
                        <c:when test="${sessionScope.currencyType1 == 'EUR'}">
                            <option value="">--Select Currency--</option>
                            <option value="SGD">SGD - Singapore Dollar</option>
                            <option value="USD">USD - US Dollar</option>
                            <option value="EUR" selected="">EUR - Euro Dollar</option>
                        </c:when>
                        <c:otherwise>
                            <option value="">--Select Currency--</option>
                            <option value="SGD">SGD - Singapore Dollar</option>
                            <option value="USD">USD - US Dollar</option>
                            <option value="EUR">EUR - Euro Dollar</option>
                        </c:otherwise>
                    </c:choose>
                </select>
            </p>
            <p>
                <b>Currency 2: </b>
                <select name="currencyType2">
                    <c:choose>
                        <c:when test="${sessionScope.currencyType2 == 'SGD'}">
                            <option value="">--Select Currency--</option>
                            <option value="SGD" selected="">SGD - Singapore Dollar</option>
                            <option value="USD">USD - US Dollar</option>
                            <option value="EUR">EUR - Euro Dollar</option>
                        </c:when>
                        <c:when test="${sessionScope.currencyType2 == 'USD'}">
                            <option value="">--Select Currency--</option>
                            <option value="SGD">SGD - Singapore Dollar</option>
                            <option value="USD" selected="">USD - US Dollar</option>
                            <option value="EUR">EUR - Euro Dollar</option>
                        </c:when>
                        <c:when test="${sessionScope.currencyType2 == 'EUR'}">
                            <option value="">--Select Currency--</option>
                            <option value="SGD">SGD - Singapore Dollar</option>
                            <option value="USD">USD - US Dollar</option>
                            <option value="EUR" selected="">EUR - Euro Dollar</option>
                        </c:when>
                        <c:otherwise>
                            <option value="">--Select Currency--</option>
                            <option value="SGD">SGD - Singapore Dollar</option>
                            <option value="USD">USD - US Dollar</option>
                            <option value="EUR">EUR - Euro Dollar</option>
                        </c:otherwise>
                    </c:choose>
                </select>
            </p>
            <p>
                <b>Amount(s): $</b> 
                <c:choose>
                    <c:when test="${requestScope.show == 'true'}">
                        <input type="number" name="amount" size="10" step="0.01" min="1" value='<%=session.getAttribute("amountSame")%>'/>
                    </c:when>
                    <c:otherwise>
                        <input type="number" name="amount" size="10" step="0.01" min="1" value='1.0'/>
                    </c:otherwise>
                </c:choose>
                <input type="hidden" name="fromWhatPage" value="fromCurrency"/>
                <input type="submit" name="a" value="Convert"/>
                <c:if test="${requestScope.show == 'true'}">
                    </br></br>
                    <b><font color="red"><%=request.getAttribute("showErrorMessage")%></font></b>
                    <hr>
                </c:if>
            </p>
            <br>
            <u>
                <b>Current Balance:</b></u>
            <br></br>
            <b>Singapore Dollar - SGD: $</b>
            <%=session.getAttribute("sgdBalance")%>
            <br></br>
            <b>US Dollar - USD: $</b>
            <%=session.getAttribute("usdBalance")%>
            <br></br>
            <b>Euro Dollar - EUR: $</b>
            <%=session.getAttribute("eurBalance")%>
        </form>
        <br><br><br><br><br><br><br><br><br>
            </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>