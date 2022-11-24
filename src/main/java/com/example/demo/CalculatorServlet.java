package com.example.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    int c;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int num = Integer.parseInt(request.getParameter("num"));
        c += num;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("calculator.jsp");
        request.setAttribute("c", c);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int a = Integer.parseInt(request.getParameter("a"));
        int b = Integer.parseInt(request.getParameter("b"));
        c = a + b;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("calculator.jsp");
        request.setAttribute("c", c);
        requestDispatcher.forward(request, response);
    }
}
