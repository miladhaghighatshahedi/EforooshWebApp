<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/paginationTaglib.tld"%>

<div class="container">

    <c:if test="${empty products}">
        <div class="alert alert-waning2">
            <spring:message code="product.store.empty.message"/>
        </div>
    </c:if>


    <div class="container">
        <div class="well">
            <strong>List of Products</strong>
        </div>
        <table class="table table-stripped">
            <tr>
                <th>S.No</th>
                <th>Name</th>
                <th>Price</th>
                <th>Description</th>
                <th>Order</th>
            </tr>
            <c:forEach items="${products}" var="product" varStatus="itr">
                <tr>
                    <td>${offset + itr.index +1 }</td>
                    <td><c:out value="${product.name}"/></td>
                    <td><c:out value="${product.unitPrice}"/></td>
                    <td><c:out value="${product.description}"/></td>
                    <th>
                        <a href="<spring:url value='store/item/${product.objectId}.html'/>"
                           class="btn btn-success btn-sm">
                            <spring:message code="order"/>
                        </a>
                    </th>
                </tr>
            </c:forEach>
        </table>
        <tag:paginate max="5" offset="${offset}" count="${count}" uri="store.html" next="&raquo;" previous="&laquo;" />
    </div>


</div>

