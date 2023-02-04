<%--
  Created by IntelliJ IDEA.
  User: stolyarovv
  Date: 03.02.2023
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Registration Form</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<i> Fill out the form. Asterisk (*) means required. </i>
<form:form action="processForm" modelAttribute="customer">
    First name: <form:input path="firstName"/>
    <br><br>
    Last name (*) <form:input path="lastName" cssClass="error"/>
    <form:errors path="lastName" cssClass="error"/>
    <br><br>
    <input type="submit" value="Submit"/>
</form:form>
</body>
</html>
