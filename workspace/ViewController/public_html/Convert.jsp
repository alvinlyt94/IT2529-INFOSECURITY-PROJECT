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

                hidden {
                    visibility: hidden;
                }
        </style>
    </head>
    <body>
    <%@ include file="masterpage.jsp" %>
        <div class="container">
            <h2>Currency - Currency Converter</h2>
                 
            <p><b><u>Conversion Results:</u></b></p>
         
        <form id="form2" name="form2" method="post" action="exchangeConfirmationPath">
            <b>
                    <%=session.getAttribute("amount")%> <%=session.getAttribute("currencyType1")%> = <%=session.getAttribute("newCurrencyValue1")%> <%=session.getAttribute("currencyType2")%></b>
            <input type="submit" name="exchange" id="exchange1" value="Exchange1"/>
            <br/>
            <b>
                    <%=session.getAttribute("amount")%> <%=session.getAttribute("currencyType2")%> = <%=session.getAttribute("newCurrencyValue2")%> <%=session.getAttribute("currencyType1")%></b>
            <input type="submit" name="exchange" id="exchange2" value="Exchange2"/>
            <br/>
            <br/>
            <b>
                <u>Rates:</u></b>
            <br/>
            1
            <%=session.getAttribute("currencyType1")%>
            =
            <%=session.getAttribute("ratesReturn1")%>
            <%=session.getAttribute("currencyType2")%>
            <br/>
            1
            <%=session.getAttribute("currencyType2")%>
            =
            <%=session.getAttribute("ratesReturn2")%>
            <%=session.getAttribute("currencyType1")%>
            <br/><br/>
            <input type="hidden" name="userName" value='<%=session.getAttribute("userName")%>'/>
            <input type="hidden" name="currencyType1" value='<%=session.getAttribute("currencyType1")%>'/>
            <input type="hidden" name="currencyType2" value='<%=session.getAttribute("currencyType2")%>'/>
            <input type="number" style="display: none;" name="newCurrencyValue1"
                   value='<%=session.getAttribute("newCurrencyValue1")%>' step="0.01"/>
            <input type="number" style="display: none;" name="newCurrencyValue2"
                   value='<%=session.getAttribute("newCurrencyValue2")%>' step="0.01"/>
            <input type="number" style="display: none;" name="amount" value='<%=session.getAttribute("amount")%>'
                   step="0.01"/>
            <input type="number" style="display: none;" name="sgdBalance"
                   value='<%=session.getAttribute("sgdBalance")%>' step="0.01"/>
            <input type="number" style="display: none;" name="usdBalance"
                   value='<%=session.getAttribute("usdBalance")%>' step="0.01"/>
            <input type="number" style="display: none;" name="eurBalance"
                   value='<%=session.getAttribute("eurBalance")%>' step="0.01"/>
            <c:if test="${requestScope.showInsufficient == 'true'}">
                <b>
                    <font color="red">
                        *Insufficient Balance in <u><%=request.getAttribute("whichInsufficient")%></u>!
                    </font></b>
            </c:if>
        </form>
        <hr></hr>
        <form id="form2" name="form2" method="post" action="currencyPath">
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
                <b>Amount(s): $ </b>
                <input type="number" name="amount" size="10" step="0.01" min="1"
                       value='<%=session.getAttribute("amountSame")%>'/>
                 
                <input type="hidden" name="fromWhatPage" value="fromConvert"/>
                 
                <input type="submit" name="a" value="Convert"/>
                 <br/><br/>
                <c:if test="${requestScope.show == 'true'}">
                    <b>
                        <font color="red">
                            <%=request.getAttribute("showErrorMessage")%>
                        </font></b>
                    <hr></hr>
                </c:if>
            </p>
            <u>
                <b>Current Balance:</b></u>
            <br></br>
            <b>Singapore Dollar - SGD: $</b>
            <c:choose>
                <c:when test="${requestScope.whichInsufficient == 'SGD'}">
                    <u><b><font color="red">
                        <%=session.getAttribute("sgdBalance")%>!!</font></b></u>
                </c:when>
                <c:otherwise>
                    <%=session.getAttribute("sgdBalance")%>
                </c:otherwise>
            </c:choose>
            <br></br>
            <b>US Dollar - USD: $</b>
            <c:choose>
                <c:when test="${requestScope.whichInsufficient == 'USD'}">
                    <u><b><font color="red">
                        <%=session.getAttribute("usdBalance")%>!!</font></b></u>
                </c:when>
                <c:otherwise>
                    <%=session.getAttribute("usdBalance")%>
                </c:otherwise>
            </c:choose>
            <br></br>
            <b>Euro Dollar - EUR: $</b>
            <c:choose>
                <c:when test="${requestScope.whichInsufficient == 'EUR'}">
                    <u><b><font color="red">
                        <%=session.getAttribute("eurBalance")%>!!</font></b></u>
                </c:when>
                <c:otherwise>
                    <%=session.getAttribute("eurBalance")%>
                </c:otherwise>
            </c:choose>
        </form>
        </div>
        <%@ include file="footer.jsp" %> 
    </body>
</html>