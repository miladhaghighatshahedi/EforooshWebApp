<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<div class="container">


    <c:if test="${empty products}">
        <div class="alert alert-waning2">
            <spring:message code="product.store.empty.message"/>
        </div>
    </c:if>


    <div class="row">
        <c:forEach items="${products}" var="product">
            <div class="col-sm-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><c:out value="${product.name}"/></h3>
                    </div>
                    <div class="panel-body">

                        <c:out value="${product.unitPrice}"/>
                        <c:out value="${product.description}"/>

                        <br><br>
                        <center>
                            <a href="<spring:url value='store/item/${product.objectId}.html'/>"
                               class="btn btn-success btn-sm">
                                <spring:message code="order"/>
                            </a>
                        </center>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

</div>

