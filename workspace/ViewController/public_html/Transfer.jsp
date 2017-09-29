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
        <%@ include file="masterpage.jsp"%>
                <div class="container">
        <h2>Currency - Transfer Money</h2>
        
        <p><b>Please enter your information or make corrections in the fields indicated below.</b></p>
        
        <form id="form2" name="form2" action="transferConfirmationPath">
            <p>
                <b>Applicant:  </b>               
                <select name="bankAcctName">
                    <option value="">--Select Applicant--</option>
                    <c:forEach items="${requestScope.applicant}" var="current" >
                        <option value="<c:out value="${current.applicant}"/>"><c:out value="${current.applicant}"/></option>
                    </c:forEach>
                </select>
                
            </p>
            <p>
                <b>Currency: </b>
                <select name="currencyType">
                    <c:choose>
                        <c:when test="${sessionScope.currencyType == 'SGD'}">
                            <option value="">--Select Currency--</option>
                            <option value="SGD" selected="">SGD - Singapore Dollar</option>
                            <option value="USD">USD - US Dollar</option>
                            <option value="EUR">EUR - Euro Dollar</option>
                        </c:when>
                        <c:when test="${sessionScope.currencyType == 'USD'}">
                            <option value="">--Select Currency--</option>
                            <option value="SGD">SGD - Singapore Dollar</option>
                            <option value="USD" selected="">USD - US Dollar</option>
                            <option value="EUR">EUR - Euro Dollar</option>
                        </c:when>
                        <c:when test="${sessionScope.currencyType == 'EUR'}">
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
                <c:choose>
                    <c:when test="${requestScope.showUsernameError == 'true'}">
                        <input type="number" name="amount" size="10" step="0.01" min="1" value='<%=session.getAttribute("amountSame")%>'/>
                    </c:when>
                    <c:when test="${requestScope.show == 'true'}">
                        <input type="number" name="amount" size="10" step="0.01" min="1" value='<%=session.getAttribute("amountSame")%>'/>
                    </c:when>
                    <c:when test="${requestScope.showInsufficient == 'true'}">
                        <input type="number" name="amount" size="10" step="0.01" min="1" value='<%=session.getAttribute("amountSame")%>'/>
                    </c:when>
                    <c:when test="${requestScope.displayAmount == 'true'}">
                        <input type="number" name="amount" size="10" step="0.01" min="1" value='1.0'/>
                    </c:when>
                    <c:otherwise>
                        <input type="number" name="amount" size="10" step="0.01" min="1" value='1.0'/>
                    </c:otherwise>
                </c:choose>
                <input type="submit" name="a" value="Transfer"/>
                <c:if test="${requestScope.show == 'true'}">
                    </br></br>
                    <b><font color="red"><%=request.getAttribute("showErrorMessage")%></font></b>
                    <hr>
                </c:if>
                <c:if test="${requestScope.showInsufficient == 'true'}">
                                    </br></br>
                <b>
                    <font color="red">
                        *Insufficient Balance in <u><%=request.getAttribute("whichInsufficient")%></u>!
                    </font></b>
                                        <hr>
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
            <input type="hidden" name="userName" value='<%=session.getAttribute("userName")%>'/>
            <input type="number" style="display: none;" name="sgdBalance"
                   value='<%=session.getAttribute("sgdBalance")%>' step="0.01"/>
            <input type="number" style="display: none;" name="usdBalance"
                   value='<%=session.getAttribute("usdBalance")%>' step="0.01"/>
            <input type="number" style="display: none;" name="eurBalance"
                   value='<%=session.getAttribute("eurBalance")%>' step="0.01"/>
            <input type="hidden" name="showAllError" value='true'/>
        </form>
        <br><br><br><br><br><br><br><br><br><br>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>