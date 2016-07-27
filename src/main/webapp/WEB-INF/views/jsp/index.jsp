<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pavlo.shtefanesku
  Date: 5/27/2016
  Time: 8:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gradle + Spring MVC</title>
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet" />
</head>
<nav class="navbat navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/spring4">Home</a>
        </div>
    </div>
</nav>
<body>
<div class="jumbotron">
    <div class="container">
        <h1>${title}</h1>
        <%@ page import="java.util.*" %>
        <% out.print( "<h2 align=\"center\">" +new Date().toString()+"</h2>"); %>
        <p>
            <c:choose>
                <c:when test="${not empty msg}">
                    Hello ${msg}
                </c:when>
                <c:otherwise>
                    Welcome! Welcome!
                </c:otherwise>
            </c:choose>
        </p>
        <p>
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
        </p>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <h2>Say hello to</h2>
            <p>Helen</p>
            <p>
                <a class="btn btn-default" href="/spring4/hello/Helen" role="button">Hello</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Say hello to</h2>
            <p>Paul</p>
            <p>
                <a class="btn btn-default" href="/spring4/hello/Paul" role="button">Hello</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Say hello to</h2>
            <p>Brad</p>
            <p>
                <a class="btn btn-default" href="/spring4/hello/Brad" role="button">Hello</a>
            </p>
        </div>
    </div>
    <hr>
    <footer>
        <p>PS 2016</p>
    </footer>
</div>
<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>
