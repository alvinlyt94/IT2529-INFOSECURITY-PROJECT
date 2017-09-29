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
            <h2>Create Account</h2>
                 
                <p><b>Please enter your information or make corrections in the fields indicated below.</b></p>
                 
                <form id="form1" name="form1" method="post" action="registerPath">
                    <fieldset>
                        <table border="0" algin="center" cellpadding="2" cellspacing="3" width="1000">
                            <!-- User Name -->
                            <tr>
                                <td width="150">
                                    <b>Username :</b>
                                </td>
                                <td>
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
                           <!-- Password -->
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
                                        <c:otherwise>
                                            <input type="password" name="passWord" maxlength="20" title="Enter your Password."/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorPassword == 'true'}">  
                                        <b><font color="red">*Please enter your Password!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- First Name -->
                            <tr>
                                <td>
                                    <b>First Name :</b>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${requestScope.showErrorFirstName == 'true'}">
                                            <input type="text" name="name1" maxlength="20" title="Please input First Name"/ value="<%=request.getAttribute("firstName")%>">
                                        </c:when>
                                        <c:when test="${requestScope.showErrorFirstName == 'false'}">
                                            <input type="text" name="name1" maxlength="20" title="Please input First Name"/ value="<%=request.getAttribute("firstName")%>">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="name1" maxlength="20" title="Please input First Name"/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorFirstName == 'true'}">  
                                        <b><font color="red">*Please enter your first name!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- Last Name -->
                            <tr>
                                <td>
                                    <b>Last Name :</b>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${requestScope.showErrorLastName == 'true'}">
                                            <input type="text" name="name2" maxlength="20" title="Please input Last Name"/ value="<%=request.getAttribute("lastName")%>">
                                        </c:when>
                                        <c:when test="${requestScope.showErrorLastName == 'false'}">
                                            <input type="text" name="name2" maxlength="20" title="Please input Last Name"/ value="<%=request.getAttribute("lastName")%>">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="name2" maxlength="20" title="Please input Last Name"/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorLastName == 'true'}">  
                                        <b><font color="red">*Please enter your last name!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- NRIC -->
                            <tr>
                                <td>
                                    <b>NRIC :</b>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${requestScope.showErrorNRIC == 'true'}">
                                            <input type="text" name="NRIC" maxlength="20" title="Please input NRIC"/ value="<%=request.getAttribute("NRIC")%>">
                                        </c:when>
                                        <c:when test="${requestScope.showErrorNRIC == 'false'}">
                                            <input type="text" name="NRIC" maxlength="20" title="Please input NRIC"/ value="<%=request.getAttribute("NRIC")%>">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="NRIC" maxlength="20" title="Please input NRIC"/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorNRIC == 'true'}">  
                                        <b><font color="red">*Please enter your NRIC!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- Address -->
                            <tr>
                                <td>
                                    <b>Address :</b>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${requestScope.showErrorAddress == 'true'}">
                                            <input type="text" name="address"  title="Enter your Address."/ value="<%=request.getAttribute("address")%>">
                                        </c:when>
                                        <c:when test="${requestScope.showErrorAddress == 'false'}">
                                            <input type="text" name="address" title="Enter your Address."/ value="<%=request.getAttribute("address")%>">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="address" title="Enter your Address."/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorAddress == 'true'}">  
                                        <b><font color="red">*Please enter your Address!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- Postal Code -->
                            <tr>
                                <td>
                                    <b>Postal Code :</b>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${requestScope.showErrorPostal == 'true'}">
                                            <input type="text" name="postal"  title="Enter your Postal."/ value="<%=request.getAttribute("postal")%>">
                                        </c:when>
                                        <c:when test="${requestScope.showErrorPostal == 'false'}">
                                            <input type="text" name="postal" title="Enter your Postal."/ value="<%=request.getAttribute("postal")%>">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="postal" title="Enter your Postal."/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorPostal == 'true'}">  
                                        <b><font color="red">*Please enter your Postal!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- Email -->
                            <tr>
                                <td>
                                    <b>Email :</b>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${requestScope.showErrorFirstName == 'true'}">
                                            <input type="text" name="email"  title="Enter your account etomer account. All confirmation emails and your subscriptions will be sent to the email address."/ value="<%=request.getAttribute("email")%>">
                                        </c:when>
                                        <c:when test="${requestScope.showErrorFirstName == 'false'}">
                                            <input type="text" name="email" title="Enter your account etomer account. All confirmation emails and your subscriptions will be sent to the email address."/ value="<%=request.getAttribute("email")%>">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="email" title="Enter your account etomer account. All confirmation emails and your subscriptions will be sent to the email address."/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorEmail == 'true'}">  
                                        <b><font color="red">*Please enter your Email!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- Gender -->
                            <tr>
                                <td>
                                    <b>Gender :</b>
                                </td>
                                <td>
                                    <select name="sex" id="sex">
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <!-- Date of Birth -->
                            <tr>
                                <td>
                                    <b>Date of Birth :</b>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${requestScope.showErrorBirth== 'true'}">
                                            <input type="text" name="birth.year" maxlength=4/ value="<%=request.getAttribute("birthDateYear")%>"><label for="birth.year">Year</label>
                                             <input type="text" name="birth.month" maxlength="2" / value="<%=request.getAttribute("birthDateMonth")%>"><label for="birth.month">Month</label>
                                              <input type="text" name="birth.day" maxlength="2"/ value="<%=request.getAttribute("birthDateDay")%>"><label for="birth.day">Day</label>
                                        </c:when>
                                        <c:when test="${requestScope.showErrorBirth == 'false'}">
                                             <input type="text" name="birth.year" maxlength=4/ value="<%=request.getAttribute("birthDateYear")%>"><label for="birth.year">Year</label>
                                             <input type="text" name="birth.month" maxlength="2" / value="<%=request.getAttribute("birthDateMonth")%>"><label for="birth.month">Month</label>
                                              <input type="text" name="birth.day" maxlength="2"/ value="<%=request.getAttribute("birthDateDay")%>"><label for="birth.day">Day</label>
                                        </c:when>
                                        <c:otherwise>
                                              <input type="text" name="birth.year" maxlength=4><label for="birth.year">Year</label>
                                             <input type="text" name="birth.month" maxlength="2"><label for="birth.month">Month</label>
                                              <input type="text" name="birth.day" maxlength="2"><label for="birth.day">Day</label>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorBirth == 'true'}">  
                                        <b><font color="red">*Please enter your Date of Birth!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- Country -->
                            <tr>
                                <td>
                                    <b>Country :</b>
                                </td>
                                <td>
                                    <select name="country_cd">
                                        <option value="AFGHANISTAN">AFGHANISTAN</option>
                                        <option value="ALBANIA">ALBANIA</option>
                                        <option value="ALGERIA">ALGERIA</option>
                                        <option value="ANDORRA">ANDORRA</option>
                                        <option value="ANGOLA">ANGOLA</option>
                                        <option value="ANGUILLA">ANGUILLA</option>
                                        <option value="ANTIGUA">ANTIGUA</option>
                                        <option value="ARGENTINA">ARGENTINA</option>
                                        <option value="ARMENIA">ARMENIA</option>
                                        <option value="ARUBA">ARUBA</option>
                                        <option value="AUSTRALIA">AUSTRALIA</option>
                                        <option value="AUSTRIA (EUROPE)">AUSTRIA (EUROPE)</option>
                                        <option value="AZERBAIJAN">AZERBAIJAN</option>
                                        <option value="AZORES IN PORTUGAL">AZORES IN PORTUGAL</option>
                                        <option value="BAHAMAS">BAHAMAS</option>
                                        <option value="BAHRAIN">BAHRAIN</option>
                                        <option value="BANGLADESH">BANGLADESH</option>
                                        <option value="BARBADOS">BARBADOS</option>
                                        <option value="BELARUS">BELARUS</option>
                                        <option value="BELGIUM">BELGIUM</option>
                                        <option value="BELIZE">BELIZE</option>
                                        <option value="BENIN">BENIN</option>
                                        <option value="BERMUDA">BERMUDA</option>
                                        <option value="BHUTAN">BHUTAN</option>
                                        <option value="BOLIVIA">BOLIVIA</option>
                                        <option value="BOTSWANA">BOTSWANA</option>
                                        <option value="BRAZIL">BRAZIL</option>
                                        <option value="BRITISH VIRGIN ISLANDS">BRITISH VIRGIN ISLANDS</option>
                                        <option value="CAMBODIA">CAMBODIA</option>
                                        <option value="CANADA">CANADA</option>
                                        <option value="CHINA">CHINA</option>
                                        <option value="COLOMBIA<">COLOMBIA</option>
                                        <option value="COOK ISLANDS">COOK ISLANDS</option>
                                        <option value="COSTA RICA">COSTA RICA</option>
                                        <option value="COTE D'IVOIRE">COTE D'IVOIRE</option>
                                        <option value="CROATIA">CROATIA</option>
                                        <option value="CUBA">CUBA</option>
                                        <option value="CYPRUS">CYPRUS</option>
                                        <option value="CZECH REPUBLIC">CZECH REPUBLIC</option>
                                        <option value="DENMARK">DENMARK</option>
                                        <option value="DPR KOREA">DPR KOREA</option>
                                        <option value="DUTCH ANTILLES">DUTCH ANTILLES</option>
                                        <option value="EGYPT">EGYPT</option>
                                        <option value="EL SALVADOR">EL SALVADOR</option>
                                        <option value="EQUATORIAL GUINEA">EQUATORIAL GUINEA</option>
                                        <option value="ERITREA">ERITREA</option>
                                        <option value="ESTONIA">ESTONIA</option>
                                        <option value="ETHIOPIA">ETHIOPIA</option>
                                        <option value="FALKLAND ISLANDS">FALKLAND ISLANDS</option>
                                        <option value="FIJI">FIJI</option>
                                        <option value="FINLAND">FINLAND</option>
                                        <option value="FRANCE">FRANCE</option>
                                        <option value="GERMANY">GERMANY</option>
                                        <option value="GHANA">GHANA</option>
                                        <option value="GIBRALTAR">GIBRALTAR</option>
                                        <option value="GREECE">GREECE</option>
                                        <option value="GREENLAND">GREENLAND</option>
                                        <option value="GRENADA">GRENADA</option>
                                        <option value="GUADELOUPE">GUADELOUPE</option>
                                        <option value="HAITI">HAITI</option>
                                        <option value="HONDURAS">HONDURAS</option>
                                        <option value="HONG KONG">HONG KONG</option>
                                        <option value="HUNGARY">HUNGARY</option>
                                        <option value="ICELAND">ICELAND</option>
                                        <option value="INDIA">INDIA</option>
                                        <option value="INDONESIA">INDONESIA</option>
                                        <option value="IRAN">IRAN</option>
                                        <option value="IRAQ">IRAQ</option>
                                        <option value="IRELAND">IRELAND</option>
                                        <option value="ISRAEL">ISRAEL</option>
                                        <option value="ITALY">ITALY</option>
                                        <option value="JAMAICA">JAMAICA</option>
                                        <option value="JAPAN">JAPAN</option>
                                        <option value="JORDAN">JORDAN</option>
                                        <option value="KAZAKHSTAN">KAZAKHSTAN</option>
                                        <option value="KENYA">KENYA</option>
                                        <option value="LAOS">LAOS</option>
                                        <option value="LATVIA">LATVIA</option>
                                        <option value="LEBANON">LEBANON</option>
                                        <option value="LESOTHO">LESOTHO</option>
                                        <option value="LIBERIA">LIBERIA</option>
                                        <option value="LIBYA">LIBYA</option>
                                        <option value="MADAGASCAR">MADAGASCAR</option>
                                        <option value="MALAWI">MALAWI</option>
                                        <option value="MALAYSIA">MALAYSIA</option>
                                        <option value="MALDIVES">MALDIVES</option>
                                        <option value="MALI">MALI</option>
                                        <option value="MALTA">MALTA</option>
                                        <option value="MEXICO">MEXICO</option>
                                        <option value="MONGOLIA">MONGOLIA</option>
                                        <option value="NAMIBIA">NAMIBIA</option>
                                        <option value="NAURU">NAURU</option>
                                        <option value="NEPAL">NEPAL</option>
                                        <option value="NETHERLANDS">NETHERLANDS</option>
                                        <option value="NEW CALEDONIA">NEW CALEDONIA</option>
                                        <option value="NEW ZEALAND">NEW ZEALAND</option>
                                        <option value="OMAN">OMAN</option>
                                        <option value="PAKISTAN">PAKISTAN</option>
                                        <option value="PALAU">PALAU</option>
                                        <option value="PANAMA">PANAMA</option>
                                        <option value="PHILIPPINES">PHILIPPINES</option>
                                        <option value="POLAND">POLAND</option>
                                        <option value="PORTUGAL">PORTUGAL</option>
                                        <option value="PUERTO RICO">PUERTO RICO</option>
                                        <option value="QATAR">QATAR</option>
                                        <option value="REUNION">REUNION</option>
                                        <option value="ROMANIA">ROMANIA</option>
                                        <option value="RUSSIA">RUSSIA</option>
                                        <option value="SENEGAL">SENEGAL</option>
                                        <option value="SERBIA">SERBIA</option>
                                        <option value="SEYCHELLES">SEYCHELLES</option>
                                        <option value="SIERRA LEONE">SIERRA LEONE</option>
                                        <option selected="SINGAPORE" value="SINGAPORE">SINGAPORE</option>
                                        <option value="SOUTH AFRICA">SOUTH AFRICA</option>
                                        <option value="SOUTH KOREA">SOUTH KOREA</option>
                                        <option value="SPAIN">SPAIN</option>
                                        <option value="SRI LANKA">SRI LANKA</option>
                                        <option value="SWAZILAND">SWAZILAND</option>
                                        <option value="SWEDEN">SWEDEN</option>
                                        <option value="SWITZERLAND">SWITZERLAND</option>
                                        <option value="SYRIA">SYRIA</option>
                                        <option value="TAIWAN">TAIWAN</option>
                                        <option value="TAJIKISTAN">TAJIKISTAN</option>
                                        <option value="TANZANIA">TANZANIA</option>
                                        <option value="THAILAND">THAILAND</option>
                                        <option value="TOGO">TOGO</option>
                                        <option value="UKRAINE">UKRAINE</option>
                                        <option value="UNI. ARAB EMIRATES">UNI. ARAB EMIRATES</option>
                                        <option value="UNITED KINGDOM">UNITED KINGDOM</option>
                                        <option value="UNITED STATES">UNITED STATES</option>
                                        <option value="URUGUAY">URUGUAY</option>
                                        <option value="UZBEKISTAN">UZBEKISTAN</option>
                                        <option value="VANUATU">VANUATU</option>
                                        <option value="VATICAN CITY">VATICAN CITY</option>
                                        <option value="VENEZUELA">VENEZUELA</option>
                                        <option value="VIETNAM">VIETNAM</option>
                                        <option value="WESTERN SAMOA">WESTERN SAMOA</option>
                                        <option value="YEMEN">YEMEN</option>
                                        <option value="ZAMBIA">ZAMBIA</option>
                                        <option value="ZIMBABWE">ZIMBABWE</option>
                                    </select>
                                </td>
                                <td>
                                </td>
                            </tr>  
                           <!-- PhoneNo -->
                            <tr>
                                <td>
                                    <b>Phone number :</b>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${requestScope.showErrorPhoneNo== 'true'}">
                                            <input type="text" name="tel_home" maxlength="20" title="Enter your PhoneNo."/ value="<%=request.getAttribute("phoneNo")%>">
                                        </c:when>
                                        <c:when test="${requestScope.showErrorPhoneNo == 'false'}">
                                            <input type="text" name="tel_home" maxlength="20" title="Enter your PhoneNo."/ value="<%=request.getAttribute("phoneNo")%>">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="tel_home" maxlength="20" title="Enter your PhoneNo."/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorPhoneNo == 'true'}">  
                                        <b><font color="red">*Please enter your Phonr Number!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- BankAcctNum -->
                            <tr>
                                <td>
                                    <b>Bank Account Num. :</b>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${requestScope.showErrorBankAcctNum== 'true'}">
                                            <input type="text" name="bankAcctNum" maxlength="20" title="Enter your Bank Account Number."/ value="<%=request.getAttribute("bankAcctNum")%>">
                                        </c:when>
                                        <c:when test="${requestScope.showErrorBankAcctNum == 'false'}">
                                            <input type="text" name="bankAcctNum" maxlength="20" title="Enter your Bank Account Number."/ value="<%=request.getAttribute("bankAcctNum")%>">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="bankAcctNum" maxlength="20" title="Enter your Bank Account Number."/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorBankAcctNum == 'true'}">  
                                        <b><font color="red">*Please enter your Bank Account Number!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                            <!-- Captcha -->
                            <tr>
                                <td>
                                    <b>Captcha :</b>
                                </td>
                                <td>
                                    <img src="jcaptcha.jpg" /> 
                                    <input type="text" name="jcaptcha" value="" />
                                </td>
                                <td>
                                    <c:if test="${requestScope.showErrorCaptcha == 'true'}">  
                                        <b><font color="red">*Invalid Captcha! Please re-enter!</font></b>
                                    </c:if>
                                </td>
                            </tr>
                        </table>
                        <table width="581">
                            <tr>
                                <td align="center">
                                    <input name="a" type="submit" id="s" value="Sign up"/>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </form>
            </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>