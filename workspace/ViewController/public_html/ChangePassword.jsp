<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%@ include file="masterpage.jsp" %>
        <div class="container">
            <h2>Change Password</h2>
            
            <p><b>Please change your password.</b></p>
             
            <form id="form1" name="form1" method="post" action="changepassPath">
                <fieldset>
                    <table border="0" cellpadding="2" cellspacing="2" width="580">
                        <tr>
                            <td width="150">
                                <b>Old Password :</b>
                            </td>
                            <td width="700">
                                <c:choose>
                                    <c:when test="${requestScope.showError == 'true'}">  
                                        <input type="password" name="oldPass" maxlength="20" title="Please input Old Password"/ value="<%=request.getAttribute("oldPass")%>">
                                    </c:when>
                                    <c:when test="${requestScope.showError == 'false'}">  
                                        <input type="password" name="oldPass" maxlength="20" title="Please input Old Password"/ value="<%=request.getAttribute("oldPass")%>">
                                    </c:when>
                                    <c:otherwise>
                                        <input type="password" name="oldPass" maxlength="20" title="Please input Old Password"/>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <c:if test="${requestScope.showError == 'true'}">  
                                    <b><font color="red"><%=request.getAttribute("showErrorMessage")%></font></b>
                                </c:if>
                            </td>
                        </tr>
                         
                        <tr>
                            <td>
                                <b>New Password :</b>
                            </td>
                            <td>
                                <c:choose>
                                    <c:when test="${requestScope.showErrorNewPass == 'true'}">
                                        <input type="password" name="newPass" maxlength="20" title="Please input New Password"/ value="<%=request.getAttribute("newPass")%>">
                                    </c:when>
                                    <c:when test="${requestScope.showErrorNewPass == 'false'}">
                                        <input type="password" name="newPass" maxlength="20" title="Please input New Password"/ value="<%=request.getAttribute("newPass")%>">
                                    </c:when>
                                    <c:otherwise>
                                        <input type="password" name="newPass" maxlength="20" title="Please input New Password"/>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <c:if test="${requestScope.showErrorNewPass == 'true'}">  
                                    <b><font color="red">*Please enter New Password!</font></b>
                                </c:if>
                            </td>
                        </tr>
                    </table>
                    <table width="581">
                        <tr>
                            <td align="center">
                                <input name="a" type="submit" id="s" value="Change Password"/>
                            </td>
                            </tr>
                    </table>
                </fieldset>
            </form>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>