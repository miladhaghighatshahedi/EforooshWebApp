<!--AddNewRoleValidation Starts-->
$(document).ready(function () {
    $(".adminAddNewRoleForm").validate(
        {
            lang: 'fa',
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
                    remote: "این نقش موجود است",
                    required: "نقش نمی تواند خالی باشد"
                }
            }
        }
    );
});
<!--AddNewRoleValidation Ends-->