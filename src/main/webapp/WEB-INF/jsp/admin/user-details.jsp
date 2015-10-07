<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<script type="text/javascript">
    $(document).ready(function () {
        disable();
        enable();
    });

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
        <h1><span class="label label-success"><c:out value="${user.credential.username}"/></span></h1>
        <br>

        <table class="table table-bordered table-hover table-striped">
            <thead>
            <tr>
                <th><spring:message code="userDetails.userName"/></th>
                <th><spring:message code="userDetails.enabled"/></th>
                <th><spring:message code="userDetails.lastUpdate"/></th>
                <th colspan="3"><spring:message code="userDetails.roleName"/></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><c:out value="${user.credential.username}"/></td>
                <td><c:out value="${user.credential.enabled}"/></td>
                <td><c:out value="${user.credential.lastUpdate}"/></td>

                <c:forEach items="${user.roleSet}" var="role">
                    <td><c:out value="${role.roleName}"/></td>
                </c:forEach>
            </tr>
            <tr>
                <td colspan="5" align="center">
                    <table>
                        <tr>
                            <c:choose>
                                <c:when test="${user.credential.enabled eq true}">
                                    <td><a href="<spring:url value='disable/${user.objectId}.html'/>"
                                           class="btn btn-danger btn-sm triggerDisableUserButton"><spring:message
                                            code="user.disable.button"/></a></td>
                                </c:when>
                                <c:otherwise>
                                    <td><a href="<spring:url value='enable/${user.objectId}.html'/>"
                                           class="btn btn-success btn-sm triggerEnableUserButton"><spring:message
                                            code="user.enable.button"/></a></td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>

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

