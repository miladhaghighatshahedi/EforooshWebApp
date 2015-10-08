package com.mhs.eforoosh.report.model;


import java.io.Serializable;
import java.util.Date;

/**
 * Created by milad on 9/21/2015.
 */
public class JasperOrderedItems implements Serializable {
    private static final long serialVersionUID = 1L;

    private long product_id;
    private int quantity;
    private String product_name;
    private String type;
    private float unit_price;

    private String condition;
    private float discount;




    public long getProduct_id() {
        return product_id;
    }

    public void setProduct_id(long product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public float getUnit_price() {
        return unit_price;
    }

    public void setUnit_price(float unit_price) {
        this.unit_price = unit_price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }


}
