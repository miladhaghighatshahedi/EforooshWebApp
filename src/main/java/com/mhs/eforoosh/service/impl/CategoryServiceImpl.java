package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.product.Category;
import com.mhs.eforoosh.repository.CategoryDAO;
import com.mhs.eforoosh.service.CategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by milad on 7/6/2015.
 */
@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(CategoryServiceImpl.class);

    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    public Category add(Category category) {
        Category category1 = categoryDAO.add(category);
        return category1;
    }

    @Override
    public Category update(long objectId) {
        Category category1 = categoryDAO.update(objectId);
        return category1;
    }

    @Override
    public Category removeById(long objectId) {
        Category category1 = categoryDAO.removeById(objectId);
        return category1;
    }

    @Override
    public Category findById(long objectId) {
        Category category1 = categoryDAO.findById(objectId);
        return category1;
    }

    @Override
    public Category findByName(String name) {
        Category category1 = categoryDAO.findByName(name);
        return category1;
    }

    @Override
    public List<Category> findAll() {
        List<Category> categories = categoryDAO.findAll();
        return categories;
    }

    @Override
    public List<Category> findAllParents() {
        List<Category> categories = categoryDAO.findAllParents();
        return categories;
    }

    @Override
    public List<Category> findAllCategories() {
        List<Category> categories = categoryDAO.findAllCategories();
        return categories;
    }

    @Override
    public List<Category> findByParentId(long parentId) {
        List<Category> categories = categoryDAO.findByParentId(parentId);
        return categories;
    }

    @Override
    public Long count() {
        return categoryDAO.count();
    }


}
