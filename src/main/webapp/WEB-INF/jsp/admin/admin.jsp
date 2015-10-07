<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<security:authorize access="hasRole('ROLE_ADMIN')">
    <div class="container">
        admin
    </div>
</security:authorize>


