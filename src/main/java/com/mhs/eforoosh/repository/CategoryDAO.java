package com.mhs.eforoosh.repository;

import com.mhs.eforoosh.model.product.Category;

import java.util.List;

/**
 * Created by milad on 7/4/2015.
 */
public interface CategoryDAO {
    public Category add(Category category);

    public Category update(long objectId);

    public Category removeById(long objectId);

    public Category findById(long objectId);

    public Category findByName(String name);

    public List<Category> findAll(Integer offset, Integer maxResults);
    public List<Category> findAll();

    public List<Category> findAllCategories(Integer offset, Integer maxResults);

    public List<Category> findByParentId(long parentId);

    public Long count();
}
