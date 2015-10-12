package com.mhs.eforoosh.web;

import com.mhs.eforoosh.model.product.Category;
import com.mhs.eforoosh.model.product.Product;
import com.mhs.eforoosh.report.service.JasperReportProductService;
import com.mhs.eforoosh.report.service.common.JasperReportDownloadService;
import com.mhs.eforoosh.service.CategoryService;
import com.mhs.eforoosh.service.ProductService;
import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JRSortField;
import net.sf.jasperreports.engine.design.JRDesignSortField;
import net.sf.jasperreports.engine.type.SortFieldTypeEnum;
import net.sf.jasperreports.engine.type.SortOrderEnum;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
@RequestMapping("product")
public class ProductController {
    public static final String PRODUCTS_TEMPLATE = "/reports/products_report.jrxml";
    public static final String PRODUCT_TEMPLATE = "/reports/product_report.jrxml";
    public static final String PRODUCT_TEMPLATE_DETAIL = "/reports/product_details_report.jrxml";
    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private JasperReportDownloadService jasperReportDownloadService;
    @Autowired
    private JasperReportProductService jasperReportProductService;


    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String showProduct(Locale locale, Map<String, Object> model,Integer offset, Integer maxResults) {
        Product product = new Product();
        model.put("product", product);
        model.put("products", productService.findAll(offset,maxResults));
        model.put("count", productService.count());
        model.put("offset", offset);
        model.put("categories", categoryService.findAllParents());

        List<String> conditions = new ArrayList<String>();
        conditions.add("NEW");
        conditions.add("SECOND HAND");

        List<String> packagings = new ArrayList<String>();
        packagings.add("ONE");
        packagings.add("TWO");

        model.put("conditions", conditions);
        model.put("packagings", packagings);
        return "product";
    }

    @RequestMapping(value = "/product", method = RequestMethod.POST)
    public String saveProduct(@ModelAttribute("product") Product product) {
        productService.add(product);
        return "redirect:/product/product.html";
    }

    @RequestMapping(value = "/product/{objectId}", method = RequestMethod.GET)
    public String productDetail(Model model, @PathVariable long objectId) {
        model.addAttribute("product", productService.findById(objectId));
        return "product-detail";
    }

    @RequestMapping(value = "/product/remove/{objectId}", method = RequestMethod.GET)
    public String removeProduct(@PathVariable long objectId) {
        productService.removeById(objectId);
        return "redirect:/product/product.html?removeSuccess=true";
    }

    @RequestMapping(value = "/product/categories", method = RequestMethod.GET)
    public
    @ResponseBody
    List<Category> findAllCategories(Map<String, Object> model) {
        return categoryService.findAllParents();
    }

    @RequestMapping(value = "/product/subcategories", method = RequestMethod.GET)
    public
    @ResponseBody
    List<Category> findAllSubCategories(@RequestParam(value = "parentId", required = true) long parentId) {
        return categoryService.findByParentId(parentId);
    }

    // GET REPORT METHODS


    @RequestMapping(value = "/pdf/productsReport", method = RequestMethod.GET)
    public void getPdfReportAllP(HttpServletResponse response) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("date_of_addition");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("pdf", "pdf", response, PRODUCTS_TEMPLATE, jasperReportProductService.getDataSource(), "ProductsReport.pdf", params);
    }

    @RequestMapping(value = "/xls/productsReport", method = RequestMethod.GET)
    public void getXlsReportAllP(HttpServletResponse response) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("date_of_addition");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("xls", "xls", response, PRODUCTS_TEMPLATE, jasperReportProductService.getDataSource(), "ProductsReport.xls", params);
    }

    @RequestMapping(value = "/html/productsReport", method = RequestMethod.GET)
    public void getHtmlReportAllP(HttpServletResponse response) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("date_of_addition");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("html", "html", response, PRODUCTS_TEMPLATE, jasperReportProductService.getDataSource(), "ProductsReport.html", params);
    }


    @RequestMapping(value = "/pdf/productReport/{productId}", method = RequestMethod.GET)
    public void getPdfReportByIdP(HttpServletResponse response, @PathVariable long productId) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("date_of_addition");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("pdf", "pdf", response, PRODUCT_TEMPLATE, jasperReportProductService.getDataSourceById(productId), "ProductReport.pdf", params);
    }

    @RequestMapping(value = "/xls/productReport/{productId}", method = RequestMethod.GET)
    public void getXlsReportByIdP(HttpServletResponse response, @PathVariable long productId) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("date_of_addition");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("xls", "xls", response, PRODUCT_TEMPLATE, jasperReportProductService.getDataSourceById(productId), "ProductReport.xls", params);
    }

    @RequestMapping(value = "/html/productReport/{productId}", method = RequestMethod.GET)
    public void getHtmlReportByIdP(HttpServletResponse response, @PathVariable long productId) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("date_of_addition");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("html", "html", response, PRODUCT_TEMPLATE, jasperReportProductService.getDataSourceById(productId), "ProductReport.html", params);
    }


    @RequestMapping(value = "/product/pdf/productReport/{productId}", method = RequestMethod.GET)
    public void getPdfReportByIdPD(HttpServletResponse response, @PathVariable long productId) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("date_of_addition");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("pdf", "pdf", response, PRODUCT_TEMPLATE_DETAIL, jasperReportProductService.getDataSourceByIdDetails(productId), "ProductReport.pdf", params);
    }

    @RequestMapping(value = "/product/xls/productReport/{productId}", method = RequestMethod.GET)
    public void getXlsReportByIdPD(HttpServletResponse response, @PathVariable long productId) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("date_of_addition");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("xls", "xls", response, PRODUCT_TEMPLATE_DETAIL, jasperReportProductService.getDataSourceByIdDetails(productId), "ProductReport.xls", params);
    }

    @RequestMapping(value = "/product/html/productReport/{productId}", method = RequestMethod.GET)
    public void getHtmlReportByIdPD(HttpServletResponse response, @PathVariable long productId) {
        HashMap<String, Object> params = new HashMap<String, Object>();
        List<JRSortField> sortList = new ArrayList<JRSortField>();
        JRDesignSortField sortField = new JRDesignSortField();
        sortField.setName("date_of_addition");
        sortField.setOrder(SortOrderEnum.ASCENDING);
        sortField.setType(SortFieldTypeEnum.FIELD);
        sortList.add(sortField);
        params.put(JRParameter.SORT_FIELDS, sortList);
        jasperReportDownloadService.download("html", "html", response, PRODUCT_TEMPLATE_DETAIL, jasperReportProductService.getDataSourceByIdDetails(productId), "ProductReport.html", params);
    }


}
