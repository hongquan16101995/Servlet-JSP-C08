<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/24/2022
  Time: 3:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/CalculatorServlet" method="post">
    <input type="text" name="a">
    <input type="text" name="b">
    <button type="submit">CLick</button>
</form>
<div>
    <div>Đây là div trái</div>
    <div><c:out value="${c}"/>
    <button><a href="/CalculatorServlet?num=10">Click me</a></button></div>
    <div>Đây là div phải</div>
</div>
<h1></h1>
</body>
</html>
