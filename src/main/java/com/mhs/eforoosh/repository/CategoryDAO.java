package com.mhs.eforoosh.repository;

import com.mhs.eforoosh.model.product.Category;

import java.util.List;

/**
 * Created by milad on 7/4/2015.
 */
public interface CategoryDAO {
    Category add(Category category);
    Category update(long objectId);
    Category removeById(long objectId);
    Category findById(long objectId);
    Category findByName(String name);
    List<Category> findAll();
    List<Category> findAllParents();
    List<Category> findAllCategories();
    List<Category> findByParentId(long parentId);
    Long count();
}
