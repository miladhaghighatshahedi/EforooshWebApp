package com.mhs.eforoosh.model.shopping;

import com.mhs.eforoosh.model.product.Product;

import java.io.Serializable;

public class OrderedItem implements Serializable {
    private static final long serialVersionUID = 1L;

    private long objectId;
    private int quantity;
    private UserOrder userOrder;
    private Product product;

    public long getObjectId() {
        return objectId;
    }

    public void setObjectId(long objectId) {
        this.objectId = objectId;
    }

    public UserOrder getUserOrder() {
        return userOrder;
    }

    public void setUserOrder(UserOrder userOrder) {
        this.userOrder = userOrder;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return this.quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
