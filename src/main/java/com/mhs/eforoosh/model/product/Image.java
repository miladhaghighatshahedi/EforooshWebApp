package com.mhs.eforoosh.model.product;

import java.io.Serializable;

/**
 * Created by milad on 9/19/2015.
 */
public class Image implements Serializable {
    private static final long serialVersionUID = 1L;

    private byte[] image;

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }
}
