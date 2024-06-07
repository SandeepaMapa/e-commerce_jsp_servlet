package com.example.mapper;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import com.example.model.OrderBean;

public class OrderResponseMapper {

    public static void forwardToOrderList(HttpServletRequest request, HttpServletResponse response, List<OrderBean> orderList)
            throws ServletException, IOException {
        request.setAttribute("orderList", orderList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("order-list.jsp");
        dispatcher.forward(request, response);
    }

    public static void forwardToOrderConfirmation(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("successMessage", "Order placed successfully!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");

        dispatcher.forward(request, response);
    }

    public static void forwardToErrorPage(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.sendRedirect("error.jsp");
    }
}
