<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<div class="container">

    <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel  panel-info">

            <div class="panel-login-heading">
                <div class="panel-title"><spring:message code="login.form.title"/></div>
            </div>

            <div style="padding-top:30px" class="panel-body">
                <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                <form id="loginform" class="form-horizontal" role="form" action="/j_spring_security_check"
                      method="POST">

                    <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                        <label for="login-username" class="label label-success"><spring:message
                                code="login.form.username"/></label>
                        <input id="login-username" type="text" class="form-control" name="j_username" required="true"
                               placeholder="<spring:message code="login.form.username.placeholder"/>">
                    </div>

                    <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                        <label for="login-password" class="label label-success"><spring:message
                                code="login.form.password"/></label>
                        <input id="login-password" type="password" class="form-control" name="j_password"
                               required="true" placeholder="<spring:message code="login.form.password.placeholder"/>">
                    </div>

                    <div style="margin-top:10px" class="form-group">
                        <div class="col-sm-12 controls">
                            <button id="btn-login" type="submit" class="btn btn-success"
                                    style="float: <spring:message code="direction2"/>;"><spring:message
                                    code="login.form.button"/></button>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12 control">
                            <div style="padding-top:5px; font-size:85%">
                                <spring:message code="login.form.message.forgot"/>
                                <a href="<spring:url value="/passwordRecovery.html"/>">
                                    <spring:message code="login.form.message.forgot.click"/>
                                </a>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>

</div>