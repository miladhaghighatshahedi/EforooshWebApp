<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<div class="container">

    <jsp:include page="../../templates/layout/store/storeMenu.jsp"/>

    <c:choose>
        <c:when test="${empty basket.items}">
            <c:if test="${empty param.success}">
                <div class="alert alert-waning2">
                    <spring:message code="order.empty.message"/>
                </div>
            </c:if>
            <c:if test="${param.success eq true}">
                <div class="alert alert-success">
                    <spring:message code="order.order.success.message"/>
                </div>
            </c:if>
        </c:when>

        <c:otherwise>
            <p>

            <h3><span class="label label-success"><spring:message code="order.order.message"/></span></h3></p>
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th><spring:message code="order.item.name"/></th>
                    <th><spring:message code="order.item.quantity"/></th>
                    <th><spring:message code="order.item.unitPrice"/></th>
                    <th><spring:message code="order.item.orderedPrice"/></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${basket.items}" var="orderedItem">
                    <tr>
                        <td><c:out value="${orderedItem.product.name}"/></td>
                        <td><c:out value="${orderedItem.quantity}"/></td>
                        <td><c:out value="${orderedItem.product.unitPrice}"/></td>
                        <td><c:out value="${orderedItem.quantity * orderedItem.product.unitPrice}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <center>
                <h3>
                    <marquee>
                        <span class="label label-info"><spring:message code="order.fillOut.contact.message"/></span>
                    </marquee>
                </h3>
            </center>

            <div id="registerBox" style="margin-top:50px;"
                 class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div style="padding-top:30px" class="panel-body">
                        <form:form commandName="userOrder" cssClass="form-horizontal">

                            <form:label for="order-name" path="name" cssClass="label label-success">
                                <spring:message code="order.form.name"/>
                            </form:label>
                            <form:input id="order-name" path="name" class="form-control" required="true"/>

                            <form:label for="order-city" path="city" cssClass="label label-success">
                                <spring:message code="order.form.city"/>
                            </form:label>
                            <form:input id="order-city " path="city" class="form-control" required="true"/>

                            <form:label for="order-street" path="street" cssClass="label label-success">
                                <spring:message code="order.form.street"/>
                            </form:label>
                            <form:textarea id="order-street" path="street" class="form-control" required="true" cols="3"
                                           rows="4"/>

                            <form:label for="order-zip" path="zip" cssClass="label label-success">
                                <spring:message code="order.form.zip"/>
                            </form:label>
                            <form:input id="order-zip" path="zip" class="form-control" required="true"/>

                            <form:label for="mobile-no" path="mobileNo" cssClass="label label-success">
                                <spring:message code="order.form.mobileNo"/>
                            </form:label>
                            <form:input id="mobile-no" path="mobileNo" class="form-control" required="true"/>

                            <form:label for="phone" path="phone" cssClass="label label-success">
                                <spring:message code="order.form.phoneNo"/>
                            </form:label>
                            <form:input id="phone" path="phone" class="form-control" required="true"/>

                            <form:label for="email" path="email" cssClass="label label-success">
                                <spring:message code="order.form.email"/>
                            </form:label>
                            <form:input id="email" path="email" class="form-control" required="true"/>

                            <div style="margin-top:10px" class="form-group">
                                <div class="col-sm-12 controls">
                                    <input type="submit" class="btn btn-success btn-sm"
                                           style="float: <spring:message code="direction2"/>;"
                                           value="<spring:message code="order.form.order.button"/> ">
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>

        </c:otherwise>
    </c:choose>

</div>