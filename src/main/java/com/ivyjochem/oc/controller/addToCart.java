package com.ivyjochem.oc.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by ivyjochem
 */
@WebServlet(name = "addToCart", value = "/addToCart")
public class addToCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        ArrayList cart = (ArrayList)session.getAttribute("cart");
        ArrayList prices = (ArrayList)session.getAttribute("prices");
        ArrayList sizes = (ArrayList)session.getAttribute("sizes");
        int total = (int)session.getAttribute("total");
        cart.add(request.getParameter("name"));
        prices.add(request.getParameter("price"));
        sizes.add(request.getParameter("size"));
        total += Integer.parseInt(request.getParameter("price"));
        session.setAttribute("cart", cart);
        session.setAttribute("prices", prices);
        session.setAttribute("sizes", sizes);
        session.setAttribute("total", total);
        RequestDispatcher dispatcher = request.getRequestDispatcher("cart" + ".jsp");
        dispatcher.forward(request, response);
    }
}
