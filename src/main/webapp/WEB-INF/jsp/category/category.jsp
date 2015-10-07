<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<c:url var="findCategoriesURL" value="category/categories.json"/>
<c:url var="findSubCategoriesURL" value="category/subcategories.json"/>
<script type="text/javascript">
    $(document).ready(function () {
        $('#parentCategoryDivCategory').hide();
        $('#childCategoryDivCategory').hide();
        getCategories();
        getChildCategories();
        remove();
    });

    function getCategories() {
        $.getJSON('${findCategoriesURL}', {ajax: 'true'}, function (data) {

            var html = '<option value=""></option>';
            var len = data.length;
            if (len == 0) {
                $('#parentCategoryDivCategory').remove();
                $('#childCategoryDivCategory').remove();
            }
            else {
                $('#parentCategoryDivCategory').show();
            }
            for (var i = 0; i < len; i++) {
                html += '<option value="' + data[i].objectId + '">' + data[i].name + '</option>';
            }
            html += '</option>';

            $('#parentCategoryCategory').html(html);
        });
    }

    function getChildCategories() {
        $('#parentCategoryCategory').change(function () {

            $.getJSON('${findSubCategoriesURL}', {parentId: $(this).val(), ajax: 'true'}, function (data) {

                var html = '<option value=""></option>';
                var len = data.length;
                if (len == 0) {
                    $('#childCategoryDivCategory').remove();
                }
                else {
                    $('#childCategoryDivCategory').add();
                    $('#childCategoryDivCategory').show();
                }
                for (var i = 0; i < len; i++) {
                    html += '<option value="' + data[i].objectId + '">' + data[i].name + '</option>';
                }
                html += '</option>';
                $('#childCategoryCategory').html(html);
            });
        });
    }

    function remove() {
        $(".triggerRemoveCategoryButton").click(function (e) {
            e.preventDefault();
            $("#removeCategoryModal .removeCategoryButton").attr("href", $(this).attr("href"));
            $("#removeCategoryModal").modal();
        });
    }
</script>

