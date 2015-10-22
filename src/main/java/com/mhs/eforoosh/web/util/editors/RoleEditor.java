package com.mhs.eforoosh.web.util.editors;

import com.mhs.eforoosh.model.Role;
import com.mhs.eforoosh.repository.RoleDAO;
import org.springframework.beans.SimpleTypeConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.beans.PropertyEditorSupport;

/**
 * Created by milad on 10/20/2015.
 */
@Component
public class RoleEditor extends PropertyEditorSupport {

    @Autowired
    private RoleDAO roleDAO;
    private SimpleTypeConverter simpleTypeConverter = new SimpleTypeConverter();

    @Override
    public String getAsText() {
        Object obj = getValue();
        if(obj == null) {
            return null;
        }

        if(obj instanceof Role) {
            Role role = (Role) obj;

            return simpleTypeConverter.convertIfNecessary(role.getObjectId(), String.class);
        }

        throw new IllegalArgumentException("Value must be a Role");
    }

    @Override
    public void setAsText(String text) {
        if(text == null || 0 == text.length()) {
            setValue(null);
            return;
        }

        setValue(roleDAO.findById(simpleTypeConverter.convertIfNecessary(text, Long.class)));
    }
}
