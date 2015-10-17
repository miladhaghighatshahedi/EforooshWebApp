<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/paginationTaglib.tld"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container">

    <jsp:include page="../../templates/layout/store/storeMenu.jsp"/>

    <c:if test="${empty products}">
        <div class="alert alert-waning2">
            <spring:message code="product.store.empty.message"/>
        </div>
    </c:if>

    <div class="row">
            <div class="col-md-12">
                <table>
                <c:forEach items="${products}" var="product" varStatus="itr">
                    <c:if test="${itr.count % 4 == 1}">
                       <tr>
                    </c:if>
                        <td>
                    <div class="thumbnail" >
                        <h4 class="text-center"><span class="label label-info"><c:out value="${product.name}"/></span></h4>
                        <img src="../../../resources/images/image.png" class="img-responsive">
                        <div class="caption">
                            <div class="row">
                                <div class="col-md-12 col-xs-3">
                                    <small class="pull-right label label-info" >${offset + itr.index +1 }</small>
                                    <h4><c:out value="${product.name}"/></h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-xs-6 price">
                                    <h3><label><c:out value="${product.unitPrice}"/></label></h3>
                                </div>
                            </div>
                            <p><c:out value="${product.description}"/></p>
                            <div class="row">
                                <div class="col-md-6">
                                    <a class="btn btn-primary btn-product"><span class="glyphicon glyphicon-thumbs-up"></span> Like</a>
                                </div>
                                <div class="col-md-6">
                                    <a href="<spring:url value='store/item/${product.objectId}.html'/>" class="btn btn-success btn-product">
                                        <span class="glyphicon glyphicon-shopping-cart"><spring:message code="order"/></span>

                                    </a>
                                </div>
                            </div>
                            <p> </p>
                        </div>
                    </div>
                        </td>
                    <c:if test="${itr.count % 4 == 0||itr.count == fn:length(values)}">
                        </tr>
                    </c:if>
                </c:forEach>
                </table>
            </div>
    </div>

    <center><tag:paginate max="5" offset="${offset}" count="${count}" uri="store.html" next="&raquo;" previous="&laquo;" /></center>

</div>
