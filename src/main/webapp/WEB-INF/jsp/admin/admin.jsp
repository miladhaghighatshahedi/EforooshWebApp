<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp" %>

<security:authorize access="hasRole('ROLE_ADMIN')">
        <div class="container">


                <br/><br/><br/><br/>

            <center>
                    <div class="panel panel-info">
                        <div class="panel-body">
                            <center>
                            <table>
                            <tr>
                                <td>
                                    <a href="<spring:url value="/product/product.html"/>" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>
                                        <spring:message code="common.product"/>
                                    </a>
                                    <a href="<spring:url value="/category.html"/>" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>
                                        <spring:message code="common.control.category"/>
                                    </a>
                                    <a href="<spring:url value="/admin/orders.html"/>" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-file"></span> <br/>
                                        <spring:message code="common.orders"/>
                                    </a>
                                    <a href="<spring:url value="/admin/registerAuthority.html"/>" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-plus-sign"></span> <br/>
                                        <spring:message code="admin.register.form.title"/>
                                    </a>
                                    <a href="<spring:url value="/admin/users.html"/>" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br/>
                                        <spring:message code="admin.control.users"/>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>commnet</a>
                                    <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-picture"></span> <br/>Photos</a>
                                    <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-picture"></span> <br/>Photos</a>
                                    <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-picture"></span> <br/>Photos</a>
                                    <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-tag"></span> <br/>Tags</a>
                                </td>
                            </tr>
                            </table>
                            </center>
                        </div>
                    </div>
            </center>
        </div>
</security:authorize>




