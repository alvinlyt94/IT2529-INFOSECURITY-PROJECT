<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <link href="CSS/standard.css" rel="stylesheet" type="text/css"></link>
    </head>
    <body>
        <%@ include file="masterpage.jsp"%>
                <div class="container">
        <h2>Forgot Password</h2>
            
        <p><b>To retrieve password enter the fields below.</b></p>
         
        <form id="form1" name="form1" method="post" action="forgotpassPath">
            <fieldset>
                <table border="0" algin="center" cellpadding="2" cellspacing="3" width="1000">
                    <tr>
                        <td width="150">
                            <b>Username :</b>
                        </td>
                        <td width="700">
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
                        </td>
                    </tr>
                     
                    <tr>
                        <td width="150">
                            <b>Email :</b>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${requestScope.showErrorEmail == 'true'}">
                                    <input type="text" name="email"  title="Enter your account etomer account. All confirmation emails and your subscriptions will be sent to the email address."/ value="<%=request.getAttribute("email")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorEmail == 'false'}">
                                    <input type="text" name="email" title="Enter your account etomer account. All confirmation emails and your subscriptions will be sent to the email address."/ value="<%=request.getAttribute("email")%>">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" name="email" title="Enter your account etomer account. All confirmation emails and your subscriptions will be sent to the email address."/>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:if test="${requestScope.showErrorEmail == 'true'}">  
                                <b><font color="red">*Please enter your email!</font></b>
                            </c:if>
                            <c:if test="${requestScope.showErrorNotMatch == 'true'}">  
                                <b><font color="red">*Username & Email not match!</font></b>
                            </c:if>
                        </td>
                    </tr>
                </table>
                <table width="581">
                    <tr>
                        <td align="center" colspan="2">
                            <input name="a" type="submit" id="s" value="Retrieve Password"/>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>