<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<script type="text/javascript">
    $(document).ready(function () {
        remove();
    });

    function remove() {
        $(".triggerRemoveProductButton").click(function (e) {
            e.preventDefault();
            $("#removeProductModal .removeProductButton").attr("href", $(this).attr("href"));
            $("#removeProductModal").modal();
        });
    }
</script>

<security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
    <div class="container">

        <h1><span class="label label-info"><c:out value="${product.name}"/></span></h1>

        <h3><span class="label label-success"><c:out value="${product.category.name}"/></span></h3>
        <h4><span class="label label-warning"><c:out value="${product.category.parentCategory.name}"/></span></h4>
        <br>
        <table class="table table-bordered table-hover table-striped">
            <thead>
            <tr>
                <th><spring:message code="product.productDetail.productName"/></th>
                <th><spring:message code="product.productDetail.type"/></th>
                <th><spring:message code="product.productDetail.unitPrice"/></th>
                <th><spring:message code="product.productDetail.discount"/></th>
                <th><spring:message code="product.productDetail.packaging"/></th>
                <th><spring:message code="product.productDetail.quantity"/></th>
                <th><spring:message code="product.productDetail.unitInStock"/></th>
                <th><spring:message code="product.productDetail.productStatus"/></th>
                <th><spring:message code="product.productDetail.description"/></th>
                <th><spring:message code="product.productDetail.condition"/></th>
                <th><spring:message code="product.productDetail.remove"/></th>
                <th><spring:message code="product.productDetail.update"/></th>
                <th><spring:message code="product.productDetail.report"/></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><c:out value="${product.name}"/></td>
                <td><c:out value="${product.type}"/></td>
                <td><c:out value="${product.unitPrice}"/></td>
                <td><c:out value="${product.discount}"/></td>
                <td><c:out value="${product.packaging}"/></td>
                <td><c:out value="${product.quantity}"/></td>
                <td><c:out value="${product.unitInStock}"/></td>
                <td><c:out value="${product.productStatus}"/></td>
                <td><c:out value="${product.description}"/></td>
                <td><c:out value="${product.condition}"/></td>
                <td><a href="<spring:url value='remove/${product.objectId}.html'/>"
                       class="btn btn-danger btn-sm triggerRemoveProductButton"><spring:message
                        code="product.productDetail.remove.Button"/></a></td>
                <td><a href="<spring:url value='update/${product.objectId}.html'/>"
                       class="btn btn-success btn-sm triggerUpdateProductButton"><spring:message
                        code="product.productDetail.update.Button"/></a></td>
                <td style="width: 9%;">
                    <div class="btn-group">
                        <button type="button" class="btn btn-warning btn-sm"><spring:message
                                code="product.productDetail.report.Button"/></button>
                        <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="<spring:url value='pdf/productReport/${product.objectId}.pdf'/>"><spring:message
                                        code="pdf"/></a></li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="<spring:url value='/product/xls/productReport/${product.objectId}.xls'/>"><spring:message
                                        code="xls"/></a></li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="<spring:url value='/product/html/productReport/${product.objectId}.html'/>"><spring:message
                                        code="html"/></a></li>
                        </ul>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>

    </div>

    <div class="modal fade" id="removeProductModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message code="close"/></span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="product.productDetail.modal.remove.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="product.productDetail.modal.remove.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-danger removeProductButton"><spring:message
                            code="product.productDetail.modal.remove.button"/></a>
                </div>
            </div>
        </div>
    </div>

</security:authorize>