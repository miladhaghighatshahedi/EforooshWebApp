package com.mhs.eforoosh.report.service;

import com.mhs.eforoosh.model.product.Product;
import com.mhs.eforoosh.repository.ProductDAO;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by milad on 9/21/2015.
 */
@Service("jasperReportProductService")
@Transactional
public class JasperReportProductService {
    private static final long serialVersionUID = 1L;

    @Autowired
    private ProductDAO productDAO;

    public JRDataSource getDataSource() {
        List<Product> products = productDAO.findAll();
        List<JasperProduct> jasperProducts = new ArrayList<JasperProduct>();

        for (Product product : products) {
            JasperProduct jasperProduct = new JasperProduct();

            jasperProduct.setProduct_id(product.getObjectId());
            jasperProduct.setProduct_name(product.getName());
            jasperProduct.setType(product.getType());
            jasperProduct.setUnit_price(product.getUnitPrice());
            jasperProduct.setDiscount(product.getDiscount());
            jasperProduct.setPackaging(product.getPackaging());
            jasperProduct.setQuantity(product.getQuantity());
            jasperProduct.setUnit_in_stock(product.getUnitInStock());
            jasperProduct.setProduct_status(product.getProductStatus());
            jasperProduct.setDescription(product.getDescription());
            jasperProduct.setCondition(product.getCondition());
            jasperProduct.setDate_of_addition(product.getDateOfAddition());

            jasperProducts.add(jasperProduct);
        }
        return new JRBeanCollectionDataSource(jasperProducts);

    }

    public JRDataSource getDataSourceById(long productId) {
        Product product = productDAO.findById(productId);
        List<JasperProduct> jasperProducts = new ArrayList<JasperProduct>();

        JasperProduct jasperProduct = new JasperProduct();

        jasperProduct.setProduct_id(product.getObjectId());
        jasperProduct.setProduct_name(product.getName());
        jasperProduct.setType(product.getType());
        jasperProduct.setUnit_price(product.getUnitPrice());
        jasperProduct.setDiscount(product.getDiscount());
        jasperProduct.setPackaging(product.getPackaging());
        jasperProduct.setQuantity(product.getQuantity());
        jasperProduct.setUnit_in_stock(product.getUnitInStock());
        jasperProduct.setProduct_status(product.getProductStatus());
        jasperProduct.setDescription(product.getDescription());
        jasperProduct.setCondition(product.getCondition());
        jasperProduct.setDate_of_addition(product.getDateOfAddition());

        jasperProducts.add(jasperProduct);

        return new JRBeanCollectionDataSource(jasperProducts);

    }

    public JRDataSource getDataSourceByIdDetails(long productId) {
        Product product = productDAO.findById(productId);
        List<JasperProduct> jasperProducts = new ArrayList<JasperProduct>();

        JasperProduct jasperProduct = new JasperProduct();

        jasperProduct.setProduct_id(product.getObjectId());
        jasperProduct.setProduct_name(product.getName());
        jasperProduct.setType(product.getType());
        jasperProduct.setUnit_price(product.getUnitPrice());
        jasperProduct.setDiscount(product.getDiscount());
        jasperProduct.setPackaging(product.getPackaging());
        jasperProduct.setQuantity(product.getQuantity());
        jasperProduct.setUnit_in_stock(product.getUnitInStock());
        jasperProduct.setProduct_status(product.getProductStatus());
        jasperProduct.setDescription(product.getDescription());
        jasperProduct.setCondition(product.getCondition());
        jasperProduct.setDate_of_addition(product.getDateOfAddition());
        jasperProduct.setCategory_name(product.getCategory().getName());

        jasperProducts.add(jasperProduct);

        return new JRBeanCollectionDataSource(jasperProducts);

    }
}
