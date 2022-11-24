<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/23/2022
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><%= "HelloWorld"%></h1>
<h1><%= (String)request.getAttribute("abc")%></h1>
</body>
</html>
