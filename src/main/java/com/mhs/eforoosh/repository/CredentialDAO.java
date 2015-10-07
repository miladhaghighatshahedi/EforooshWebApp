package com.mhs.eforoosh.repository;

import com.mhs.eforoosh.model.Credential;
import com.mhs.eforoosh.model.user.User;

/**
 * Created by MHS on 11/25/2014.
 */
public interface CredentialDAO {

    public Credential add(Credential credential);

    public Credential update(Credential credential);

    public Credential removeById(long objectId);

    public Credential findById(long objectId);

    public Credential findByUsername(String username);

    public User findUserByUsername(String username);

}
