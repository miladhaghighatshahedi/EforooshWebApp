package com.mhs.eforoosh.service;

import com.mhs.eforoosh.model.product.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * Created by MHS on 11/27/2014.
 */
public interface ProductService {
    public Product add(Product product);

    public Product update(Product product);

    public Product removeById(long objectId);

    public Page<Product> findAll(Pageable pageable);

    public List<Product> findAll();

    List<Product> findAllProductCategory();

    List<Product> findAllProductCategoryParentCategory();

    public Product findById(long objectId);

    public Product findByName(String name);

}
