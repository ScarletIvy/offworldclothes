package com.ivyjochem.oc.controller;

import com.ivyjochem.oc.controller.entity.user;
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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

/**
 * The type Edit action.
 */
@WebServlet(name = "editaction", value = "/editaction")
public class editAction extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        GenericDao dao = DaoFactory.createDao(user.class);
        user newUser = (user) session.getAttribute("loggedUser");
        if((Objects.equals(request.getParameter("password"), request.getParameter("repeatPassword"))) && (Objects.equals(request.getParameter("currentPassword"), newUser.getPassword()))) {
            newUser.setUserName(request.getParameter("username"));
            newUser.setFirstName(request.getParameter("firstName"));
            newUser.setLastName(request.getParameter("lastName"));
            newUser.setEmail(request.getParameter("email"));
            newUser.setStreetAddress(request.getParameter("address"));
            newUser.setCity(request.getParameter("City"));
            newUser.setState(request.getParameter("state"));
            newUser.setZipCode(request.getParameter("zip"));
            newUser.setPassword(request.getParameter("password"));
            logger.debug("editing User: " + newUser);
            request.setAttribute("loggedUser", newUser);
            session.setAttribute("loggedUser", newUser);
            dao.saveOrUpdate(newUser);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/accountTools/account" + ".jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher  dispatcher = request.getRequestDispatcher("error" + ".jsp");
            dispatcher.forward(request, response);
        }
    }

}

