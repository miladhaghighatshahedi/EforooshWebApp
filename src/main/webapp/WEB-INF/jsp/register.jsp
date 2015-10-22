<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<script type="application/javascript">
        $(document).ready(function () {
            $('#registerCustomerForm').validate({
                rules:{
                    registerusername: {
                        required: true,
                        minlength: 10,
                        email: true
                    },
                    registerpassword: {
                        required: true,
                        minlength: 10
                    },
                    confirm_password: {
                        required: true,
                        minlenght: 10,
                        equalTo: "#registerpassword"
                    }
                },highlight: function(element) {
                    $(element).closest('.form-group').addClass('has-error');
                },
                unhighlight: function(element) {
                    $(element).closest('.form-group').removeClass('has-error');
                }
            });
        });
    </script>

<div class="container">

    <center>
        <c:if test="${param.success eq true}">
            <div class="alert alert-success"><spring:message code="register.successful.message"/></div>
        </c:if>
    </center>




        <button type="submit" class="btn btn-primary">Submit</button>


    <form:form id="registerCustomerform" commandName="customer" class="form-horizontal"  method="POST">

        <div id="registerBox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-login-heading">
                    <div class="panel-title"><spring:message code="register.form.title"/></div>
                </div>
                <div style="padding-top:30px" class="panel-body">

                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12">

                    </div>


                    <div class="form-group">
                        <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                            <form:label for="registerusername" path="credential.username" cssClass="label label-success">
                                <spring:message code="register.form.username"/>
                            </form:label>
                            <form:input id="registerusername" path="credential.username" class="form-control" required="true"/>

                        </div>
                    </div>

                    <div class="form-group">
                    <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                        <form:label for="registerpassword" path="credential.password" cssClass="label label-success">
                            <spring:message code="register.form.password"/>
                        </form:label>
                        <form:password id="registerpassword" path="credential.password" class="form-control" required="true"/>

                    </div>
                    </div>

                    <div class="form-group">
                    <div style="margin-bottom: 25px;width: 100%;" class="input-group">
                        <form:label for="confirm_password" path="" cssClass="label label-success">
                            <spring:message code="register.form.rePassword"/>
                        </form:label>
                        <input type="password" class="form-control" id="confirm_password" required="true"/>
                    </div>

                    <div style="margin-top:10px" class="form-group">
                        <div class="col-sm-12 controls">
                            <input id="btn_register" type="submit" class="btn btn-success" style="float: <spring:message code="direction2"/>;" value="<spring:message code="register.form.button"/>">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form:form>


</div>

