<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<script type="text/javascript">
    $(document).ready(function () {
        remove();
        view();
        cancel();
        done();
        delivered();
    });

    function remove() {
        $(".triggerRemoveUserOrderButton").click(function (e) {
            e.preventDefault();
            $("#removeUserOrderModal .removeUserOrderButton").attr("href", $(this).attr("href"));
            $("#removeUserOrderModal").modal();
        });
    }

    function view() {
        $(".triggerViewedUserOrderButton").click(function (e) {
            e.preventDefault();
            $("#viewedUserOrderModal .viewedUserOrderButton").attr("href", $(this).attr("href"));
            $("#viewedUserOrderModal").modal();
        });
    }

    function cancel() {
        $(".triggerCanceledUserOrderButton").click(function (e) {
            e.preventDefault();
            $("#canceledUserOrderModal .canceledUserOrderButton").attr("href", $(this).attr("href"));
            $("#canceledUserOrderModal").modal();
        });
    }

    function done() {
        $(".triggerDoneUserOrderButton").click(function (e) {
            e.preventDefault();
            $("#doneUserOrderModal .doneUserOrderButton").attr("href", $(this).attr("href"));
            $("#doneUserOrderModal").modal();
        });
    }

    function delivered() {
        $(".triggerDeliveredUserOrderButton").click(function (e) {
            e.preventDefault();
            $("#deliveredUserOrderModal .deliveredUserOrderButton").attr("href", $(this).attr("href"));
            $("#deliveredUserOrderModal").modal();
        });
    }

</script>

