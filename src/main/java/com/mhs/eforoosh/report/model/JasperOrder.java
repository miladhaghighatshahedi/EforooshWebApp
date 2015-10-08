package com.mhs.eforoosh.report.model;


import javax.validation.constraints.AssertFalse;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created by milad on 9/21/2015.
 */
public class JasperOrder implements Serializable {
    private static final long serialVersionUID = 1L;

    private long User_order_id;
    private Date order_date;
    private String name;
    private String street;
    private String zip;
    private String city;
    private String mobile;
    private String phone;
    private String email;

    private List<JasperOrderedItems> jasperOrderedItems;

    public long getUser_order_id() {
        return User_order_id;
    }

    public void setUser_order_id(long user_order_id) {
        User_order_id = user_order_id;
    }


    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
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

    public List<JasperOrderedItems> getJasperOrderedItems() {
        return jasperOrderedItems;
    }

    public void setJasperOrderedItems(List<JasperOrderedItems> jasperOrderedItems) {
        this.jasperOrderedItems = jasperOrderedItems;
    }
}
