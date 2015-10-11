package com.mhs.eforoosh.repository;

import com.mhs.eforoosh.model.product.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * Created by milad on 7/4/2015.
 */
public interface ProductDAO {
    Product add(Product product);

    Product update(Product product);

    Product removeById(long objectId);

    Page<Product> findAll(Pageable pageable);

    List<Product> findAll(Integer offset, Integer maxResults);

    List<Product> findAllProductCategory();

    List<Product> findAllProductCategoryParentCategory();

    Product findById(long objectId);

    Product findByName(String name);

    Long count();
}
