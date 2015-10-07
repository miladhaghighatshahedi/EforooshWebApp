package com.mhs.eforoosh.report.service.common;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.UUID;

/**
 * Created by milad on 9/21/2015.
 */
@Service("jasperReportTokenService")
public class JasperReportTokenService {
    private static final long serialVersionUID = 1L;

    private HashMap<String, String> tokens = new HashMap<String, String>();

    public String check(String token) {
        return tokens.get(token);
    }

    public String generate() {
        String uid = UUID.randomUUID().toString();
        tokens.put(uid, uid);
        return uid;
    }

    public void remove(String token) {
        tokens.remove(token);
    }
}
