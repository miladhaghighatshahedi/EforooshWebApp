<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<center>
  <nav class="navbar  navbar-inverse" style="width: 23%;" role="navigation">
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