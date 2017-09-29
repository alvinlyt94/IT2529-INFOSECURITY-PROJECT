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
        <%@ include file="MasterPage.jsp" %>
            <div class="container">
        <h2>Application - Apply Applicant</h2>
        
        <p><b>Please confirm.</b></p>
         
        <form id="form2" name="form2" method="post" action="applicationConfirmationPath">
            <h3><b><u>Applicant Information:</u></b></h3>
            <p>
                <b>Bank Account No.: <u><%=session.getAttribute("bankAcctNum")%></u></b>
                <br/><br/>
                <b>Bank Account Name: <u><%=session.getAttribute("bankAcctName")%></u></b>
                <br/><br/><br/>
                <b>Confirm to apply?</b> 
                <input type="submit" name="confirm" id="s" value="Confirm"/>
            </p>
            <input type="hidden" name="userName" value='<%=session.getAttribute("userName")%>'/>
            <input type="hidden" name="bankAcctName" value='<%=session.getAttribute("bankAcctName")%>'/>
            <input type="hidden" name="bankAcctNum" value='<%=session.getAttribute("bankAcctNum")%>'/>
        </form>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
            <%@ include file="footer.jsp" %>
    </body>
</html>