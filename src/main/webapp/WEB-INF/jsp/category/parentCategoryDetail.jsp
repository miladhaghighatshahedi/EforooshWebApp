<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
    <div class="container">

        <h1><span class="label label-success"><c:out value="${category.name}"/></span></h1>

        <table class="table table-bordered table-hover table-striped">
            <thead>
            <tr>
                <th><spring:message code="category.parent.categoryName"/></th>
                <th><spring:message code="category.parent.parentCategoryName"/></th>
                <th><spring:message code="category.parent.categoryDescription"/></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><c:out value="${category.name}"/></td>
                <c:if test="${category.parentCategory.name == null}">
                    <td><spring:message code="category.parent.no.message"/></td>
                </c:if>
                <c:if test="${category.parentCategory.name != null}">
                    <td><c:out value="${category.parentCategory.name}"/></td>
                </c:if>
                <td><c:out value="${category.description}"/></td>
            </tr>
            </tbody>
        </table>

        <br>

        <h1><span class="label label-success"><spring:message code="category.parent.subCategory.message"/></span></h1>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <c:forEach items="${category.childCategories}" var="child">
                <li><a href="#category_${child.objectId}" data-toggle="tab"><c:out value="${child.name}"/></a></li>
            </c:forEach>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <c:forEach items="${category.childCategories}" var="child">
                <div class="tab-pane  fade" id="category_${child.objectId}">
                    <br><br>
                    <a href="<spring:url value='/category/${category.name}/${child.name}.html'/>"><c:out
                            value="${child.name}"/></a>
                </div>
            </c:forEach>
        </div>

    </div>
</security:authorize>