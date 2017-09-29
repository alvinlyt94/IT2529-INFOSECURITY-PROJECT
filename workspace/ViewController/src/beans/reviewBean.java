package beans;

public class reviewBean {
    
    private String idreviews;
    private String reviews;
    private String idproductview;
    private String username;
    
    public reviewBean() {
    }
    public void setIdreviews(String idreviews) {
        this.idreviews = idreviews;
    }

    public String getIdreviews() {
        return idreviews;
    }

    public void setReviews(String reviews) {
        this.reviews = reviews;
    }

    public String getReviews() {
        return reviews;
    }

    public void setIdproductview(String idproductview) {
        this.idproductview = idproductview;
    }

    public String getIdproductview() {
        return idproductview;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }
}
