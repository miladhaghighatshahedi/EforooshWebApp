package com.mhs.eforoosh.report.model;


import java.io.Serializable;
import java.util.Date;
import java.util.Set;

/**
 * Created by milad on 9/21/2015.
 */
public class JasperOrderItem implements Serializable {
    private static final long serialVersionUID = 1L;

    private long order_item_id;
    private int quantity;
    private JasperUserOrder jasperUserOrder;

    private long product_id;
    private String product_name;
    private String type;
    private float unit_price;
    private float discount;
    private String packaging;
    private int product_quantity;
    private int unit_in_stock;
    private String product_status;
    private String description;
    private String condition;
    private Date date_of_addition;
    private String category_name;

    public long getOrder_item_id() {
        return order_item_id;
    }

    public void setOrder_item_id(long order_item_id) {
        this.order_item_id = order_item_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public JasperUserOrder getJasperUserOrder() {
        return jasperUserOrder;
    }

    public void setJasperUserOrder(JasperUserOrder jasperUserOrder) {
        this.jasperUserOrder = jasperUserOrder;
    }

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

    public int getProduct_quantity() {
        return product_quantity;
    }

    public void setProduct_quantity(int product_quantity) {
        this.product_quantity = product_quantity;
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
