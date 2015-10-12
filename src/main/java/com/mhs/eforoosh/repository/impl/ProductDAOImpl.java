package com.mhs.eforoosh.repository.impl;

import com.mhs.eforoosh.model.product.Product;
import com.mhs.eforoosh.repository.ProductDAO;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by milad on 7/4/2015.
 */
@Repository("productRepository")
public class ProductDAOImpl implements ProductDAO {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(ProductDAOImpl.class);

    @Resource
    private SessionFactory sessionFactory;

    @Override
    public Product add(Product product) {
        sessionFactory.getCurrentSession().persist(product);
        return product;
    }

    @Override
    public Product update(Product product) {
        sessionFactory.getCurrentSession().update(product);
        return product;
    }

    @Override
    public Product removeById(long objectId) {
        Product product = (Product) sessionFactory.getCurrentSession().get(Product.class, objectId);
        if (null != product) {
            sessionFactory.getCurrentSession().delete(product);
        }
        return product;
    }

    @Override
    public Page<Product> findAll(Pageable pageable) {
        Query query = sessionFactory.getCurrentSession().getNamedQuery("findAllProducts");
        query.setFirstResult(pageable.getPageNumber());
        query.setMaxResults(pageable.getPageSize());
        return (Page<Product>) query.list();
    }

    @Override
    public List<Product> findAll(Integer offset, Integer maxResults) {
        return (List<Product>)sessionFactory.openSession()
                .createCriteria(Product.class)
                .setFirstResult(offset!=null?offset:0)
                .setMaxResults(maxResults!=null?maxResults:10)
                .list();
    }

    @Override
    public List<Product> findAllProductCategory() {
        List<Product> products = sessionFactory.getCurrentSession().getNamedQuery("findAllProducts").list();
        for (Product product : products) {
            Hibernate.initialize(product.getCategory());
            ;
        }
        return products;
    }

    @Override
    public List<Product> findAllProductCategoryParentCategory(Integer offset, Integer maxResults) {
        List<Product> products = sessionFactory.getCurrentSession()
                .createCriteria(Product.class)
                .setFirstResult(offset!=null?offset:0)
                .setMaxResults(maxResults!=null?maxResults:10)
                .list();
        for (Product product : products) {
            Hibernate.initialize(product.getCategory());
            Hibernate.initialize(product.getCategory().getParentCategory());
        }
        return products;
    }

    @Override
    public Product findById(long objectId) {
        Product product = (Product) sessionFactory.getCurrentSession().get(Product.class, objectId);
        Hibernate.initialize(product.getCategory());
        Hibernate.initialize(product.getCategory().getParentCategory());
        return product;
    }

    @Override
    public Product findByName(String name) {
        Product product = (Product) sessionFactory.getCurrentSession().getNamedQuery("findProductByName").setParameter("name", name).uniqueResult();
        return product;
    }

    public Long count() {
        return (Long)sessionFactory.getCurrentSession().createCriteria(Product.class).setProjection(Projections.rowCount()).uniqueResult();
    }
}
