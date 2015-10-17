<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8" language="java" %>
<%@include file="/WEB-INF/templates/layout/taglibs.jsp"%>

<div id="adminAccordion" class="row">
            <div class="col-sm-3 col-md-2 sidebar " style="<spring:message code="dashboard"/>;">
                <ul id="cssmenu" class="nav nav-sidebar nav-tabs" role="tablist">
                    <ul>
                        <li class="active"><a></a></li>
                        <!-- Tab One-->
                        <li class='active has-sub'><a href='#' class="adminDropDownSettingLink"  role="tab" data-toggle="tab"><span class="<spring:message code="span.margin.right"/>"><spring:message code="administration.dropdown.setting"/> </span></a>
                            <ul>
                                <li class='has-sub'>
                                    <a href='#' class="adminRoleSetting"><span class="<spring:message code="span.margin.right"/>"><spring:message code="administration.dropdown.setting.roleSetting"/>
                                    </a>
                                    <ul>
                                        <li>              <a href="#adminAddRole"     class="adminAddRoleLink"     role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.role.add"/></span></a></li>
                                        <li>              <a href="#adminUpdateRole"  class="adminUpdateRoleLink"  role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.role.update"/></span></a></li>
                                        <li>              <a href="#adminRemoveRole"  class="adminRemoveRoleLink"  role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.role.remove"/></span></a></li>
                                        <li class="last"> <a href="#adminAssignRole"  class="adminAssignRoleLink"  role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.role.assign"/></span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'>
                                    <a href='#' class="adminAdminSetting"><span class="<spring:message code="span.margin.right"/>"><spring:message code="administration.dropdown.setting.adminSetting"/>
                                    </a>
                                    <ul>
                                        <li>              <a href="#adminAddAdmin"    class="adminAddUserAdmin"    role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.admin.add"/></span></a></li>
                                        <li>              <a href="#adminUpdateAdmin" class="adminUpdateUserAdmin" role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.admin.update"/></span></a></li>
                                        <li class="last"> <a href="#adminRemoveAdmin" class="adminRemoveUserAdmin" role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.admin.remove"/></span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'>
                                    <a href='#' class="adminUserSetting"><span class="<spring:message code="span.margin.right"/>"><spring:message code="administration.dropdown.setting.userSetting"/>
                                    </a>
                                    <ul>
                                        <li>              <a href="#adminAddUser"    class="adminAddUserLink"    role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.user.add"/></span></a></li>
                                        <li>              <a href="#adminUpdateUser" class="adminUpdateUserLink" role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.user.update"/></span></a></li>
                                        <li class="last"> <a href="#adminRemoveUser" class="adminRemoveUserLink" role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.user.remove"/></span></a></li>
                                    </ul>
                                </li>
                                <li class='has-sub'>
                                    <a href='#' class="adminClientSetting"><span class="<spring:message code="span.margin.right"/>"><spring:message code="administration.dropdown.setting.clientSetting"/>
                                    </a>
                                    <ul>
                                        <li>              <a href="#adminAddClient"    class="adminAddClientLink"    role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.client.add"/></span></a></li>
                                        <li>              <a href="#adminUpdateClient" class="adminUpdateClientLink" role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.client.update"/></span></a></li>
                                        <li class="last"> <a href="#adminRemoveClient" class="adminRemoveClientLink" role="tab" data-toggle="tab"><span><spring:message code="administration.dropdown.setting.client.remove"/></span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                        <li class='active has-sub'><a href='#'  role="tab" data-toggle="tab"><span class="<spring:message code="span.margin.right"/>">Panel Two</span></a>
                            <ul>
                                <li class='has-sub'><a href='#' class="accountHolder2"><span>Sections</span></a>
                                    <ul>
                                        <li>             <a href="#individual2"   class="individualLink2"   role="tab" data-toggle="tab"><span>Regular Account Holders</span></a></li>
                                        <li>             <a href='#organization2' class="organizationLink2" role="tab" data-toggle="tab"><span>Organizational Account Holders</span></a></li>
                                        <li class="last"><a href='#all2'          class="allLink2"          role="tab" data-toggle="tab"><span>All Account Holders</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                        <li class='active has-sub'><a href='#'  role="tab" data-toggle="tab"><span class="<spring:message code="span.margin.right"/>">Panel Three</span></a>
                            <ul>
                                <li class='has-sub'><a href='#' class="accountHolder3"><span>Sections</span></a>
                                    <ul>
                                        <li><a href="#individual3" class="individualLink3" role="tab" data-toggle="tab"><span>x</span></a></li>
                                        <li><a href='#organization3' class="organizationLink3" role="tab" data-toggle="tab"><span>y</span></a></li>
                                        <li class="last1"><a href='#all3' class="allLink3" role="tab" data-toggle="tab"><span>y</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                        <li><a href='#'><span><spring:message code="tab"/></span></a></li>
                        <li><a href='#'><span><spring:message code="tab"/></span></a></li>
                        <li><a href='#'><span><spring:message code="tab"/></span></a></li>
                        <li><a href='#'><span><spring:message code="tab"/></span></a></li>
                        <li><a href='#'><span><spring:message code="tab"/></span></a></li>
                        <li class='last'><a href='#'><span>Tab</span></a></li>
                    </ul>
                </ul>
            </div>
</div>
