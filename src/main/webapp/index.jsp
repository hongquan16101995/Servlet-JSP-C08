<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<%--<% String a = (String) request.getAttribute("a"); %>--%>
<%--<h1><%= (String) request.getAttribute("a")%></h1>--%>
<a href="hello-servlet">Hello Servlet</a>
<a href="product.jsp">Product</a>
<form action="demo.jsp" onsubmit="return test()">
    <input type="text" id="input">
    <button>Click</button>
</form>
<%
    PrintWriter a = response.getWriter();
    a.println("abcxyz");
%>
<%--<h1><% out.println("Hello"); %> %></h1>--%>
</body>
<script>
    function test() {
        let a = +document.getElementById("input").value
        if (a === 1) {
            alert("OK")
            return false;
        } else {
            return true;
        }
    }
</script>
</html>
