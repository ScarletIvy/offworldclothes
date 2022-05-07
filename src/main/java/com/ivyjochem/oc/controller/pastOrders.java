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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The type Past orders.
 */
@WebServlet(name = "pastOrders", value = "/pastOrders")
public class pastOrders extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        user currentUser = (user)session.getAttribute("loggedUser");
        Map<String, Object> search = new HashMap<String,Object>();
        search.put("userId",currentUser.getId());
        GenericDao dao = DaoFactory.createDao(onlineOrder.class);
        List result = dao.findByPropertyEqual(search);
        request.setAttribute("pastOrders", result);
        session.setAttribute("pastOrders", result);
        RequestDispatcher dispatcher = request.getRequestDispatcher("accountTools/pastOrders" +
                ".jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

