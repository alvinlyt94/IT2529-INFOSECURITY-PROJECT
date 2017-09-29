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
        <h2>Application - Remove Applicant</h2>
        
        <p><b>Please select an applicant to remove.</b></p>
         
        <form id="form2" name="form2" action="applicationRemovePath">
        
        <table border="0" algin="center" cellpadding="2" cellspacing="3" width="1000">
                    <tr>
                        <td width="200">
                            <font size="-1"><b>Applicant:</b></font>
                        </td>
                        <td width="500">        
                            <select name="bankAcctName">
                                <option value="">--Select Applicant--</option>
                                <c:forEach items="${requestScope.applicant}" var="current" >
                                    <option value="<c:out value="${current.applicant}"/>"><c:out value="${current.applicant}"/></option>
                                </c:forEach>
                            </select>
                        </td>
                        <td>
                            <c:if test="${requestScope.showErrorApplicant == 'true'}">  
                                <b><font color="red" size="-1">*Please select an applicant!</font></b>
                            </c:if>
                        </td>
                    </tr>
                </table>
                <table width="581">
                    <tr>
                        <td align="center" colspan="2">
                            <input type="submit" name="apply" id="s" value="Remove"/>
                        </td>
                    </tr>
                </table>
            <input type="hidden" name="userName" value='<%=session.getAttribute("userName")%>'/>
            <input type="hidden" name="showError" value='true'/>
        </form>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
            <%@ include file="footer.jsp" %>
    </body>
</html>