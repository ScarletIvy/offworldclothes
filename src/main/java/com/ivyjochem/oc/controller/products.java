package com.ivyjochem.oc.controller;

import com.ivyjochem.oc.controller.entity.item;
import com.ivyjochem.oc.persistence.GenericDao;
import com.ivyjochem.oc.util.DaoFactory;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

/**
 * The type Products.
 */
@WebServlet(name = "products", value = "/products")
public class products extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GenericDao<item> dao = DaoFactory.createDao(item.class);
        List<item> items = dao.getAll();
        request.setAttribute("items", items);
        logger.debug("Sending back the item/s..." + items);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/products" +
                ".jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
