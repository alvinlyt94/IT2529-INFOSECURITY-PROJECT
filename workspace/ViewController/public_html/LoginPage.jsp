<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page errorPage="/errorPage.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
    </head>
    <body> 
    <%@ include file="masterpage.jsp" %>

        <div class="container">
                <c:if test="${requestScope.showToLogin == 'true'}">
                <h2><font color="green"><%=session.getAttribute("showToLoginMessage")%></font></h2>
        </c:if>
            <h2>Login</h2>
            
            <p><b>Please enter your login information in the fields indicated below.</b></p>
                 
            <form id="form1" name="form1" method="post" action="loginPath">
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
                                <c:when test="${requestScope.show == 'true'}">
                                    <input type="text" name="userName" maxlength="20" title="Enter your Username."/ value="<%=request.getAttribute("userName")%>">
                                </c:when>
                                <c:when test="${requestScope.show == 'false'}">
                                    <input type="text" name="userName" maxlength="20" title="Enter your User Name."/ value="<%=request.getAttribute("userName")%>">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" name="userName" maxlength="20" title="Enter your User Name."/>
                                </c:otherwise>
                            </c:choose>
                            <a href="VerifyPage.jsp">Verify Account?</a>
                        </td>
                        <td>
                            <c:if test="${requestScope.showErrorUserName == 'true'}">  
                                    <b><font color="red">*Please enter your Username!</font></b>
                            </c:if>
                            <c:if test="${requestScope.showErrorVerified == 'true'}">  
                                    <b><font color="red">*Account has not been verified!</font></b>
                            </c:if>
                        </td>
                    </tr>
                     
                    <tr>
                        <td>
                            <b>Password :</b>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${requestScope.showErrorPassword == 'true'}">
                                    <input type="password" name="passWord" maxlength="20" title="Enter your Password."/ value="<%=request.getAttribute("passWord")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorPassword == 'false'}">
                                    <input type="password" name="passWord" maxlength="20" title="Enter your Password."/ value="<%=request.getAttribute("passWord")%>">
                                </c:when>
                                <c:when test="${requestScope.show == 'true'}">
                                    <input type="password" name="passWord" maxlength="20" title="Enter your Password."/ value="<%=request.getAttribute("passWord")%>">
                                </c:when>
                                <c:when test="${requestScope.show == 'false'}">
                                    <input type="password" name="passWord" maxlength="20" title="Enter your Password."/ value="<%=request.getAttribute("passWord")%>">
                                </c:when>
                                <c:otherwise>
                                    <input type="password" name="passWord" maxlength="20" title="Enter your Password."/>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:if test="${requestScope.showErrorPassword == 'true'}">  
                                    <b><font color="red">*Please enter your Password!</font></b>
                            </c:if>
                            <c:if test="${requestScope.show == 'true'}">   
                                    <b><font color="red">*Incorrect Password!</font></b>
                            </c:if>
                        </td>
                    </tr>
                </table>
                <table width="581">
                    <tr>
                        <td align="center" colspan="2">
                            <a href="ForgotPassword.jsp">Forgot Password?</a>
                            <input name="a" type="submit" id="s" value="Login"/>
                        </td>
                    </tr>
                </table>
            </form>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            </div>
    <%@ include file="footer.jsp" %>
    </body>
</html>