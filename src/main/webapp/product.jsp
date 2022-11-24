<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/24/2022
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    class Product {
        private Long id;
        private String name;
        private Double price;

        public Product(Long id, String name, Double price) {
            this.id = id;
            this.name = name;
            this.price = price;
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Double getPrice() {
            return price;
        }

        public void setPrice(Double price) {
            this.price = price;
        }

        @Override
        public String toString() {
            return "Product{" +
                    "id=" + id +
                    ", name='" + name + '\'' +
                    ", price=" + price +
                    '}';
        }
    }
%>

<%
    ArrayList<Product> products = new ArrayList<>();
    products.add(new Product(1L, "Bimbim", 10000d));
    products.add(new Product(2L, "Nước ngọt", 20000d));
    products.add(new Product(3L, "Kẹo", 30000d));
%>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
    </tr>

    <% for (Product p : products) { %>
    <tr>
        <td><%= p.getId() %></td>
        <td><%= p.getName() %></td>
        <td><%= p.getPrice() %></td>
    </tr>
    <% } %>


<%--            <%--%>
<%--                PrintWriter a = response.getWriter();--%>
<%--                for (Product p : products) {--%>
<%--                    a.println("<tr><td>" + p.getId() + "</td>");--%>
<%--                    a.println("<td>" + p.getName() + "</td>");--%>
<%--                    a.println("<td>" + p.getPrice() + "</td></tr>");--%>
<%--                }--%>
<%--            %>--%>

</table>

</body>
</html>
