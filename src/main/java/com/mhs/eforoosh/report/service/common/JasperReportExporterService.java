package com.mhs.eforoosh.report.service.common;

/**
 * Created by milad on 9/21/2015.
 */

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.export.*;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;

@Service("jasperReportExporterService")
public class JasperReportExporterService {
    public static final String MEDIA_TYPE_EXCEL = "application/vnd.ms-excel";
    public static final String MEDIA_TYPE_PDF = "application/pdf";
    public static final String MEDIA_TYPE_HTML = "text/html";
    public static final String EXTENSION_TYPE_EXCEL = "xls";
    public static final String EXTENSION_TYPE_PDF = "pdf";
    public static final String EXTENSION_TYPE_HTML = "html";
    private static final long serialVersionUID = 1L;

    public HttpServletResponse export(String type, JasperPrint jp, HttpServletResponse response, ByteArrayOutputStream outputStream, String fileName) {

        if (type.equalsIgnoreCase(EXTENSION_TYPE_EXCEL)) {
            exportXls(jp, outputStream);
            response.setHeader("Content-Disposition", "inline; filename=" + fileName);
            response.setContentType(MEDIA_TYPE_EXCEL);
            response.setContentLength(outputStream.size());
            return response;
        }

        if (type.equalsIgnoreCase(EXTENSION_TYPE_PDF)) {
            exportPdf(jp, outputStream);
            response.setHeader("Content-Disposition", "inline; filename=" + fileName);
            response.setContentType(MEDIA_TYPE_PDF);
            response.setContentLength(outputStream.size());
            return response;
        }

        if (type.equalsIgnoreCase(EXTENSION_TYPE_HTML)) {
            exportHtml(jp, outputStream);
            response.setHeader("Content-Disposition", "inline; filename=" + fileName);
            response.setContentType(MEDIA_TYPE_HTML);
            response.setContentLength(outputStream.size());
            return response;
        }
        throw new RuntimeException("No type set for type " + type);
    }

    public void exportXls(JasperPrint jp, ByteArrayOutputStream outputStream) {
        JRXlsExporter exporter = new JRXlsExporter();
        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jp);
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, outputStream);
        // Excel specific parameters
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.FALSE);
        try {
            exporter.exportReport();
        } catch (JRException e) {
            throw new RuntimeException(e);
        }
    }

    public void exportPdf(JasperPrint jp, ByteArrayOutputStream baos) {
        JRPdfExporter exporter = new JRPdfExporter();
        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jp);
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, baos);
        try {
            exporter.exportReport();
        } catch (JRException e) {
            throw new RuntimeException(e);
        }
    }

    public void exportHtml(JasperPrint jp, ByteArrayOutputStream baos) {
        JRExporter exporter = new JRHtmlExporter();
        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jp);
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, baos);
        exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING, "UTF-8");
        exporter.setParameter(JRHtmlExporterParameter.IS_OUTPUT_IMAGES_TO_DIR, Boolean.TRUE);
        exporter.setParameter(JRHtmlExporterParameter.IMAGES_DIR_NAME, "./Images/");
        exporter.setParameter(JRHtmlExporterParameter.IMAGES_URI, "/Images/");
        exporter.setParameter(JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN, Boolean.FALSE);
        try {
            exporter.exportReport();
        } catch (JRException e) {
            throw new RuntimeException(e);
        }
    }

}