<security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
    <div class="container">

        <c:if test="${param.success eq true}">
            <div class="alert alert-success">
                <spring:message code="userOrder.remove.success.message"/>
            </div>
        </c:if>

        <c:if test="${param.viewedSuccess eq true}">
            <div class="alert alert-success">
                <spring:message code="userOrder.viewed.success.message"/>
            </div>
        </c:if>

        <c:if test="${param.canceledSuccess eq true}">
            <div class="alert alert-success">
                <spring:message code="userOrder.canceled.success.message"/>
            </div>
        </c:if>

        <c:if test="${param.deliveredSuccess eq true}">
            <div class="alert alert-success">
                <spring:message code="userOrder.delivered.success.message"/>
            </div>
        </c:if>

        <c:if test="${param.doneSuccess eq true}">
            <div class="alert alert-success">
                <spring:message code="userOrder.done.success.message"/>
            </div>
        </c:if>

        <h1><span class="label label-success"><spring:message code="userOrder.userOrders"/></span></h1>

        <div class="btn-group">
            <button type="button" class="btn btn-warning btn-sm"><spring:message
                    code="category.report.button"/></button>
            <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                <span class="caret"></span>
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="<spring:url value='orders/pdf/ordersReport.pdf'/>"><spring:message code="pdf"/></a></li>
                <li role="separator" class="divider"></li>
                <li><a href="<spring:url value='orders/xls/ordersReport.xls'/>"><spring:message code="xls"/></a></li>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="<spring:url value='orders/html/ordersReport.html'/>"><spring:message code="html"/></a></li>
                </li>
            </ul>
        </div>

        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th><spring:message code="userOrder.name"/></th>
                <th><spring:message code="userOrder.mobile"/></th>
                <th><spring:message code="userOrder.phone"/></th>
                <th><spring:message code="userOrder.email"/></th>
                <th><spring:message code="userOrder.orderedDate"/></th>
                <th><spring:message code="userOrder.orderedTime"/></th>
                <th><spring:message code="userOrder.orderedItems"/></th>
                <th style="width:200px;"><spring:message code="userOrder.options"/></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${userOrders}" var="uo">
                <tr>
                    <td><c:out value="${uo.name}"/></td>
                    <td><c:out value="${uo.mobileNo}"/></td>
                    <td><c:out value="${uo.phone}"/></td>
                    <td><c:out value="${uo.email}"/></td>
                    <td><fmt:formatDate value="${uo.orderDate}" pattern="dd.MM.yyyy"/></td>
                    <td><fmt:formatDate value="${uo.orderDate}" pattern="hh:mm:ss"/></td>
                    <td>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th><spring:message code="userOrder.products"/></th>
                                <th><spring:message code="userOrder.quantity"/></th>
                                <th><spring:message code="userOrder.unitPrice"/></th>
                                <th><spring:message code="userOrder.orderedPrice"/></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${uo.orderedItems}" var="oi">
                                <tr>
                                    <td><c:out value="${oi.product.name}"/></td>
                                    <td><c:out value="${oi.quantity}"/></td>
                                    <td><c:out value="${oi.product.unitPrice}"/></td>
                                    <td><c:out value="${oi.quantity * oi.product.unitPrice}"/></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </td>
                    <td style="width: 150px;" colspan="2">
                        <div class="btn-group" >
                            <button type="button" class="btn btn-warning btn-sm"><spring:message
                                    code="category.report.button"/></button>
                            <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="<spring:url value='orders/pdf/orderReport/${uo.objectId}.pdf'/>"><spring:message code="pdf"/></a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="<spring:url value='orders/xls/orderReport/${uo.objectId}.xls'/>"><spring:message code="xls"/></a></li>
                                </li>
                                <li role="separator" class="divider"></li>
                                <li><a href="<spring:url value='orders/html/orderReport/${uo.objectId}.html'/>"><spring:message code="html"/></a></li>
                                </li>
                            </ul>
                        </div>
                        <a href="<spring:url value='orders/remove/${uo.objectId}.html'/>"class="btn btn-danger btn-sm triggerRemoveUserOrderButton">
                            <spring:message code="userOrder.remove.button"/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="9" align="center">
                        <table>
                            <tr>
                                <td>
                                    <c:choose>
                                        <c:when test="${uo.viewed eq false}">
                                            <a href="<spring:url value='orders/viewed/${uo.objectId}.html'/>"
                                               class="btn btn-info btn-sm triggerViewedUserOrderButton"><spring:message
                                                    code="userOrder.notViewed.button"/></a><br>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="" class="btn btn-success btn-sm "><spring:message
                                                    code="userOrder.viewed.button"/></a><br>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${uo.delivered eq false}">
                                            <a href="<spring:url value='orders/delivered/${uo.objectId}.html'/>"
                                               class="btn btn-info btn-sm triggerDeliveredUserOrderButton"><spring:message
                                                    code="userOrder.notDelivered.button"/></a><br>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="" class="btn btn-success btn-sm "><spring:message
                                                    code="userOrder.delivered.button"/></a><br>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${uo.done eq false}">
                                            <a href="<spring:url value='orders/done/${uo.objectId}.html'/>"
                                               class="btn btn-info btn-sm triggerDoneUserOrderButton"><spring:message
                                                    code="userOrder.notDone.button"/></a><br>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="" class="btn btn-success btn-sm "><spring:message
                                                    code="userOrder.done.button"/></a><br>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${uo.canceled eq false}">
                                            <a href="<spring:url value='orders/canceled/${uo.objectId}.html'/>"
                                               class="btn btn-info btn-sm triggerCanceledUserOrderButton"><spring:message
                                                    code="userOrder.notCanceled.button"/></a><br>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="" class="btn btn-success btn-sm "><spring:message
                                                    code="userOrder.canceled.button"/></a><br>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <br/>
            </c:forEach>
            </tbody>
        </table>

    </div>

    <div class="modal fade" id="removeUserOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message
                            code="close"/> </span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="userOrder.remove.form.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="userOrder.remove.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-danger removeUserOrderButton"><spring:message
                            code="userOrder.remove.button"/></a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="viewedUserOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message
                            code="close"/> </span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="userOrder.viewed.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="userOrder.viewed.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-success viewedUserOrderButton"><spring:message
                            code="userOrder.viewed.button"/></a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="canceledUserOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message
                            code="close"/> </span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="userOrder.canceled.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="userOrder.canceled.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-success canceledUserOrderButton"><spring:message
                            code="userOrder.canceled.button"/></a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="deliveredUserOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message
                            code="close"/> </span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="userOrder.delivered.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="userOrder.delivered.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-success deliveredUserOrderButton"><spring:message
                            code="userOrder.delivered.button"/></a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="doneUserOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message
                            code="close"/> </span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="userOrder.done.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="userOrder.done.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-success doneUserOrderButton"><spring:message
                            code="userOrder.done.button"/></a>
                </div>
            </div>
        </div>
    </div>
</security:authorize>