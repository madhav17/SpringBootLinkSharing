<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>403</title>
    <%--global css goes here...--%>
    <spring:url value="/resources/js/app.js" var="appJs"/>
    <spring:url value="/resources/js/bootstrap.min.js" var="bootStrapJs"/>
    <spring:url value="/resources/js/jquery.min.js" var="jqueryJs"/>
    <spring:url value="/resources/js/jquery.min.js" var="scripsJs"/>
    <spring:url value="/resources/js/scripts.js" var="jqueryJs"/>
    <spring:url value="/resources/js/jquery.backstretch.min.js" var="backstretchJs"/>

    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS"/>
    <spring:url value="/resources/css/font-awesome.min.css" var="fontCSS"/>
    <spring:url value="/resources/css/styleLogin.css" var="styleLoginCSS"/>
    <spring:url value="/resources/css/form-elements.css" var="formElementCSS"/>
    <spring:url value="/resources/css/appCustom.css" var="customCSS"/>


    <style type="text/css">@import "${bootstrapCSS}"; </style>
    <style type="text/css">@import "${fontCSS}"; </style>
    <style type="text/css">@import "${styleLoginCSS}"; </style>
    <style type="text/css">@import "${formElementCSS}"; </style>
    <style type="text/css">@import "${customCSS}"; </style>

    <script src="${jqueryJs}" type="text/javascript"></script>
    <script src="${bootStrapJs}" type="text/javascript"></script>
    <script src="${appJs}" type="text/javascript"></script>
    <script src="${backstretchJs}" type="text/javascript"></script>
    <script src="${scripsJs}" type="text/javascript"></script>

</head>
<body>
<h1>HTTP Status 403 - Access is denied</h1>

<c:choose>
    <c:when test="${empty username}">
        <h2>You do not have permission to access this page!</h2>
    </c:when>
    <c:otherwise>
        <h2>Username : ${username} <br/>
            You do not have permission to access this page!</h2>
    </c:otherwise>
</c:choose>

</body>
</html>