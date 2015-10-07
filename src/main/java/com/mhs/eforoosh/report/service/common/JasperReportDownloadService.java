package com.mhs.eforoosh.report.service.common;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;

/**
 * Created by milad on 9/21/2015.
 */

@Service("jasperReportDownloadService")
@Transactional
public class JasperReportDownloadService {
    private static final long serialVersionUID = 1L;
    protected static Logger logger = Logger.getLogger("jasperReportDownloadService");

    @Autowired
    private JasperReportExporterService jres;
    @Autowired
    private JasperReportTokenService jrts;


    public void download(String type, String token, HttpServletResponse response, String TEMPLATE, JRDataSource jrDataSource, String fileName, HashMap<String, Object> params) {
        try {

            InputStream reportStream = this.getClass().getResourceAsStream(TEMPLATE);
            JasperDesign jasperDesign = JRXmlLoader.load(reportStream);
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, params, jrDataSource);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            jres.export(type, jasperPrint, response, baos, fileName);
            write(token, response, baos);
        } catch (JRException jre) {
            logger.error("Unable to process download");
            throw new RuntimeException(jre);
        }
    }

    private void write(String token, HttpServletResponse response, ByteArrayOutputStream baos) {
        try {
            logger.debug(baos.size());
            ServletOutputStream outputStream = response.getOutputStream();
            baos.writeTo(outputStream);
            outputStream.flush();
            jrts.remove(token);
        } catch (Exception e) {
            logger.error("Unable to write report to the output stream");
            throw new RuntimeException(e);
        }
    }
}
