package com.mhs.eforoosh.service;

import com.mhs.eforoosh.model.product.Product;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * Created by MHS on 11/27/2014.
 */
public interface ProductService {
    public Product add(Product product);

    public Product update(Product product);

    public Product removeById(long objectId);

    public List<Product> findAll(Integer offset, Integer maxResults);

    List<Product> findAllProductCategory();

    List<Product> findAllProductCategoryParentCategory(Integer offset, Integer maxResults);

    public Product findById(long objectId);

    public Product findByName(String name);

    public Long count();







}
