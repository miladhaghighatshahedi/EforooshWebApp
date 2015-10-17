<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<script type="application/javascript">
    $(document).ready(function () {
        $(".registerCustomerForm").validate(
                {
                    rules: {
                        register_username: {
                            required: true,
                            minlength: 10,
                            email: true,
                            remote: {
                                url: "<spring:url value='/register/alreadyExistsCustomer.html'/>",
                                type: "get",
                                data: {
                                    username: function () {
                                        return $('#credential.username').val();
                                    }
                                }
                            }

                        },
                        register_password: {
                            required: true,
                            minlength: 10
                        },
                        RETYPE_PASSWORD: {
                            required: true,
                            minlength: 10,
                            equalTo: "#register_password"

                        }
                    },
                    highlight: function (element) {
                        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                    },
                    unhighlight: function (element) {
                        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                    },
                    messages: {
                        register_username: {
                            remote: "Such USER Name Already Exists",
                            required: "USER Name Required"
                        }
                    }
                }
        );
    });
</script>

<div class="container">

    <center>

        <c:if test="${param.success eq true}">
            <div class="alert alert-success"><spring:message code="register.successful.message"/></div>
        </c:if>

    </center>


    <form:form id="registerUserform" commandName="customer" class="form-horizontal registerCustomerForm" role="form" method="POST">
        <div id="registerBox" style="margin-top:50px;"
             class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-login-heading">
                    <div class="panel-title"><spring:message code="register.form.title"/></div>
                </div>
                <div style="padding-top:30px" class="panel-body">
                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>


                    <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                        <form:label for="registr_username" path="credential.username"
                                    cssClass="label label-success"><spring:message
                                code="register.form.username"/></form:label>
                        <form:input id="register_username" path="credential.username" class="form-control"/>
                        <form:errors path="credential.username"/>
                    </div>

                    <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                        <form:label for="register_password" path="credential.password"
                                    cssClass="label label-success"><spring:message
                                code="register.form.password"/></form:label>
                        <form:password id="register_password" path="credential.password" class="form-control"/>
                        <form:errors path="credential.password"/>
                    </div>

                    <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                        <form:label for="RETYPE_PASSWORD" path="" cssClass="label label-success"><spring:message
                                code="register.form.rePassword"/></form:label>
                        <input type="password" class="form-control" id="RETYPE_PASSWORD"/>
                    </div>


                    <div style="margin-top:10px" class="form-group">
                        <div class="col-sm-12 controls">
                            <input id="btn_register" type="submit" class="btn btn-success"
                                   style="float: <spring:message code="direction2"/>;"
                                   value="<spring:message code="register.form.button"/>">
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </form:form>
</div>