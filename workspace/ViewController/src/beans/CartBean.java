package beans;

import java.util.ArrayList;


public class CartBean {
    private ArrayList CartItems = new ArrayList();
    private double dblOrderTotal;

    public ArrayList getAllItems(){
        return CartItems;
    }

    public int getLineItemCount() {
        return CartItems.size();
    }

    public void deleteCartItem(String strItemIndex) {
        int iItemIndex = 0;
        try {
            iItemIndex = Integer.parseInt(strItemIndex);
            System.out.print("NOTHING"+iItemIndex);
            CartItems.remove(iItemIndex-1);
            calculateOrderTotal();
        } catch (NumberFormatException nfe) {
            System.out.println("Error while deleting cart item: " + nfe.getMessage());
            nfe.printStackTrace();
        }
    }

    public void updateCartItem(String strItemIndex, String strQuantity) {
        double dblTotalCost = 0.0;
        double dblUnitCost = 0.0;
        int iQuantity = 0;
        int iItemIndex = 0;
        CartItemBean cartItem = null;
        try {
            iItemIndex = Integer.parseInt(strItemIndex);
            iQuantity = Integer.parseInt(strQuantity);
            if (iQuantity > 0) {
                cartItem = (CartItemBean)CartItems.get(iItemIndex - 1);
                dblUnitCost = cartItem.getUnitCost();
                dblTotalCost = dblUnitCost * iQuantity;
                cartItem.setQuantity(iQuantity);
                cartItem.setTotalCost(dblTotalCost);
                calculateOrderTotal();
            }
        } catch (NumberFormatException nfe) {
            System.out.println("Error while updating cart: " + nfe.getMessage());
            nfe.printStackTrace();
        }

    }

    public void addCartItem(String strModelNo, String strDescription, String strUnitCost, String strQuantity) {
        double dblTotalCost = 0.0;
        double dblUnitCost = 0.0;
        int iQuantity = 0;
        CartItemBean cartItem = new CartItemBean();
        try {
            dblUnitCost = Double.parseDouble(strUnitCost);
            iQuantity = Integer.parseInt(strQuantity);
            if (iQuantity > 0) {
                dblTotalCost = dblUnitCost * iQuantity;
                cartItem.setPartNumber(strModelNo);
                cartItem.setModelDescription(strDescription);
                cartItem.setUnitCost(dblUnitCost);
                cartItem.setQuantity(iQuantity);
                cartItem.setTotalCost(dblTotalCost);
                CartItems.add(cartItem);
                calculateOrderTotal();
            }

        } catch (NumberFormatException nfe) {
            System.out.println("Error while parsing from String to primitive types: " + nfe.getMessage());
            nfe.printStackTrace();
        }
    }

    public void addCartItem(CartItemBean cartItem) {
        CartItems.add(cartItem);
    }

    public CartItemBean getCartItem(int iItemIndex) {
        CartItemBean cartItem = null;
        if (CartItems.size() > iItemIndex) {
            cartItem = (CartItemBean)CartItems.get(iItemIndex);
        }
        return cartItem;
    }

    public ArrayList getCartItems() {
        return CartItems;
    }

    public void setCartItems(ArrayList alCartItems) {
        this.CartItems = alCartItems;
    }

    public double getOrderTotal() {
        return dblOrderTotal;
    }

    public void setOrderTotal(double dblOrderTotal) {
        this.dblOrderTotal = dblOrderTotal;
    }

    protected void calculateOrderTotal() {
        double dblTotal = 0;
        for (int counter = 0; counter < CartItems.size(); counter++) {
            CartItemBean cartItem = (CartItemBean)CartItems.get(counter);
            dblTotal += cartItem.getTotalCost();

        }
        setOrderTotal(dblTotal);
    }

}
