<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
    <link rel="stylesheet" type="text/css" href="CSS/pin.css"/>
    <script src="JS/patternlock.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
        <style type="text/css">
                div.padding {
                    padding-top: 0px;
                    padding-bottom: 0px;
                    padding-right: 0px;
                    padding-left: 650px;
                }
                
                div.pinPadding {
                    padding-top: 0px;
                    padding-bottom: 0px;
                    padding-right: 0px;
                    padding-left: 0px;
                }

                hidden {
                    visibility: hidden;
                }
        </style>
        <script type="text/javascript">
          function stayHere() {
              window.history.forward();
          }
        </script>
    </head>
    <body onload="stayHere();">
        <%@ include file="masterpage.jsp"%>
        <div class="container">
        <h2>Currency - Transfer Money</h2>
        
        <p><b>Please confirm.</b></p>
         
        <form id="form2" name="form2" method="post" action="transferPath">
            <u>
                <b>New Balance:</b></u>
            <br></br>
            <b>Singapore Dollar - SGD: $</b>
            <%=session.getAttribute("newSgdBalance")%>
            <c:if test="${sessionScope.currencyType == 'SGD'}">
                <b>
                    <font color="red">
                        ( -
                        <%=session.getAttribute("amount")%>
                        )
                    </font></b>
            </c:if>
            <br></br>
            <b>US Dollar - USD: $</b>
            <%=session.getAttribute("newUsdBalance")%>
            <c:if test="${sessionScope.currencyType == 'USD'}">
                <b>
                    <font color="red">
                        ( -
                        <%=session.getAttribute("amount")%>
                        )
                    </font></b>
            </c:if>
            <br></br>
            <b>Euro Dollar - EUR: $</b>
            <%=session.getAttribute("newEurBalance")%>
            <c:if test="${sessionScope.currencyType == 'EUR'}">
                <b>
                    <font color="red">
                        ( -
                        <%=session.getAttribute("amount")%>
                        )
                    </font></b>
            </c:if>
            <br></br>
            <br></br>
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
            <br></br><br/>
            <b>Confirm transfer 
                <u>
                    <font color="red"><%=session.getAttribute("amount")%><%=session.getAttribute("currencyType")%></font></u>
                 to
                <u>
                    <font color="green" size="+2"><%=session.getAttribute("bankAcctName")%></font></u>?</b>
            <br/>
            <br/>
            <input type="hidden" name="userName" value='<%=session.getAttribute("userName")%>'/>
            <input type="hidden" name="bankAcctName" value='<%=session.getAttribute("bankAcctName")%>'/>
            <input type="hidden" name="amount" value='<%=session.getAttribute("amount")%>'/>
            <input type="hidden" name="currencyType" value='<%=session.getAttribute("currencyType")%>'/>
            <input type="number" style="display: none;" name="newSgdBalance"
                   value='<%=session.getAttribute("newSgdBalance")%>' step="0.01"/>
            <input type="number" style="display: none;" name="newUsdBalance"
                   value='<%=session.getAttribute("newUsdBalance")%>' step="0.01"/>
            <input type="number" style="display: none;" name="newEurBalance"
                   value='<%=session.getAttribute("newEurBalance")%>' step="0.01"/>
        <c:choose>
            <c:when test="${requestScope.show == 'true'}">
                    <b><font color="red"><%=request.getAttribute("showErrorMessage")%></font></b>
                    <hr>
            </c:when>
            <c:otherwise>
                    <b><font color="green">*Please enter your pin to confirm!</font></b>
                    <hr>
            </c:otherwise>
        </c:choose>
            <div class="pinPadding">
                <input type="hidden" id="password" name="pinPassword" class="patternlock" />
            </div>
        </form>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>