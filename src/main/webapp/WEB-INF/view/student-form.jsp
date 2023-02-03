<%--
  Created by IntelliJ IDEA.
  User: stolyarovv
  Date: 03.02.2023
  Time: 8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>

<form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName" />
    <br><br>
    Last name: <form:input path="lastName" />
    <br><br>
    <form:select path="country">
        <form:options items="${theCountryOptions}" />
    </form:select>
    <br><br>
    Favourite Language:
    <form:radiobuttons path="favouriteLanguage" items="${languagesRadiobutton}" />
<%--    Java <form:radiobutton path="favouriteLanguage" value="Java" />--%>
<%--    C# <form:radiobutton path="favouriteLanguage" value="C#" />--%>
<%--    PHP <form:radiobutton path="favouriteLanguage" value="PHP" />--%>
<%--    Ruby <form:radiobutton path="favouriteLanguage" value="Ruby" />--%>
    <br><br>
    Operating Systems:
    Linux <form:checkbox path="operatingSystems" value="Linux" />
    Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
    MS Windows <form:checkbox path="operatingSystems" value="MS Windows" />
    <br><br>
    <input type="submit" value="Submit">
</form:form>

</body>
</html>
