<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>


<fmt:setLocale value="${sessionScope.lang}"/>
<fmt:setBundle basename="messages"/>



<nav class="navbar navbar-expand-lg fixed-top bg-dark ">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/app/home">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
        <ul class="navbar-nav mr-4">

            <li class="nav-item">
                <a class="nav-link " href="${pageContext.request.contextPath}/app/personal-cabinet">PersonalCabinet</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/app/log-me">SignIn</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="${pageContext.request.contextPath}/app/reg-me">SignUp</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="?sessionLocale=en">
                    <span class="flag-icon flag-icon-us"></span><fmt:message key="lang.en"/>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="?sessionLocale=ua">
                    <span class="flag-icon flag-icon-mx"></span><fmt:message key="lang.ua"/>
                </a>
            </li>
        </ul>

    </div>
</nav>

