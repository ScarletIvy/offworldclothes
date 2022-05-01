package com.ivyjochem.oc.controller.individualProducts;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * The type Individual product.
 */
@WebServlet(name = "individualProduct2", value = "/viewProduct/hoodie")
public class individualProduct2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/products/product2" +
                ".jsp");
        dispatcher.forward(request, response);
    }
}
