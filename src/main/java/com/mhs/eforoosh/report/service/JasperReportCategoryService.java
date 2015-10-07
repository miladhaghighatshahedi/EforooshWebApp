package com.mhs.eforoosh.report.service;

import com.mhs.eforoosh.model.product.Category;
import com.mhs.eforoosh.report.model.JasperCategory;
import com.mhs.eforoosh.repository.CategoryDAO;
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
@Service("jasperReportCategoryService")
@Transactional
public class JasperReportCategoryService {
    private static final long serialVersionUID = 1L;

    @Autowired
    private CategoryDAO categoryDAO;

    public JRDataSource getDataSource() {
        List<Category> categories = categoryDAO.findAll();
        List<JasperCategory> jasperCategories = new ArrayList<JasperCategory>();

        for (Category category : categories) {
            JasperCategory jasperCategory = new JasperCategory();

            jasperCategory.setCategory_id(category.getObjectId());
            jasperCategory.setCategory_name(category.getName());
            jasperCategory.setDescription(category.getDescription());


            jasperCategories.add(jasperCategory);
        }
        return new JRBeanCollectionDataSource(jasperCategories);

    }

    public JRDataSource getDataSourceById(long categoryId) {

        Category category = categoryDAO.findById(categoryId);
        List<JasperCategory> jasperCategories = new ArrayList<JasperCategory>();

        JasperCategory jasperCategory = new JasperCategory();
        jasperCategory.setCategory_id(category.getObjectId());
        jasperCategory.setCategory_name(category.getName());
        jasperCategory.setDescription(category.getDescription());

        jasperCategories.add(jasperCategory);

        return new JRBeanCollectionDataSource(jasperCategories);

    }


}
