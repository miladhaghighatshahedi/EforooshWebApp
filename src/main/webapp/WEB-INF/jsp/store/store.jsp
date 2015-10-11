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

        <div class="container-fluid" style="background-color:#f9f9f9;">
            <div class="container container-pad" id="property-listings">
                <div class="row">
                    <div class="col-sm-10">
                        <c:forEach items="${products}" var="product" varStatus="itr">

                        <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
                            <div class="media">
                                <a class="pull-left" href="#" target="_parent">
                                    <img alt="image" class="img-responsive" src="../../../resources/images/image.png" width="60%" height="60%">
                                </a>

                                <div class="media-body fnt-smaller">
                                    <ul class="list-inline mrg-0 btm-mrg-10 clr-535353">
                                        <li><h3 class="media-heading"><a href="#" target="_parent"><c:out value="${product.name}"/></a></h3></li>
                                    </ul>

                                    <h4 class="media-heading">
                                        <c:out value="${product.unitPrice}"/><small class="pull-right">${offset + itr.index +1 }</small>
                                    </h4>

                                    <p class="fnt-larger fnt-lighter fnt-arial"><c:out value="${product.description}"/></p>

                                    <span class="fnt-smaller fnt-lighter fnt-arial">
                                    <a href="<spring:url value='store/item/${product.objectId}.html'/>" class="btn btn-success btn-sm"><spring:message code="order"/></a>
                                    </span>
                                </div>
                            </div>
                        </div>

                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
     <center><tag:paginate max="5" offset="${offset}" count="${count}" uri="store.html" next="&raquo;" previous="&laquo;" /></center>
    </div>






</div>


