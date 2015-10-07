package com.mhs.eforoosh.repository.impl;

import com.mhs.eforoosh.model.product.Category;
import com.mhs.eforoosh.repository.CategoryDAO;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by milad on 7/6/2015.
 */
@Repository("categoryRepository")
public class CategoryDAOImpl implements CategoryDAO {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(CategoryDAOImpl.class);

    @Resource
    private SessionFactory sessionFactory;

    @Override
    public Category add(Category category) {
        sessionFactory.getCurrentSession().persist(category);
        return category;
    }

    @Override
    public Category update(long objectId) {
        Category category = (Category) sessionFactory.getCurrentSession().get(Category.class, objectId);
        if (null != category) {
            sessionFactory.getCurrentSession().update(category);
        }
        return category;
    }

    @Override
    public Category removeById(long objectId) {
        Category category = (Category) sessionFactory.getCurrentSession().get(Category.class, objectId);
        if (null != category) {
            sessionFactory.getCurrentSession().delete(category);
        }
        return category;
    }

    @Override
    public Category findById(long objectId) {
        Category category = (Category) sessionFactory.getCurrentSession().get(Category.class, objectId);
        Hibernate.initialize(category.getParentCategory());
        Hibernate.initialize(category.getChildCategories());
        Hibernate.initialize(category.getProducts());
        return category;
    }

    @Override
    public Category findByName(String name) {
        Category category = (Category) sessionFactory.getCurrentSession().getNamedQuery("findCategoryByName").setParameter("name", name).uniqueResult();
        Hibernate.initialize(category.getParentCategory());
        Hibernate.initialize(category.getChildCategories());
        Hibernate.initialize(category.getProducts());
        return category;
    }

    @Override
    public List<Category> findAll() {
        List<Category> categories = sessionFactory.getCurrentSession().getNamedQuery("findAll").list();

        return categories;
    }

    @Override
    public List<Category> findAllCategories() {
        List<Category> categories = sessionFactory.getCurrentSession().getNamedQuery("findAllParent").list();
        for (Category category : categories) {
            Hibernate.initialize(category.getChildCategories());
            Hibernate.initialize(category.getProducts());
        }
        return categories;
    }

    @Override
    public List<Category> findByParentId(long parentId) {
        List<Category> categories = sessionFactory.getCurrentSession().getNamedQuery("findCategoryByParentId").setParameter("parentId", parentId).list();
        for (Category category : categories) {
            Hibernate.initialize(category.getChildCategories());
            Hibernate.initialize(category.getProducts());
        }
        return categories;
    }
}
