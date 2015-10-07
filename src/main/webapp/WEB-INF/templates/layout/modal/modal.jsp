<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>


<script type="text/javascript">
    function adminRemoveRoleFormatter(value, row, index) {
        return [
            '<a href="<spring:url value="${context}administration/${row}"/>" id="remove"  class="btn btn-danger adminRemoveRoleTrigger"  data-toggle="modal" data-target=".adminRemoveRoleModal"><spring:message code="remove"/> </a>'
        ].join('');
    }
    function adminEditRoleFormatter(value, row, index) {
        return [
            '<button id="edit"    class="btn btn-success" data-toggle="modal" data-target=".adminEditRoleModal"><spring:message code="edit"/></button>'
        ].join('');
    }
    function adminAssignRoleFormatter(value, row, index) {
        return [
            '<button id="give"    class="btn btn-success" data-toggle="modal" data-target=".adminAssignRoleModal"><spring:message code="assign"/></button>'
        ].join('');
    }

    $(".adminRemoveRoleTrigger").click(function (e) {
        e.preventDefault();
        $("#adminRemoveRoleModal .adminRemoveRoleButton").attr("href", $(this).attr("href"));
        $("#adminRemoveRoleModal").modal();
    });
</script>

<!-- adminEditRoleModal -->
<div class="modal fade adminEditRoleModal" id="" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only"></span></button>
                <h4 class="modal-title"><spring:message code="administration.panel.setting.role.updateRole"/></h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                        code="close"/></button>
                <button type="button" class="btn btn-success"><spring:message code="edit"/></button>
            </div>
        </div>
    </div>
</div>

<!-- adminRemoveRoleModal -->
<div class="modal fade adminRemoveRoleModal" id="adminRemoveRoleModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title"><spring:message code="administration.panel.setting.role.RemoveRole"/></h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                        code="close"/></button>
                <a type="button" class="btn btn-danger adminRemoveRoleButton"><spring:message code="remove"/></a>
            </div>
        </div>
    </div>
</div>

<div class="modal fade adminAssignRoleModal" id="" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title"><spring:message code="administration.panel.setting.role.assignRole"/></h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                        code="close"/></button>
                <button type="button" class="btn btn-success"><spring:message code="assign"/></button>
            </div>
        </div>
    </div>
</div>

