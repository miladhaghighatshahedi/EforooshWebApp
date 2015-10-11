package com.mhs.eforoosh.service.impl;

import com.mhs.eforoosh.model.product.Product;
import com.mhs.eforoosh.repository.ProductDAO;
import com.mhs.eforoosh.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by milad on 7/4/2015.
 */
@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(ProductServiceImpl.class);

    @Autowired
    private ProductDAO productDAO;

    @Override
    public Product add(Product product) {
        product.setDateOfAddition(new Date());
        Product product1 = productDAO.add(product);
        return product1;
    }

    @Override
    public Product update(Product product) {
        Product product1 = productDAO.update(product);
        return product1;
    }

    @Override
    public Product removeById(long objectId) {
        Product product1 = productDAO.removeById(objectId);
        return product1;
    }

    @Override
    public List<Product> findAll(Integer offset, Integer maxResults) {
        List<Product> products = productDAO.findAll(offset,maxResults);
        return products;
    }

    @Override
    public List<Product> findAllProductCategory() {
        List<Product> products = productDAO.findAllProductCategory();
        return products;
    }

    @Override
    public List<Product> findAllProductCategoryParentCategory() {
        List<Product> products = productDAO.findAllProductCategoryParentCategory();
        return products;
    }

    @Override
    public Product findById(long objectId) {
        Product product1 = productDAO.findById(objectId);
        return product1;
    }

    @Override
    public Product findByName(String name) {
        Product product1 = productDAO.findByName(name);
        return product1;
    }

    @Override
    public Long count() {
        return productDAO.count();
    }


}
