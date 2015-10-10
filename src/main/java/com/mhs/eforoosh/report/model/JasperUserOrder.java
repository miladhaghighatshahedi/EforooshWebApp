package com.mhs.eforoosh.report.model;

import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 * Created by milad on 10/8/2015.
 */
public class JasperUserOrder {
    private static final long serialVersionUID = 1L;

    private long   user_order_id;
    private String name;
    private String street;
    private String zip;
    private String city;
    private String mobile;
    private String phone;
    private String email;
    private boolean viewed;
    private boolean delivered;
    private boolean canceled;
    private boolean done;
    private Date order_date;
    private List<JasperOrderItem> jasperOrderItems;

    public long getUser_order_id() {
        return user_order_id;
    }

    public void setUser_order_id(long user_order_id) {
        this.user_order_id = user_order_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isViewed() {
        return viewed;
    }

    public void setViewed(boolean viewed) {
        this.viewed = viewed;
    }

    public boolean isDelivered() {
        return delivered;
    }

    public void setDelivered(boolean delivered) {
        this.delivered = delivered;
    }

    public boolean isCanceled() {
        return canceled;
    }

    public void setCanceled(boolean canceled) {
        this.canceled = canceled;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public List<JasperOrderItem> getJasperOrderItems() {
        return jasperOrderItems;
    }

    public void setJasperOrderItems(List<JasperOrderItem> jasperOrderItems) {
        this.jasperOrderItems = jasperOrderItems;
    }
}
