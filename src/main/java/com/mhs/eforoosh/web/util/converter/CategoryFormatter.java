package com.mhs.eforoosh.web.util.converter;

import com.mhs.eforoosh.model.product.Category;
import org.springframework.format.Formatter;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.util.Locale;

/**
 * Created by milad on 7/11/2015.
 */
@Component
public class CategoryFormatter implements Formatter<Category> {

    @Override
    public Category parse(String text, Locale locale) throws ParseException {
        Category category = new Category();
        category.setObjectId(Long.parseLong(text));
        return category;
    }

    @Override
    public String print(Category category, Locale locale) {
        long objectId = category.getObjectId();
        return String.valueOf(objectId);
    }
}
