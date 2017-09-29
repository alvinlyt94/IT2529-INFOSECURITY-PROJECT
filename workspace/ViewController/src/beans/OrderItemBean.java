package beans;

public class OrderItemBean {

    private String itemID;
    private String itemTitle;
    private String description;
    private String country;
    private double price;
    private String Category;
    private String owner;
    private int quantity;
    private int idproductView;
    private String idorder;
    private String idproduct;
    private String status;
    private String giftid;
    private String username;
    private String prod_owner;
    private String address;
    private String state;
    private String postal;
    private String email;
    private int quantityOrder;
    private String customerName;
     
    public OrderItemBean() {
        super();
    }
    
    public void setitemTitle(String itemTitle) {
        this.itemTitle = itemTitle;
    }

    public String getitemTitle() {
        return itemTitle;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getdescription() {
        return description;
    }

    public void setPrice(double p) {
        price = p;
    }

    public double getPrice() {
        return price;
    }

    public void setItemID(String itemCode) {
        this.itemID = itemCode;
    }

    public String getItemID() {
        return itemID;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCountry() {
        return country;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

    public String getCategory() {
        return Category;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getOwner() {
        return owner;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setIdproductView(int idproductView) {
        this.idproductView = idproductView;
    }

    public int getIdproductView() {
        return idproductView;
    }
    public void setIdorder(String idorder) {
        this.idorder = idorder;
    }

    public String getIdorder() {
        return idorder;
    }

    public void setIdproduct(String idproduct) {
        this.idproduct = idproduct;
    }

    public String getIdproduct() {
        return idproduct;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setGiftid(String giftid) {
        this.giftid = giftid;
    }

    public String getGiftid() {
        return giftid;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setProd_owner(String prod_owner) {
        this.prod_owner = prod_owner;
    }

    public String getProd_owner() {
        return prod_owner;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getState() {
        return state;
    }

    public void setPostal(String postal) {
        this.postal = postal;
    }

    public String getPostal() {
        return postal;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setQuantityOrder(int quantityOrder) {
        this.quantityOrder = quantityOrder;
    }

    public int getQuantityOrder() {
        return quantityOrder;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerName() {
        return customerName;
    }
}
