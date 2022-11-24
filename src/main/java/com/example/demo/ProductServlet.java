package com.example.demo;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "productServlet", value = "/products")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Product> products = new ArrayList<>();
        String action = request.getParameter("action");
        Long id = Long.parseLong(request.getParameter("id"));
        products.add(new Product(1L, "a", 10000d));
        products.add(new Product(2L, "b", 20000d));
        products.add(new Product(3L, "c", 30000d));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("product1.jsp");
        request.setAttribute("products", products);
        request.setAttribute("a", 1000000);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("test.jsp");
        request.setAttribute("test", name);
        requestDispatcher.forward(request, response);

        response.sendRedirect("test.jsp");
    }
}
