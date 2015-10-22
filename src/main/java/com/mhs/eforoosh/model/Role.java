package com.mhs.eforoosh.model;

import com.mhs.eforoosh.model.user.User;
import com.mhs.eforoosh.web.util.annotation.validation.UniqueRolename;
import org.codehaus.jackson.annotate.JsonIgnore;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by MHS on 11/27/2014.
 */
public class Role implements Serializable {
    private static final long serialVersionUID = 1L;
    private long objectId;
    private String roleName;
    private Date dateAdded = new Date();
    private Set<User> userSet = new HashSet<User>();

    public Role() {
    }

    public Role(String roleName) {
        this.roleName = roleName;
    }

    public long getObjectId() {
        return objectId;
    }

    public void setObjectId(long objectId) {
        this.objectId = objectId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Date getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(Date dateAdded) {
        this.dateAdded = dateAdded;
    }



    @Override
    public boolean equals(Object other) {
        if (this == other) return true;
        if (!(other instanceof Role)) return false;
        Role role = (Role) other;
        if (objectId != role.objectId) return false;
        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (objectId ^ (objectId >>> 32));
        result = 31 * result + roleName.hashCode();
        result = 31 * result + dateAdded.hashCode();
        return result;
    }

}
