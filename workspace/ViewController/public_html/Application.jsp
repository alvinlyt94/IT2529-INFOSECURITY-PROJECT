<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <LINK href="CSS/standard.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%@ include file="masterpage.jsp" %>
        <div class="container">
        <h2>Application - Apply Applicant</h2>
        
        <p><b>Please enter your information or make corrections in the fields indicated below.</b></p>
         
        <form id="form2" name="form2" method="post" action="applicationPath">
        
        <table border="0" algin="center" cellpadding="2" cellspacing="3" width="1000">
                    <tr>
                        <td width="200">
                            <font size="-1"><b>Bank Account No.:</b></font>
                        </td>
                        <td width="500">
                            <c:choose>
                                <c:when test="${requestScope.showErrorAcctNum == 'true'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorAcctNum == 'false'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorAcctName == 'true'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorAcctName == 'false'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.show == 'true'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.show == 'false'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.show1 == 'true'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.show1 == 'false'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.show2 == 'true'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.show2 == 'false'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.show3 == 'true'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:when test="${requestScope.show3 == 'false'}">
                                    <input type="text" name="bankAcctNum" maxlength="20" value="<%=session.getAttribute("bankAcctNum")%>">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" name="bankAcctNum" maxlength="20">
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:if test="${requestScope.showErrorAcctNum == 'true'}">  
                                <b><font color="red" size="-1">*Please enter a bank account number!</font></b>
                            </c:if>
                            <c:if test="${requestScope.show1 == 'true'}">  
                                <b><font color="red" size="-1">*Bank account number not found!</font></b>
                            </c:if>
                            <c:if test="${requestScope.show2 == 'true'}">  
                                <b><font color="red" size="-1">*Unable to apply for personal bank account number!</font></b>
                            </c:if>
                            <c:if test="${requestScope.show3 == 'true'}">  
                                <b><font color="red" size="-1">*Bank account number already exists!</font></b>
                            </c:if>
                        </td>
                    </tr>
                     
                    <tr>
                        <td width="200">
                            <font size="-1"><b>Bank Account Name:</b></font>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${requestScope.showErrorAcctName == 'true'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorAcctName == 'false'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorAcctNum == 'true'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.showErrorAcctNum == 'false'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.show == 'true'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.show == 'false'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.show1 == 'true'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.show1 == 'false'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.show2 == 'true'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.show2 == 'false'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.show3 == 'true'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:when test="${requestScope.show3 == 'false'}">
                                    <input type="text" name="bankAcctName" maxlength="20" value="<%=session.getAttribute("bankAcctName")%>">
                                </c:when>
                                <c:otherwise>
                                    <input type="text" name="bankAcctName" maxlength="20">
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:if test="${requestScope.showErrorAcctName == 'true'}">  
                                    <b><font color="red" size="-1">*Please enter a bank account name!</font></b>
                            </c:if>
                            <c:if test="${requestScope.show == 'true'}">                  
                                    <b><font color="red" size="-1">*Bank account name already exists!</font></b>
                            </c:if>
                        </td>
                    </tr>
                </table>
                <table width="581">
                    <tr>
                        <td align="center" colspan="2">
                            <input type="submit" name="apply" id="s" value="Apply"/>
                        </td>
                    </tr>
                </table>
            <input type="hidden" name="userName" value='<%=session.getAttribute("userName")%>'/>
        </form>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
            <%@ include file="footer.jsp" %>
    </body>
</html>