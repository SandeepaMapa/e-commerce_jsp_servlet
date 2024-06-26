package com.example.mapper;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class LoginResponseMapper {

    public static void forwardToHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/home");
        dispatcher.forward(request, response);
    }

    public static void forwardToLoginPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    public static void forwardToAdminDashboard(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("AdminDashboard.jsp");
    }
}
