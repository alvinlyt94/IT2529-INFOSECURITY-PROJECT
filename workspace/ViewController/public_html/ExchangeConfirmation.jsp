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
        <script type="text/javascript">
          function stayHere() {
              window.history.forward();
          }
        </script>
    </head>
    <body onload="stayHere();">
    <%@ include file="MasterPage.jsp" %>
            <div class="container">
        <h2>Currency - Currency Converter</h2>

        <p><b>Please confirm.</b></p>
         
        <form id="form2" name="form2" method="post" action="exchangePath">
            <u>
                <b>New Balance:</b></u>
            <br></br>
            <b>Singapore Dollar - SGD: $</b>
            <%=session.getAttribute("newSgdBalance")%>
            <c:if test="${requestScope.displayCurrencyType1 == 'SGD'}">
                <b>
                    <font color="red">
                        ( -
                        <%=session.getAttribute("amount")%>
                        )
                    </font></b>
            </c:if>
            <c:if test="${requestScope.displayCurrencyType2 == 'SGD'}">
                <b>
                    <font color="green">
                        ( +
                        <%=session.getAttribute("displayCurrencyValue")%>
                        )
                    </font></b>
            </c:if>
            <br></br>
            <b>US Dollar - USD: $</b>
            <%=session.getAttribute("newUsdBalance")%>
            <c:if test="${requestScope.displayCurrencyType1 == 'USD'}">
                <b>
                    <font color="red">
                        ( -
                        <%=session.getAttribute("amount")%>
                        )
                    </font></b>
            </c:if>
            <c:if test="${requestScope.displayCurrencyType2 == 'USD'}">
                <b>
                    <font color="green">
                        ( +
                        <%=session.getAttribute("displayCurrencyValue")%>
                        )
                    </font></b>
            </c:if>
            <br></br>
            <b>Euro Dollar - EUR: $</b>
            <%=session.getAttribute("newEurBalance")%>
            <c:if test="${requestScope.displayCurrencyType1 == 'EUR'}">
                <b>
                    <font color="red">
                        ( -
                        <%=session.getAttribute("amount")%>
                        )
                    </font></b>
            </c:if>
            <c:if test="${requestScope.displayCurrencyType2 == 'EUR'}">
                <b>
                    <font color="green">
                        ( +
                        <%=session.getAttribute("displayCurrencyValue")%>
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
            <b>Confirm exchange 
                <u>
                    <font color="red"><%=session.getAttribute("amount")%><%=session.getAttribute("displayCurrencyType1")%></font></u>
                 for 
                <u>
                    <font color="green"><%=session.getAttribute("displayCurrencyValue")%><%=session.getAttribute("displayCurrencyType2")%></font></u>?</b>
            <input type="submit" name="a" id="s" value="Confirm"/>
            <br/>
            <br/>
            <input type="hidden" name="userName" value='<%=session.getAttribute("userName")%>'/>
            <input type="hidden" name="passWord" value='<%=session.getAttribute("passWord")%>'/>
            <input type="number" style="display: none;" name="newSgdBalance"
                   value='<%=session.getAttribute("newSgdBalance")%>' step="0.01"/>
            <input type="number" style="display: none;" name="newUsdBalance"
                   value='<%=session.getAttribute("newUsdBalance")%>' step="0.01"/>
            <input type="number" style="display: none;" name="newEurBalance"
                   value='<%=session.getAttribute("newEurBalance")%>' step="0.01"/>
        </form>
        <br><br>
        </div>
        <%@ include file="footer.jsp" %> 
    </body>
</html>