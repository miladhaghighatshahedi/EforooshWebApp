package com.mhs.eforoosh.web;

import com.mhs.eforoosh.model.product.Category;
import com.mhs.eforoosh.report.service.JasperReportCategoryService;
import com.mhs.eforoosh.report.service.common.JasperReportDownloadService;
import com.mhs.eforoosh.service.CategoryService;
import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JRSortField;
import net.sf.jasperreports.engine.design.JRDesignSortField;
import net.sf.jasperreports.engine.type.SortFieldTypeEnum;
import net.sf.jasperreports.engine.type.SortOrderEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * Created by milad on 7/4/2015.
 */
@Controller

public class CategoryController {
    public static final String CATEGORIES_TEMPLATE = "/reports/categories_report.jrxml";
    public static final String CATEGORY_TEMPLATE = "/reports/category_report.jrxml";
    private static final long serialVersionUID = 1L;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private JasperReportDownloadService jasperReportDownloadService;
    @Autowired
    private JasperReportCategoryService jasperReportCategoryService;

    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public String showCategoryPage(Locale locale, Map<String, Object> model) {
        Category category = new Category();
        model.put("category", category);
        model.put("categories", categoryService.findAll());
        return "category";
    }

    @RequestMapping(value = "/category", method = RequestMethod.POST)
    public String addCategory(@ModelAttribute("category") Category category) {
        categoryService.add(category);
        return "redirect:/category.html?success=true";
    }

    @RequestMapping(value = "/category/update/{objectId}", method = RequestMethod.GET)
    public String updateCategory(@PathVariable long objectId, Model model) {
        model.addAttribute("category", categoryService.findById(objectId));
        return "redirect:/category.html?success=true";
    }

    @RequestMapping(value = "/category/remove/{objectId}", method = RequestMethod.GET)
    public String removeCategory(@PathVariable long objectId) {
        categoryService.removeById(objectId);
        return "redirect:/category.html?success=true";
    }

    @RequestMapping(value = "/category/{objectId}", method = RequestMethod.GET)
    public String categoryDetailById(Model model, @PathVariable long objectId) {
        model.addAttribute("category", categoryService.findById(objectId));
        return "category-detail";
    }

    @RequestMapping(value = "/category/{name}/category", method = RequestMethod.GET)
    public String categoryDetailByParentName(Model model, @PathVariable String name) {
        model.addAttribute("category", categoryService.findByName(name));
        return "parent-category-detail";
    }

    @RequestMapping(value = "/category/{parent}/{child}", method = RequestMethod.GET)
    public String categoryDetailByParentChildName(Model model, @PathVariable String parent, @PathVariable String child) {
        model.addAttribute("category", categoryService.findByName(child));
        return "child-category-detail";
    }

    @RequestMapping(value = "/category/categories", method = RequestMethod.GET)
    public
    @ResponseBody
    List<Category> findAllCategories() {
        return categoryService.findAll();
    }

    @RequestMapping(value = "/category/subcategories", method = RequestMethod.GET)
    public
    @ResponseBody
    List<Category> findAllSubCategories(@RequestParam(value = "parentId", required = true) long parentId) {
        return categoryService.findByParentId(parentId);
    }

    // GET REPORT METHODS
    @RequestMapping(value = "/category/pdf/categoriesReport", method = RequestMethod.GET)
    public void getPdfReportAllC(HttpServletResponse response) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("category_id");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("pdf", "pdf", response, CATEGORIES_TEMPLATE, jasperReportCategoryService.getDataSource(), "CategoriesReport.pdf", params);
    }

    @RequestMapping(value = "/category/xls/categoriesReport", method = RequestMethod.GET)
    public void getXlsReportAllC(HttpServletResponse response) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("category_id");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("xls", "xls", response, CATEGORIES_TEMPLATE, jasperReportCategoryService.getDataSource(), "Categories.xls", params);
    }

    @RequestMapping(value = "/category/html/categoriesReport", method = RequestMethod.GET)
    public void getHtmlReportAllC(HttpServletResponse response) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("category_id");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("html", "html", response, CATEGORIES_TEMPLATE, jasperReportCategoryService.getDataSource(), "Categories.html", params);
    }


    @RequestMapping(value = "/category/pdf/categoryReport/{categoryId}", method = RequestMethod.GET)
    public void getPdfReportByIdC(HttpServletResponse response, @PathVariable long categoryId) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("category_id");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("pdf", "pdf", response, CATEGORY_TEMPLATE, jasperReportCategoryService.getDataSourceById(categoryId), "CategoryReport.pdf", params);
    }

    @RequestMapping(value = "/category/xls/categoryReport/{categoryId}", method = RequestMethod.GET)
    public void getXlsReportByIdC(HttpServletResponse response, @PathVariable long categoryId) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("category_id");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("xls", "xls", response, CATEGORY_TEMPLATE, jasperReportCategoryService.getDataSourceById(categoryId), "CategoryReport.xls", params);
    }

    @RequestMapping(value = "/category/html/categoryReport/{categoryId}", method = RequestMethod.GET)
    public void getHtmlReportByIdC(HttpServletResponse response, @PathVariable long categoryId) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("category_id");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("html", "html", response, CATEGORY_TEMPLATE, jasperReportCategoryService.getDataSourceById(categoryId), "CategoryReport.html", params);
    }


}






