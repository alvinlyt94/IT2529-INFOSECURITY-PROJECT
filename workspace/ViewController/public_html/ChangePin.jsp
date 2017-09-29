<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
    <c:choose>
        <c:when test="${requestScope.showEnterNew == 'true'}">
            <link rel="stylesheet" type="text/css" href="CSS/pin2.css"/>
        </c:when>
        <c:when test="${requestScope.showNotMatched == 'true'}">
            <link rel="stylesheet" type="text/css" href="CSS/pin2.css"/>
        </c:when>
        <c:when test="${requestScope.showConfirm == 'true'}">
            <link rel="stylesheet" type="text/css" href="CSS/pin2.css"/>
        </c:when>
        <c:otherwise>
            <link rel="stylesheet" type="text/css" href="CSS/pin.css"/>
        </c:otherwise>
    </c:choose>

    <script src="JS/patternlock.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
        <style type="text/css">
                div.padding {
                    padding-top: 0px;
                    padding-bottom: 1000px;
                    padding-right: 0px;
                    padding-left: 650px;
                }
                
                div.pinPadding {
                    padding-top: 0px;
                    padding-bottom: 0px;
                    padding-right: 0px;
                    padding-left: 450px;
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
    <body>
        <%@ include file="masterpage.jsp"%>
                <div class="container">
            <h2>Change Pin</h2>
            
            <p><b>Please change your pin.</b></p>
         
        <form id="form2" name="form2" method="post" action="changePinPath">
        <c:choose>
            <c:when test="${requestScope.show == 'true'}">
                    <b><font color="red"><%=request.getAttribute("showErrorMessage")%></font></b>
            </c:when>
            <c:when test="${requestScope.showEnterNew == 'true'}">
                    <b><font color="green"><%=request.getAttribute("showEnterNewMessage")%></font></b>
                    <input type="hidden" name="ableToConfirm" value='true'/>
            </c:when>
            <c:when test="${requestScope.showNotMatched == 'true'}">
                    <b><font color="red"><%=request.getAttribute("showNotMatchedMessage")%></font></b>
                    <input type="hidden" name="ableToConfirm" value='true'/>
            </c:when>
            <c:when test="${requestScope.showConfirm == 'true'}">
                    <b><font color="green"><%=request.getAttribute("showConfirmMessage")%></font></b>
                    <input type="submit" name="change" value='Change'/>
                    <input type="hidden" name="ableToConfirm" value='true'/>
                    <input type="hidden" name="ableToUpdate" value='true'/>
                    <input type="hidden" name="firstPinPassword" value='<%=request.getAttribute("firstPinPassword")%>'/>
            </c:when>
        <c:otherwise>
                    <b><font color="green">*Please enter your current pin!</font></b>
        </c:otherwise>
        </c:choose>
                <input type="hidden" id="password" name="pinPassword" class="patternlock" />
            <input type="hidden" name="userName" value='<%=session.getAttribute("userName")%>'/>
            <input type="hidden" name="ableToConfirm" value='false'/>
            <input type="hidden" name="ableToUpdate" value='false'/>
            <input type="hidden" name="firstPinPassword" value=''/>
            <input type="hidden" name="change" value=''/>
        </form>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>  
                <h2><u>Legend:</u></h2>
        <img src="images/demo/pinLegend.png" alt="" />
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>