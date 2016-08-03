<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Forgot Password</title>


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
<div class="top-content" style="background-color:#39435C;height: 120%;">


    <div class="inner-bg" style="width: 100%;height: 100%;">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>Link Sharing</strong> Forgot Password</h1>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Enter your details</h3>
                        </div>

                    </div>
                    <div class="form-bottom">
                        <form:form method="post" action="/login/sendPasswordMail">
                            <div class="form-group">
                                <label class="sr-only" for="userName">User Name : </label>
                                <input type="email" class="form-username form-control" name="username" id="username"
                                       required="true" placeholder="User Name"/>
                            </div>
                            <button type="submit" class="btn">Send Mail</button>

                        </form:form>
                    </div>

                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                            <div class="social-login-buttons">
                                <a class="btn btn-link-2" href="/">
                                    Login
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
