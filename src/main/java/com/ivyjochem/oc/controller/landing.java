package com.ivyjochem.oc.controller;

import com.ivyjochem.oc.controller.entity.user;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * The type Landing.
 */
@WebServlet(name = "landing", value = "/landing")
public class landing extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List cart = new ArrayList<>();
        List prices = new ArrayList<>();
        List sizes = new ArrayList<>();
        int total = 0;
        Boolean loggedIn = false;
        user loggedUser = null;
        request.setAttribute("cart", cart);
        request.setAttribute("prices", prices);
        request.setAttribute("sizes", sizes);
        request.setAttribute("total", total);
        request.setAttribute("loggedIn", loggedIn);
        request.setAttribute("loggedUser", loggedUser);
        HttpSession session = request.getSession(true);
        session.setAttribute("cart", cart);
        session.setAttribute("prices", prices);
        session.setAttribute("sizes", sizes);
        session.setAttribute("total", total);
        session.setAttribute("loggedIn", loggedIn);
        session.setAttribute("loggedUser", loggedUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("home");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
