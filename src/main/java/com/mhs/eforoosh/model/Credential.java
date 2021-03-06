package com.mhs.eforoosh.model;

import com.mhs.eforoosh.model.user.User;
import com.mhs.eforoosh.web.util.annotation.validation.UniqueUsername;
import org.hibernate.validator.constraints.Email;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by MHS on 11/27/2014.
 */
public class Credential implements Serializable {
    private static final long serialVersionUID = 1L;
    private long objectId;
    @Size(min=10,message = "Min Length 10 Character!")
    @Email(message = "Invalid Email Address!")
    //@UniqueUsername(message = "such username already exists!")
    private String username;
    @Size(min=10,message = "Min Length 10 Character!")
    private String password;
    private boolean enabled;
    private Date lastUpdate = new Date();
    private User user;

    public Credential() {
    }

    public long getObjectId() {
        return objectId;
    }

    public void setObjectId(long objectId) {
        this.objectId = objectId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public Date getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(Date lastUpdate) {
        this.lastUpdate = lastUpdate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
