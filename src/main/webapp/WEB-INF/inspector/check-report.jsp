<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Stas
  Date: 17/05/19
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<fmt:setLocale value="${sessionScope.lang}"/>
<fmt:setBundle basename="messages"/>

<html lang="${sessionScope.lang}">
<head>
    <title>
        <fmt:message key="check.reports"/>
    </title>

    <meta name="viewport" content="width=device-width"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <jsp:include page="${pageContext.request.contextPath}/css/bootstrap_min.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/js/jquery.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/js/bootstrap_min.jsp"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
</head>
<body>

<!-- Row start -->
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12 offset-lg-4 col-lg-7">
        <div class="panel panel-default">

            <br>

            <div class="panel-heading clearfix">
                <i class="icon-calendar"></i>
                <h3 class="panel-title offset-2">
                    <fmt:message key="check.reports"/>
                </h3>
            </div>

            <form method="POST" class="" action="${pageContext.request.contextPath}/app/submit-checking-report">

                <div class="panel-body">
                    <div class="container  center-block">

                        <div class="row align-items-center">
                            <select class="soflow-color" name="idReport" required>
                                <option value=""><fmt:message key="placeholder.choose.report"/></option>
                                <c:forEach var="report" items="${reports}">
                                    <option value="${report.id}">id: ${report.id} | company: ${report.companyName}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>

                        <br>

                        <span>
                            <fmt:message key="placeholder.accept"/>
                        </span>
                        <div  class="row align-items-center">
                            <div class="md-radio">
                                <input value="1" id="ac1" type="radio" name="isAccepted" checked>
                                <label  for="ac1">+</label>
                            </div>
                            <div class="md-radio">
                                <input value="0" id="ac2" type="radio" name="isAccepted">
                                <label for="ac2">-</label>
                            </div>
                        </div>
                        <br><br>


                        <span>
                            <fmt:message key="should.change"/>
                        </span>
                        <div  class="row align-items-center">
                            <div class="md-radio">
                                <input value="1" id="s1" type="radio" name="shouldBeChanged" checked>
                                <label for="s1">+</label>
                            </div>
                            <div class="md-radio">
                                <input value="0" id="s2" type="radio" name="shouldBeChanged">
                                <label for="s2">-</label>
                            </div>
                        </div>

                        <br><br>

                        <div  class="row align-items-center">
                            <div class="input-group">
                             <span class="input-group-addon">
                                <textarea maxlength="100" minlength="1" name="inspectorComment"
                                          placeholder="<fmt:message key="insp.comment"/>" required>
                                </textarea>
                             </span>
                            </div>
                        </div>

                        <br>

                        <div  class="row align-items-center">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary btn-sm">
                                    <fmt:message key="label.submit"/>
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </form>
            <a class="" href="${pageContext.request.contextPath}/app/personal-cabinet">
                <fmt:message key="back.to.cabinet"/>
            </a>
        </div>
    </div>
</div>

<!-- Row end -->
</body>
</html>


<%--<div class="col-md-3 col-sm-3">--%>
<%--<div class="input-group">--%>
<%--<span class="input-group-addon">--%>
<%--<input type="checkbox" checked="">--%>
<%--</span>--%>
<%--<span type="text" class="form-control">Дача</span>--%>
<%--</div>--%>
<%--</div>--%>