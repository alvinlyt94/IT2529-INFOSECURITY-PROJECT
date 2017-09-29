package beans;

public class UserBean {
    
    private String userID;
    private String fname;
    private String lname;
    private String nric;
    private String username;
    private String email;
    private String DOB;
    private String address;
    private String country;
    private String postal;
    private int phone;
    private String bankAcctNum;
    private String pinPassword;
    private double sgdAmount;
    private double eurAmount;
    private double usdAmount;
    private String gender;
    private String verifyCode;
    
    
    
    public UserBean() {
        super();
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getFname() {
        return fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getLname() {
        return lname;
    }

    public void setNric(String nric) {
        this.nric = nric;
    }

    public String getNric() {
        return nric;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getDOB() {
        return DOB;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCountry() {
        return country;
    }

    public void setPostal(String postal) {
        this.postal = postal;
    }

    public String getPostal() {
        return postal;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public int getPhone() {
        return phone;
    }

    public void setBankAcctNum(String bankAcctNum) {
        this.bankAcctNum = bankAcctNum;
    }

    public String getBankAcctNum() {
        return bankAcctNum;
    }

    public void setPinPassword(String pinPassword) {
        this.pinPassword = pinPassword;
    }

    public String getPinPassword() {
        return pinPassword;
    }

    public void setSgdAmount(double sgdAmount) {
        this.sgdAmount = sgdAmount;
    }

    public double getSgdAmount() {
        return sgdAmount;
    }

    public void setEurAmount(double eurAmount) {
        this.eurAmount = eurAmount;
    }

    public double getEurAmount() {
        return eurAmount;
    }

    public void setUsdAmount(double usdAmount) {
        this.usdAmount = usdAmount;
    }

    public double getUsdAmount() {
        return usdAmount;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getGender() {
        return gender;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserID() {
        return userID;
    }
}
