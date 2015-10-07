package com.mhs.eforoosh.report.model;

import java.io.Serializable;

/**
 * Created by milad on 5/9/2015.
 */
public class JasperCategory implements Serializable {
    private static final long serialVersionUID = 1L;

    private long category_id;
    private String category_name;
    private String description;

    public JasperCategory() {
    }

    public long getCategory_id() {
        return category_id;
    }

    public void setCategory_id(long category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
