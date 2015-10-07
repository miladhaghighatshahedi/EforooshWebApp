<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
    <div class="container">

        <h1><span class="label label-success"><c:out value="${category.parentCategory.name}"/></span></h1>

        <h3><span class="label label-info"><c:out value="${category.name}"/></span></h3>

        <br>

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
                    <td><spring:message code="category.child.no.message"/></td>
                </c:if>
                <c:if test="${category.parentCategory.name != null}">
                    <td><c:out value="${category.parentCategory.name}"/></td>
                </c:if>
                <td><c:out value="${category.description}"/></td>
            </tr>
            </tbody>
        </table>

        <br>

        <h1><span class="label label-success"><spring:message code="category.child.products.message"/></span></h1>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <c:forEach items="${category.products}" var="product">
                <li><a href="#category_${product.objectId}" data-toggle="tab"><c:out value="${product.name}"/></a></li>
            </c:forEach>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <c:forEach items="${category.products}" var="child">
                <div class="tab-pane  fade" id="category_${child.objectId}">
                    <br>
                    <table class="table table-bordered table-hover table-striped">
                        <tbody>
                        <tr>
                            <th><spring:message code="category.child.product.name"/></th>
                            <td><c:out value="${child.name}"/><br></td>
                        </tr>
                        <tr>
                            <th><spring:message code="category.child.product.description"/></th>
                            <td><c:out value="${child.description}"/><br></td>
                        </tr>
                        <tr>
                            <th><spring:message code="category.child.product.unitInStock"/></th>
                            <td><c:out value="${child.unitInStock}"/><br></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </c:forEach>
        </div>

    </div>
</security:authorize>