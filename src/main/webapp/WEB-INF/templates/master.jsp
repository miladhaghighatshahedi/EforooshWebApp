<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="tilesx" uri="http://tiles.apache.org/tags-tiles-extras" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
    <link href="favicon.ico" rel="shortcut" type="image/x-icon"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--
    <script type="text/javascript">
       var contextPath = "<%= request.getContextPath()%>";
    </script>



    <c:set var="locale" value="${pageContext.response.locale}"/>

    <c:if test="${locale.toString().equals('en')}">
        <script src="<%=request.getContextPath() %>/resources/js/custom-validation.js"></script>
    </c:if>

    <c:if test="${locale.toString().equals('fa')}">
        <script src="<%=request.getContextPath() %>/resources/js/custom-validation_fa.js"></script>
    </c:if>
    -->

    <link type="text/css" rel="stylesheet" href="../../resources/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="../../resources/css/bootstrap-theme.css">
    <link type="text/css" rel="stylesheet" href="../../resources/css/bootstrap.icon-large.css">
    <link type="text/css" rel="stylesheet" href="../../resources/css/bootstrap.icon-large.min.css">
    <link type="text/css" rel="stylesheet" href="../../resources/css/navbar-fixed-top.css">
    <link type="text/css" rel="stylesheet" href="../../resources/css/docs.min.css">
    <link type="text/css" rel="stylesheet" href="../../resources/css/custom.css">
    <link type="text/css" rel="stylesheet" href="../../resources/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="../../resources/css/bootstrap-theme.min.css">
    <script src="../../resources/js/jquery.min.js"></script>
    <script src="../../resources/js/bootstrap.min.js"></script>

    <title>
        <tiles:getAsString name="title"/>
    </title>

</head>
<body style="direction: <spring:message code="font.direction"/>">

<tilesx:useAttribute name="current"/>