<security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
    <div class="container">

        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addNewParentCategoryModalCategory">
            <spring:message code="category.add.parent.button"/>
        </button>

        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addNewCategoryModalCategory">
            <spring:message code="category.add.child.button"/>
        </button>

        <div class="btn-group">
            <button type="button" class="btn btn-warning btn-sm"><spring:message
                    code="category.report.button"/></button>
            <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                <span class="caret"></span>
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="<spring:url value='category/pdf/categoriesReport.pdf'/>"><spring:message code="pdf"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="<spring:url value='category/xls/categoriesReport.xls'/>"><spring:message code="xls"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="<spring:url value='category/xls/categoriesReport.html'/>"><spring:message code="html"/></a>
                </li>
            </ul>
        </div>
        <br><br>

        <h1><span class="label label-success"><spring:message code="category.categories"/></span></h1>

        <table class="table table-bordered table-hover table-striped">
            <thead>
            <tr>
                <th><spring:message code="category.name"/></th>
                <th><spring:message code="category.description"/></th>
                <th><spring:message code="category.options"/></th>
                <th><spring:message code="category.details"/></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${categories}" var="category">
                <tr>
                    <td><c:out value="${category.name}"/></td>
                    <td><c:out value="${category.description}"/></td>
                    <td>
                        <a href="<spring:url value='category/remove/${category.objectId}.html'/>"
                           class="btn btn-danger btn-sm triggerRemoveCategoryButton"><spring:message
                                code="category.remove.button"/></a>
                        <button type="button" class="btn btn-success btn-sm" data-toggle="modal"
                                data-target="#updateCategoryModal"><spring:message
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
                                    <a href="<spring:url value='category/pdf/categoryReport/${category.objectId}.pdf'/>"><spring:message
                                            code="pdf"/></a></li>
                                <li role="separator" class="divider"></li>
                                <li>
                                    <a href="<spring:url value='category/xls/categoryReport/${category.objectId}.xls'/>"><spring:message
                                            code="xls"/></a></li>
                                <li role="separator" class="divider"></li>
                                <li>
                                    <a href="<spring:url value='category/html/categoryReport/${category.objectId}.html'/>"><spring:message
                                            code="html"/></a></li>
                            </ul>
                        </div>
                    </td>
                    <td><a href="<spring:url value='category/${category.name}/category.html'/>"><spring:message
                            code="category.detail"/></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>


    <!--Category Modal-->
    <form:form id="newCategoryFormCategory" commandName="category" class="form-horizontal" role="form" method="POST">
        <div class="modal fade" id="addNewCategoryModalCategory" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                class="sr-only"><spring:message code="close"/></span></button>
                        <h4 class="modal-title">
                            <spring:message code="category.add.form.title"/>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div id="parentCategoryDivCategory" style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label path="parentCategory.objectId" cssClass="label label-success"><spring:message
                                    code="category.modal.category"/></form:label>
                            <br/>
                            <form:select id="parentCategoryCategory" path="parentCategory.objectId"
                                         class="form-control"></form:select>
                        </div>
                        <div id="childCategoryDivCategory" style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label path="parentCategory.objectId" cssClass="label label-success"><spring:message
                                    code="category.modal.subCategory"/></form:label>
                            <br/>
                            <form:select id="childCategoryCategory" path="parentCategory.objectId"
                                         class="form-control"></form:select>
                        </div>
                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="category-name" path="name" cssClass="label label-success"><spring:message
                                    code="category.modal.categoryName"/></form:label>
                            <form:input id="category-name" path="name" class="form-control" required="true"/>
                        </div>
                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="category-description" path="description"
                                        cssClass="label label-success"><spring:message
                                    code="category.modal.categoryDescription"/></form:label>
                            <form:textarea id="category-description" path="description" class="form-control"
                                           required="true" rows="3"/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                                code="category.modal.cancel.button"/></button>
                        <input id="btn-register-category" type="submit" class="btn btn-primary"
                               value="<spring:message code="category.modal.add.button"/>"/>
                    </div>
                </div>
            </div>
        </div>
    </form:form>

    <form:form id="newParentCategoryFormCategory" commandName="category" class="form-horizontal" role="form"
               method="POST">
        <div class="modal fade" id="addNewParentCategoryModalCategory" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                class="sr-only"><spring:message code="close"/></span></button>
                        <h4 class="modal-title">
                            <spring:message code="category.add.form.title"/>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="category-name" path="name" cssClass="label label-success"><spring:message
                                    code="category.modal.categoryName"/></form:label>
                            <form:input id="category-name" path="name" class="form-control" required="true"/>
                        </div>
                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="category-description" path="description"
                                        cssClass="label label-success"><spring:message
                                    code="category.modal.categoryDescription"/></form:label>
                            <form:textarea id="category-description" path="description" class="form-control"
                                           required="true" rows="3"/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                                code="category.modal.cancel.button"/></button>
                        <input id="btn-register-category" type="submit" class="btn btn-primary"
                               value="<spring:message code="category.modal.add.button"/>"/>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form:form>

    <div class="modal fade" id="removeCategoryModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message code="close"/></span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="category.remove.form.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="category.modal.remove.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-danger removeCategoryButton"><spring:message
                            code="category.remove.button"/></a>
                </div>
            </div>
        </div>
    </div>

    <form:form id="updateCategoryForm" commandName="category" class="form-horizontal" role="form" method="POST">
        <div class="modal fade" id="updateCategoryModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                class="sr-only"><spring:message code="close"/></span></button>
                        <h4 class="modal-title">
                            <spring:message code="category.update.form.title"/>
                        </h4>
                    </div>
                    <div class="modal-body">

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="category-name" path="name" cssClass="label label-success"><spring:message
                                    code="category.modal.categoryName"/></form:label>
                            <form:input id="category-name" path="name" value="${category.name}" class="form-control"
                                        required="true"/>
                        </div>

                        <div style="margin-bottom: 5px;width: 100%;" class="input-group">
                            <form:label for="category-description" path="description"
                                        cssClass="label label-success"><spring:message
                                    code="category.modal.categoryDescription"/></form:label>
                            <form:textarea id="category-description" path="description" value="${category.description}"
                                           class="form-control" required="true" rows="3"/>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                                code="category.modal.cancel.button"/></button>
                        <input id="btn-update-category" type="submit" class="btn btn-primary"
                               value="<spring:message code="category.modal.update.button"/>"/>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form:form>


</security:authorize>