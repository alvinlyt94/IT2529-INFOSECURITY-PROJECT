<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    </head>
    <body>
        <%@ include file="masterpage.jsp"%>
     <div class="container">
            <h2>Verify Account</h2>
            
            <p><b>Please enter your username and verification code in the fields indicated below.</b></p>
     
       <form id="form1" name="form1" method="post" action="verifyAccount">
            <fieldset>
                <table border="0" algin="center" cellpadding="2" cellspacing="3" width="1000">
                    <tr>
                        <td width="150">
                            <b>Username :</b>
                        </td>
                        <td width="680">
                            <c:choose>
                                <c:when test="${requestScope.showErrorUserName == 'true'}">
                                    <input type="text" name="userName" maxlength="20" title="Enter your Username."/ value="<%=request.getAttribute("userName")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorUserName == 'false'}">
                                    <input type="text" name="userName" maxlength="20" title="Enter your User Name."/ value="<%=request.getAttribute("userName")%>">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" name="userName" maxlength="20" title="Enter your User Name."/>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:if test="${requestScope.showErrorUserName == 'true'}">  
                                <b><font color="red">*Please enter your Username!</font></b>
                            </c:if>
                            <c:if test="${requestScope.showErrorNotFound == 'true'}">  
                                <b><font color="red">*Username not found!</font></b>
                            </c:if>
                            <c:if test="${requestScope.showErrorVerified == 'true'}">  
                                <b><font color="red">*Account has already been verified!</font></b>
                            </c:if>
                        </td>
                    </tr>
                     
                    <tr>
                        <td width="150">
                            <b>Verifcation Code :</b>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${requestScope.showErrorVerify == 'true'}">
                                    <input type="text" name="verify" maxlength="20" title="Enter your Verification Code."/ value="<%=request.getAttribute("verify")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorVerify == 'false'}">
                                    <input type="text" name="verify" maxlength="20" title="Enter your Verification Code."/ value="<%=request.getAttribute("verify")%>">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" name="verify" maxlength="20" title="Enter your Verification Code."/>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:if test="${requestScope.showErrorVerify == 'true'}">  
                                <b><font color="red">*Please enter your Verification Code!</font></b>
                            </c:if>
                            <c:if test="${requestScope.showErrorNotMatched == 'true'}">  
                                <b><font color="red">*Verification Code does not match!</font></b>
                            </c:if>
                        </td>
                    </tr>
                </table>
                <table width="581">
                    <tr>
                        <td align="center" colspan="2">
                            <input name="a" type="submit" id="s" value="Verify Account"/>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
     <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
     </div>
     <%@ include file="footer.jsp" %>
    </body>
</html>