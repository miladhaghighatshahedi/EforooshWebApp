<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<script type="text/javascript">
    $(document).ready(function () {
        remove();
        disable();
        enable();
    });

    function remove() {
        $(".triggerRemoveUserButton").click(function (e) {
            e.preventDefault();
            $("#removeUserModal .removeUserButton").attr("href", $(this).attr("href"));
            $("#removeUserModal").modal();
        });
    }

    function disable() {
        $(".triggerDisableUserButton").click(function (e) {
            e.preventDefault();
            $("#disableUserModal .disableUserButton").attr("href", $(this).attr("href"));
            $("#disableUserModal").modal();
        });
    }

    function enable() {
        $(".triggerEnableUserButton").click(function (e) {
            e.preventDefault();
            $("#enableUserModal .enableUserButton").attr("href", $(this).attr("href"));
            $("#enableUserModal").modal();
        });
    }
</script>

<security:authorize access="hasRole('ROLE_ADMIN')">
    <div class="container">

        <center>
            <c:if test="${param.removedSuccess eq true}">
                <div class="alert alert-success">
                    <spring:message code="user.remove.successful.message"/>
                </div>
            </c:if>
        </center>

        <center>
            <c:if test="${param.disableSuccess eq true}">
                <div class="alert alert-success">
                    <spring:message code="user.disable.successful.message"/>
                </div>
            </c:if>
        </center>

        <center>
            <c:if test="${param.enableSuccess eq true}">
                <div class="alert alert-success">
                    <spring:message code="user.enable.successful.message"/>
                </div>
            </c:if>
        </center>

        <h1><span class="label label-success"><spring:message code="user.users"/></span></h1>


        <br>

        <table class="table table-bordered table-hover table-striped">
            <thead>
            <tr>
                <th><spring:message code="user.userName"/></th>
                <th><spring:message code="user.enabled"/></th>
                <th><spring:message code="user.remove"/></th>
                <th>
                    <c:choose>
                        <c:when test="${user.credential.enabled eq true}">
                            <spring:message code="user.disable"/>
                        </c:when>
                        <c:otherwise>
                            <spring:message code="user.enable"/>
                        </c:otherwise>
                    </c:choose>
                </th>
                <th><spring:message code="user.report"/></th>
                <th><spring:message code="user.detail"/></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.credential.username}"/></td>
                    <td><c:out value="${user.credential.enabled}"/></td>
                    <td><a href="<spring:url value='users/remove/${user.objectId}.html'/>"
                           class="btn btn-danger btn-sm triggerRemoveUserButton"><spring:message
                            code="user.remove.button"/></a></td>
                    <c:choose>
                        <c:when test="${user.credential.enabled eq true}">
                            <td><a href="<spring:url value='users/disable/${user.objectId}.html'/>"
                                   class="btn btn-danger btn-sm triggerDisableUserButton"><spring:message
                                    code="user.disable.button"/></a></td>
                        </c:when>
                        <c:otherwise>
                            <td><a href="<spring:url value='users/enable/${user.objectId}.html'/>"
                                   class="btn btn-success btn-sm triggerEnableUserButton"><spring:message
                                    code="user.enable.button"/></a></td>
                        </c:otherwise>
                    </c:choose>
                    <td><a href="" class="btn btn-warning btn-sm triggerReportUserButton"><spring:message
                            code="user.report.button"/></a></td>
                    <td><a href="<spring:url value='users/${user.objectId}.html'/>"><spring:message
                            code="user.detail"/></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>

    <div class="modal fade" id="removeUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message
                            code="close"/> </span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="user.remove.form.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="user.remove.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-danger removeUserButton"><spring:message code="user.remove.button"/></a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="disableUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message
                            code="close"/> </span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="user.disable.form.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="user.disable.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-danger disableUserButton"><spring:message code="user.disable.button"/></a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="enableUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only"><spring:message
                            code="close"/> </span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <spring:message code="user.enable.form.title"/>
                    </h4>
                </div>
                <div class="modal-body">
                    <spring:message code="user.enable.message"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message
                            code="close"/></button>
                    <a href="" class="btn btn-success enableUserButton"><spring:message code="user.enable.button"/></a>
                </div>
            </div>
        </div>
    </div>

</security:authorize>