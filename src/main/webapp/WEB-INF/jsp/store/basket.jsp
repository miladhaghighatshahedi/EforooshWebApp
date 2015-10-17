<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<script type="text/javascript">

    $(document).ready(function () {
        remove();
    });

    function remove() {
        $(".triggerRemoveBasketItemButton").click(function (e) {
            e.preventDefault();
            $("#removeBasketItemModal .removeBasketItemButton").attr("href", $(this).attr("href"));
            $("#removeBasketItemModal").modal();
        });
    }
</script>

<div class="container">

    <jsp:include page="../../templates/layout/store/storeMenu.jsp"/>

    <c:choose>
        <c:when test="${empty basket.items}">
            <div class="alert alert-waning2">
                <spring:message code="order.empty.message"/>
            </div>
        </c:when>

        <c:otherwise>
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th><spring:message code="basket.item.name"/></th>
                    <th><spring:message code="basket.item.quantity"/></th>
                    <th><spring:message code="basket.item.unitPrice"/></th>
                    <th><spring:message code="basket.item.orderedPrice"/></th>
                    <th><spring:message code="basket.item.remove"/></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${basket.items}" var="orderedItem">
                    <tr>
                        <td><c:out value="${orderedItem.product.name}"/></td>
                        <td><c:out value="${orderedItem.quantity}"/></td>
                        <td><c:out value="${orderedItem.product.unitPrice}"/></td>
                        <td><c:out value="${orderedItem.quantity * orderedItem.product.unitPrice}"/></td>
                        <td><a href="<spring:url value='basket/remove/${orderedItem.product.objectId}.html'/>"
                               class="btn btn-danger btn-sm triggerRemoveBasketItemButton"><spring:message
                                code="remove"/></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:otherwise>
    </c:choose>


</div>


<div class="modal fade" id="removeBasketItemModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only"><spring:message code="close"/></span></button>
                <h4 class="modal-title" id="myModalLabel">
                    <spring:message code="product.remove.form.title"/>
                </h4>
            </div>
            <div class="modal-body">
                <spring:message code="basket.remove.message"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                        code="close"/></button>
                <a href="" class="btn btn-danger removeBasketItemButton"><spring:message
                        code="basket.remove.button"/></a>
            </div>
        </div>
    </div>
</div>