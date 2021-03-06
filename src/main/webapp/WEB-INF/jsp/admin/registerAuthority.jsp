<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<c:url var="findRolesURL" value="/admin/findAllRoles.json"/>
<script type="text/javascript">
    $(document).ready(function () {
        getRoles();
    });

    function getRoles() {
        $.getJSON('${findRolesURL}', {ajax: 'true'}, function (data) {

            var html = '<option value=""></option>';
            var len = data.length;
            for (var i = 0; i < len; i++) {
                html += '<option value="' + data[i].roleName + '">' + data[i].roleName + '</option>';
            }
            html += '</option>';

            $('#roles').html(html);
        });
    }
</script>

<security:authorize access="hasRole('ROLE_ADMIN')">
    <div class="container">
        <center>
            <c:if test="${param.success eq true}">
                <div class="alert alert-success"><spring:message code="register.successful.message"/></div>
            </c:if>
        </center>

        <div id="registerBox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">

                <div class="panel-login-heading">
                    <div class="panel-title"><spring:message code="admin.register.form.title"/></div>
                </div>

                <div style="padding-top:30px" class="panel-body">
                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                    <form:form id="registerUserform" commandName="authority" class="form-horizontal registerAutorityform"  method="POST">
                        <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                            <form:label for="registr_autority_username" path="credential.username" cssClass="label label-success">
                                <spring:message code="admin.register.form.username"/></form:label>
                            <form:input id="register_autority_username" path="credential.username" class="form-control"/>
                            <form:errors path="credential.username"/>
                        </div>

                        <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                            <form:label for="register_autority_password" path="credential.password" cssClass="label label-success">
                                <spring:message code="admin.register.form.password"/></form:label>
                            <form:password id="register_autority_password" path="credential.password" class="form-control"/>
                            <form:errors path="credential.password"/>
                        </div>

                        <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                            <form:label for="RETYPE_autority_PASSWORD" path="" cssClass="label label-success">
                                <spring:message code="admin.register.form.rePassword"/>
                            </form:label>
                            <input type="password" class="form-control" id="RETYPE_autority_PASSWORD"/>
                        </div>


                        <div >
                            <form:label path="roleSet" cssClass="label label-success">
                                <spring:message code="admin.register.form.reRole"/>
                            </form:label>
                            <br/>
                            <form:select multiple="true" id="roless"  path="roleSet" >
                              <form:options items="${roles}" itemLabel="roleName" itemValue="objectId"/>
                            </form:select>
                        </div>

                        <div style="margin-top:10px" class="form-group">
                            <div class="col-sm-12 controls">
                                <input id="btn_autority_register" type="submit" class="btn btn-success" value="<spring:message code="admin.register.form.register.button"/>" style="float: <spring:message code="direction2"/>;" >
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</security:authorize>





