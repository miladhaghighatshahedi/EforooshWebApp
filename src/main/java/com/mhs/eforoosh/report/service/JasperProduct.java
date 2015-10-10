package com.mhs.eforoosh.report.service;

import java.util.Date;

/**
 * Created by milad on 10/10/2015.
 */
public class JasperProduct {
    private static final long serialVersionUID = 1L;

    private long product_id;
    private String product_name;
    private String type;
    private float unit_price;
    private float discount;
    private String packaging;
    private int quantity;
    private int unit_in_stock;
    private String product_status;
    private String description;
    private String condition;
    private Date date_of_addition;
    private String category_name;

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

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public String getPackaging() {
        return packaging;
    }

    public void setPackaging(String packaging) {
        this.packaging = packaging;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getUnit_in_stock() {
        return unit_in_stock;
    }

    public void setUnit_in_stock(int unit_in_stock) {
        this.unit_in_stock = unit_in_stock;
    }

    public String getProduct_status() {
        return product_status;
    }

    public void setProduct_status(String product_status) {
        this.product_status = product_status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public Date getDate_of_addition() {
        return date_of_addition;
    }

    public void setDate_of_addition(Date date_of_addition) {
        this.date_of_addition = date_of_addition;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }
}
