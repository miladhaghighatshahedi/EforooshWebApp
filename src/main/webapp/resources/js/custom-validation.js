<!--AddNewRoleValidation Starts-->
$(document).ready(function () {
    $(".adminAddNewRoleForm").validate(
        {
            lang: 'en',
            rules: {
                roleName: {
                    required: true,
                    minlength: 3,
                    remote: {
                        url: contextPath + "administration/alreadyExistsRole.html",
                        type: "get",
                        data: {
                            roleName: function () {
                                return $("#roleName").val();
                            }
                        }
                    }
                }
            },
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            messages: {
                roleName: {
                    remote: "Such roleName Already Exists",
                    required: "Role Name Required"
                }
            }
        }
    );


    $(".registerCustomerForm").validate(
        {
            lang: 'en',
            rules: {
                register_username: {
                    required: true,
                    minlength: 10,
                    email: true,
                    remote: {
                        url: "<spring:url value='register/alreadyExistsCustomer.html'/>",
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
<!--AddNewRoleValidation Ends-->