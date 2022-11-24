<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/24/2022
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/products" method="post">
    <input type="text" name="name">
    <button type="submit">Click</button>
</form>
<h1><%= (String)request.getAttribute("test") %></h1>
</body>
</html>
