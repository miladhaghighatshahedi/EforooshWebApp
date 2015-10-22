package com.mhs.eforoosh.model.user;

import com.mhs.eforoosh.model.Credential;
import com.mhs.eforoosh.model.Role;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by MHS on 11/27/2014.
 */
public abstract class User implements Serializable {
    private static final long serialVersionUID = 1L;
    private long objectId;
    private Credential credential;
    private Set<Role> roleSet = new HashSet<Role>(0);


    protected User() {
    }

    public long getObjectId() {
        return objectId;
    }

    public void setObjectId(long objectId) {
        this.objectId = objectId;
    }

    public Credential getCredential() {
        return credential;
    }

    public void setCredential(Credential credential) {
        this.credential = credential;
    }

    public Set<Role> getRoleSet() {
        return roleSet;
    }

    public void setRoleSet(Set<Role> roleSet) {
        this.roleSet = roleSet;
    }

    public void addRole(Role newRole) {
        if (!(newRole instanceof Role)) {
            throw new IllegalArgumentException("can only add Role to a Role");
        }
        if ((newRole != null) && (!getRoleSet().contains(newRole))) {
            getRoleSet().add(newRole);
        }
    }

    public void removeRole(Role role) {
        getRoleSet().remove(role);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;
        User user = (User) o;
        if (objectId != user.objectId) return false;
        if (credential != null ? !credential.equals(user.credential) : user.credential != null) return false;
        if (roleSet != null ? !roleSet.equals(user.roleSet) : user.roleSet != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (objectId ^ (objectId >>> 32));
        result = 31 * result + (credential != null ? credential.hashCode() : 0);
        result = 31 * result + (roleSet != null ? roleSet.hashCode() : 0);
        return result;
    }
}
