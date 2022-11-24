<%@ page import="com.example.demo.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/24/2022
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Action</th>
    </tr>

<%--        <% for (Product p : (ArrayList<Product>)request.getAttribute("products")) { %>--%>
<%--    <tr>--%>
<%--        <td><%= p.getId() %></td>--%>
<%--        <td><%= p.getName() %></td>--%>
<%--        <td><%= p.getPrice() %></td>--%>
<%--    </tr>--%>
<%--        <% } %>--%>
    <c:forEach items="${products}" var="p">
        <tr>
            <td><c:out value="${p.getId()}"/></td>
            <td><c:out value="${p.getName()}"/></td>
            <td><c:out value="${p.getPrice()}"/></td>
            <td><button><a href="/products?action=delete&id=${p.getId()}">Delete</a></button></td>
        </tr>
    </c:forEach>
    <c:out value="${a}"/>

    <%
        int a = 11111;
        PrintWriter b = response.getWriter();
        b.println(a);
    %>

    <c:set var="demo" value="${a}"/>
    <c:out value="${demo}"/>

</table>

</body>
</html>
