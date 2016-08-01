<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--for j spring security--%>
<html>
<head>

    <title>Login</title>
    <%--global css goes here...--%>
    <spring:url value="/resources/js/app.js" var="appJs" />
    <spring:url value="/resources/js/bootstrap.min.js" var="bootStrapJs" />
    <spring:url value="/resources/js/jquery.min.js" var="jqueryJs" />
    <spring:url value="/resources/js/jquery.min.js" var="scripsJs" />
    <spring:url value="/resources/js/scripts.js" var="jqueryJs" />
    <spring:url value="/resources/js/jquery.backstretch.min.js" var="backstretchJs" />

    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    <spring:url value="/resources/css/font-awesome.min.css" var="fontCSS" />
    <spring:url value="/resources/css/styleLogin.css" var="styleLoginCSS" />
    <spring:url value="/resources/css/form-elements.css" var="formElementCSS" />
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


<!-- Top content -->
<div class="top-content" style="background-color:#39435C;height: 120%;">


    <c:if test="${not empty error}">
        <div class="infoMsg">${error}</div>
    </c:if>
    <c:if test="${not empty msg}">
        <div class="infoMsg">${msg}</div>
    </c:if>


    <div class="inner-bg" style="width: 100%;height: 100%;">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>Link Sharing</strong> Login Form</h1>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Login to our site</h3>

                            <p>Enter your username and password to log on:</p>
                        </div>

                    </div>
                    <div class="form-bottom">
                        <%--<form:form method="post" action="/login/home">--%>
                        <%--<form name="login" action="<c:url value='/j_spring_security_check' />" method='POST'>--%>
                        <form name="login" action="/login/signIn" method='POST'>
                            <div class="form-group">
                                <label class="sr-only" for="username">Username</label>
                                <input type="text" name="username" placeholder="Username..."
                                       class="form-username form-control" id="username" required="true">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="password">Password</label>
                                <input type="password" name="password" placeholder="Password..."
                                       class="form-password form-control" id="password" required="true">
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}"/>
                            <button type="submit" class="btn">Sign in!</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 social-login">

                    <div class="social-login-buttons">
                        <a class="btn btn-link-2" href="/login/forgotPassword">
                            Forgot Password
                        </a>
                        <a class="btn btn-link-2" href="/login/signUp">
                            Register
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
