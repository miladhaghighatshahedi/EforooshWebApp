<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<c:url var="findCategoriesURL" value="product/categories.json"/>
<c:url var="findSubCategoriesURL" value="product/subcategories.json"/>

<script type="text/javascript">
    $(document).ready(function () {
        hide();
        getCategories();
        getChildCategories();
        remove();
    });

    function getCategories() {
        $.getJSON('${findCategoriesURL}', {ajax: 'true'}, function (data) {

            var html = '<option value=""></option>';
            var len = data.length;
            if (len == 0) {
                $('#parentCategoryDiv1').remove();
                $('#childCategoryDiv1').remove();
                $('#parentCategoryInfo').show();
                $('#childCategoryInfo').show();
                $('#btn_register').remove();
            }
            else {
                $('#parentCategoryDiv1').show();
                $('#parentCategoryInfo').hide();
                $('#childCategoryInfo').hide();
                $('#btn_register').show();

            }
            for (var i = 0; i < len; i++) {
                html += '<option value="' + data[i].objectId + '">' + data[i].name + '</option>';
            }
            html += '</option>';

            $('#parentCategory').html(html);
        });
    }

    function getChildCategories() {
        $('#parentCategory').change(function () {

            $.getJSON('${findSubCategoriesURL}', {parentId: $(this).val(), ajax: 'true'}, function (data) {

                var html = '<option value=""></option>';
                var len = data.length;
                if (len == 0) {
                    $('#childCategoryDiv1').hide();
                    $('#childCategoryInfo').show();
                    $('#btn_register').remove();
                }
                else {
                    $('#childCategoryDiv1').show();
                    $('#childCategoryInfo').hide();
                    $('#btn_register').show();
                }
                for (var i = 0; i < len; i++) {
                    html += '<option value="' + data[i].objectId + '">' + data[i].name + '</option>';
                }
                html += '</option>';
                $('#childCategory').html(html);
            });
        });
    }

    function onSelectChange() {
        var selected = $("#childCategory option:selected");
        var output = "";
        if (selected.val() != 0) {
            $('#parentCategoryDiv').remove();
        }
        else if (selected.val() == 0) {
            $('#parentCategoryDiv1').add();
        }

    }

    function hide() {
        $('#parentCategoryDiv1').hide();
        $('#childCategoryDiv1').hide();
        $('#childCategoryInfo').hide();
        $('#parentCategoryInfo').hide();
    }

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

        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addNewProductModal">
            <spring:message code="product.add.button"/>
        </button>

        <div class="btn-group">
            <button type="button" class="btn btn-warning btn-sm">Report</button>
            <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                <span class="caret"></span>
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="<spring:url value='/product/pdf/productsReport.pdf'/>"><spring:message code="pdf"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="<spring:url value='/product/xls/productsReport.xls'/>"><spring:message code="xls"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="<spring:url value='/product/html/productsReport.html'/>"><spring:message code="html"/></a>
                </li>
            </ul>
        </div>

        <br/><br/>

        <table class="table table-bordered table-hover table-striped">
            <thead>
            <tr>
                <th><spring:message code="product.name"/></th>
                <th><spring:message code="product.description"/></th>
                <th><spring:message code="product.parentCategory"/></th>
                <th><spring:message code="product.subCategory"/></th>
                <th><spring:message code="product.options"/></th>
                <th><spring:message code="product.details"/></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><c:out value="${product.name}"/></td>
                    <td><c:out value="${product.description}"/></td>
                    <th><c:out value="${product.category.parentCategory.name}"/></th>
                    <th><c:out value="${product.category.name}"/></th>
                    <td>
                        <a href="<spring:url value='product/remove/${product.objectId}.html'/>"
                           class="btn btn-danger btn-sm triggerRemoveProductButton"><spring:message
                                code="category.remove.button"/></a>
                        <button type="button" class="btn btn-success btn-sm" data-toggle="modal"
                                data-target="#updateProductModal"><spring:message
                                code="category.update.button"/></button>
                        <div class="btn-group">
                            <button type="button" class="btn btn-warning btn-sm"><spring:message
                                    code="category.report.button"/></button>
                            <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="<spring:url value='/product/pdf/productReport/${product.objectId}.pdf'/>"><spring:message
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
                    <td><a href="<spring:url value='product/${product.objectId}.html'/>"><spring:message
                            code="product.detail"/></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>
    <!--Category Modal-->
    <form:form id="addNewProductform" commandName="product" class="form-horizontal" role="form" method="POST"
               enctype="multipart/form-data">
        <div class="modal fade" id="addNewProductModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                class="sr-only"><spring:message code="close"/></span></button>
                        <h4 class="modal-title">
                            <spring:message code="product.add.form.button"/>
                        </h4>
                    </div>
                    <div class="modal-body">

                        <div id="parentCategoryDiv1" style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label path="" cssClass="label label-success"><spring:message
                                    code="product.modal.category"/></form:label>
                            <br/>
                            <form:select id="parentCategory" path="" class="form-control">
                            </form:select>
                        </div>

                        <div id="parentCategoryInfo" class="alert-waning2"><spring:message
                                code="product.modal.noCategory.message"/></div>
                        <div id="childCategoryInfo" class="alert-waning2"><spring:message
                                code="product.modal.noSubCategory.message"/></div>

                        <div id="childCategoryDiv1" style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label path="category.objectId" cssClass="label label-success"><spring:message
                                    code="product.modal.subCategory"/></form:label>
                            <br/>
                            <form:select id="childCategory" path="category.objectId" class="form-control">
                            </form:select>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-name" path="name" cssClass="label label-success"><spring:message
                                    code="product.modal.name"/></form:label>
                            <form:input id="product-name" path="name" class="form-control"/>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-name" path="images" cssClass="label label-success"><spring:message
                                    code="product.modal.image"/></form:label>
                            <input type="file" name="image"/>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-type" path="name" cssClass="label label-success"><spring:message
                                    code="product.modal.type"/></form:label>
                            <form:input id="product-type" path="type" class="form-control"/>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-unitPrice" path="unitPrice"
                                        cssClass="label label-success"><spring:message code="product.modal.unitPrice"/></form:label>
                            <form:input id="product-unitPrice" path="unitPrice" class="form-control"/>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-discount" path="discount"
                                        cssClass="label label-success"><spring:message
                                    code="product.modal.discount"/></form:label>
                            <form:input id="product-discount" path="discount" class="form-control"/>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-packaging" path="packaging"
                                        cssClass="label label-success"><spring:message code="product.modal.packaging"/></form:label>
                            <br/>
                            <form:select path="packaging" id="product-packaging" class="form-control">
                                <form:option value="NONE" label="--SELECT--"/>
                                <form:options items="${packagings}"/>
                            </form:select>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-quantity" path="quantity"
                                        cssClass="label label-success"><spring:message
                                    code="product.modal.quantity"/></form:label>
                            <form:input id="product-quantity" path="quantity" class="form-control"/>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-unitInStock" path="unitInStock"
                                        cssClass="label label-success"><spring:message
                                    code="product.modal.unitInStock"/></form:label>
                            <form:input id="product-unitInStock" path="unitInStock" class="form-control"/>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-productStatus" path="productStatus" cssClass="label label-success"><spring:message
                                    code="product.modal.status"/></form:label>
                            <form:input id="product-productStatus" path="productStatus" class="form-control"/>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-condition" path="condition"
                                        cssClass="label label-success"><spring:message code="product.modal.condition"/></form:label>
                            <br/>
                            <form:select path="condition" id="product-condition" class="form-control">
                                <form:option value="NONE" label="--SELECT--"/>
                                <form:options items="${conditions}"/>
                            </form:select>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="product-description" path="description"
                                        cssClass="label label-success"><spring:message
                                    code="product.modal.description"/></form:label>
                            <form:textarea id="product-description" path="description" class="form-control" rows="3"/>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                                code="product.modal.cancel.button"/></button>
                        <input id="btn_register" type="submit" class="btn btn-primary"
                               value="<spring:message code="product.modal.add.button"/>">
                    </div>
                </div>
            </div>
        </div>
    </form:form>

    <div class="modal fade" id="removeProductModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message
                            code="close"/> </span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="product.remove.form.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="product.modal.remove.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-danger removeProductButton"><spring:message
                            code="product.remove.button"/></a>
                </div>
            </div>
        </div>
    </div>


</security:authorize>



