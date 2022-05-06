package com.ivyjochem.oc.controller;

import com.ivyjochem.oc.controller.entity.onlineOrder;
import com.ivyjochem.oc.controller.entity.user;
import com.ivyjochem.oc.persistence.GenericDao;
import com.ivyjochem.oc.util.DaoFactory;

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
 * The type Checkout.
 */
@WebServlet(name = "checkout", value = "/checkout")
public class checkout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        onlineOrder newOrder = new onlineOrder();
        user orderUser = (user)session.getAttribute("loggedUser");
        newOrder.setTotal(String.valueOf(session.getAttribute("total")));
        newOrder.setShippingAddress(orderUser.getStreetAddress() + " " + orderUser.getZipCode() + " " +
                    orderUser.getCity() + " " + orderUser.getState());
        newOrder.setUserId(orderUser.getId());
        GenericDao dao = DaoFactory.createDao(onlineOrder.class);
        dao.insert(newOrder);
        session.setAttribute("cart", new ArrayList<>());
        session.setAttribute("prices", new ArrayList<>());
        session.setAttribute("sizes", new ArrayList<>());
        session.setAttribute("total", 0);
        RequestDispatcher dispatcher = request.getRequestDispatcher("contact" +
                ".jsp");
        dispatcher.forward(request, response);
    }
}
