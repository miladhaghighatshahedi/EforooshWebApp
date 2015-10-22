package com.mhs.eforoosh.web.util.converter;

import com.mhs.eforoosh.model.Role;
import org.springframework.format.Formatter;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.util.Locale;

/**
 * Created by milad on 7/11/2015.
 */


public class RoleFormatter implements Formatter<Role> {

    @Override
    public Role parse(String text, Locale locale) throws ParseException {
        Role role = new Role();
        role.setObjectId(Long.parseLong(text));
        return role;
    }

    @Override
    public String print(Role role, Locale locale) {
        return String.valueOf(role.getObjectId());
    }
}
