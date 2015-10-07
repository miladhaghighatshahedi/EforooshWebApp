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
    @Size(min = 6, max = 30, message = "{rolename.size.message}")
    @UniqueRolename(message = "Such RoleName ALready Exists!")
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

    @JsonIgnore
    public Set<User> getUserSet() {
        return userSet;
    }

    public void setUserSet(Set<User> userSet) {
        this.userSet = userSet;
    }

    public void addUser(User newUser) {
        if (!(newUser instanceof User)) {
            throw new IllegalArgumentException("can only add User to a User");
        }
        if ((newUser != null) && (!getUserSet().contains(newUser))) {
            getUserSet().add(newUser);
        }
    }

    @Override
    public boolean equals(Object other) {
        if (this == other) return true;
        if (!(other instanceof Role)) return false;
        final Role role = (Role) other;
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