<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container-fluid">

        <div class="navbar-header navbar-right">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" style="margin-left: 30px;" href="<spring:url value="/"/>">
                <spring:message code="common.title"/>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="myNavbar" style="height: 0.800000011920929px;">
            <ul class="nav navbar-nav navbar-right">

                <li class="${current == 'index' ? 'active' : ''} navbar-right">
                    <a href="<spring:url value="/"/>">
                        <spring:message code="common.home"/>
                    </a>
                </li>

                <security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
                    <li class="dropdown navbar-right">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <spring:message code="common.control"/>
                            <span></span></span><span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu">

                            <security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
                                <li class="${current ==  'admin' ? 'active' : ''} ">
                                    <a href="<spring:url value="/product/product.html"/>">
                                        <spring:message code="common.product"/>
                                    </a>
                                </li>
                            </security:authorize>

                            <security:authorize access="hasRole('ROLE_ADMIN')">
                                <li class="${current ==  'admin' ? 'active' : ''} ">
                                    <a href="<spring:url value="/category.html"/>">
                                        <spring:message code="common.control.category"/>
                                    </a>
                                </li>
                            </security:authorize>

                            <security:authorize access="hasRole('ROLE_ADMIN')">
                                <li class="${current ==  'admin' ? 'active' : ''} ">
                                    <a href="<spring:url value="/admin/registerAuthority.html"/>">
                                        <spring:message code="admin.register.form.title"/>
                                    </a>
                                </li>
                            </security:authorize>

                            <security:authorize access="hasRole('ROLE_ADMIN')">
                                <li class="${current ==  'admin' ? 'active' : ''} ">
                                    <a href="<spring:url value="/admin/users.html"/>">
                                        <spring:message code="admin.control.users"/>
                                    </a>
                                </li>
                            </security:authorize>

                            <security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
                                <li class="${current ==  'admin' ? 'active' : ''} ">
                                    <a href="<spring:url value="/admin/orders.html"/>">
                                        <spring:message code="common.orders"/>
                                    </a>
                                </li>
                            </security:authorize>
                            <!--
                                <security:authorize access="hasRole('ROLE_ADMIN')">
                                    <li  class="${current ==  'admin' ? 'active' : ''} " >
                                        <a href="<spring:url value="/admin/registerAuthority.html"/>">
                                            <spring:message code="admin.register.form.title"/>
                                        </a>
                                    </li>
                                </security:authorize>

                                <security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
                                    <li  class="${current ==  'addProduct' ? 'active' : ''} " >
                                        <a href="<spring:url value="/product/addProduct.html"/>">
                                            <spring:message code="product.add.form.title"/>
                                        </a>
                                    </li>
                                </security:authorize>

                                <security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
                                    <li  class="${current ==  'addCategory' ? 'active' : ''} " >
                                        <a href="<spring:url value="/category/addCategory.html"/>">
                                            <spring:message code="category.add.form.title"/>
                                        </a>
                                    </li>
                                </security:authorize>
                                -->
                        </ul>
                    </li>
                </security:authorize>

                <security:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="${current ==  'admin' ? 'active' : ''} navbar-right">
                        <a href="<spring:url value="/admin/admin.html"/>">
                            <spring:message code="common.administration"/>
                        </a>
                    </li>
                </security:authorize>

                <security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_USER'})">
                    <li class="${current ==  'user' ? 'active' : ''} navbar-right">
                        <a href="<spring:url value="/user/user.html"/>">
                            <spring:message code="common.user"/>
                        </a>
                    </li>
                </security:authorize>

                <security:authorize access="hasAnyRole({'ROLE_ADMIN','ROLE_CLIENT'})">
                    <li class="${current ==  'client' ? 'active' : ''}">
                        <a href="<spring:url value="/client.html"/>">
                            <spring:message code="common.clients"/>
                        </a>
                    </li>
                </security:authorize>


                <li class="${current ==  'template' ? 'active' : ''}">
                    <a href="<spring:url value="/template.html"/>">
                        template
                    </a>
                </li>

            </ul>

            <ul class="nav navbar-nav navbar-left">
                <security:authorize access="! isAuthenticated()">
                    <li class="${current == 'login' ? 'active' : ''}">
                        <a href="<spring:url value="/login.html"/>">
                            <span class="glyphicon glyphicon-log-in"></span>
                            <spring:message code="common.login"/>
                        </a>
                    </li>
                </security:authorize>

                <security:authorize access="! isAuthenticated()">
                    <li class="${current == 'register' ? 'active' : ''}">
                        <a href="<spring:url value="/register.html"/>">
                            <span class="glyphicon glyphicon-user"></span>
                            <spring:message code="common.register"/>
                        </a>
                    </li>
                </security:authorize>

                <security:authorize access="isAuthenticated()">
                    <li>
                        <a href="<spring:url value="/logout"/>">
                            <span class="glyphicon glyphicon-log-out"></span>
                            <spring:message code="common.logout"/>
                        </a>
                    </li>
                </security:authorize>
            </ul>

        </div>
    </div>
</nav>

<center>
    <nav class="navbar  navbar-inverse" style="width: 20%;" role="navigation">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="myNavbar" style="height: 0.800000011920929px;margin-right: 0.6%;">
                <ul class="nav navbar-nav navbar-right">

                    <li class="${current ==  'store' ? 'active' : ''}">
                        <a href="<spring:url value="/store.html"/>">
                            <spring:message code="common.store"/>
                        </a>
                    </li>

                    <li class="${current ==  'basket' ? 'active' : ''}">
                        <a href="<spring:url value="/basket.html"/>">
                            <spring:message code="common.basket"/>
                        </a>
                    </li>

                    <li class="${current ==  'order' ? 'active' : ''}">
                        <a href="<spring:url value="/order.html"/>">
                            <spring:message code="common.order"/>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</center>

<tiles:insertAttribute name="banner"/>
<tiles:insertAttribute name="notification"/>
<tiles:insertAttribute name="topMenu"/>
<tiles:insertAttribute name="body"/>

</body>