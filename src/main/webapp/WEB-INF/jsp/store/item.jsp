<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<div class="container">

    <jsp:include page="../../templates/layout/store/storeMenu.jsp"/>


    <div class="panel panel-info">
        <div style="padding-top:30px" class="panel-body">

            <h1><c:out value="${product.name}"/></h1>

            <p><c:out value="${product.description}"/></p>

            <p>
                <strong><spring:message code="item.price.unit.message"/> <c:out value="${product.unitPrice}"/></strong>
            </p>

            <form action="<spring:url value='/basket/add.html'/>" class="form-horizontal">
                <div class="form-group">
                    <input type="hidden" name="id" value="${product.objectId}">
                    <label class="control-label col-lg-1"><spring:message code="item.form.quantity"/> </label>

                    <div class="col-lg-1">
                        <input type="text" class="form-control" id="quantity" name="quantity" value="1"/>
                    </div>
                    <input type="submit" class="btn btn-sm btn-success"
                           value="<spring:message code="item.form.add.button"/>"/>
                </div>
            </form>
        </div>
    </div>


</div>
