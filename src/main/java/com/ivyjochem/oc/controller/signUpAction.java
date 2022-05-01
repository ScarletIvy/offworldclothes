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

/**
 * The type Sign up action.
 */
@WebServlet(name = "signupaction", value = "/signupaction")
public class signUpAction extends HttpServlet {
        private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("password").equals(request.getParameter("repeatPassword"))) {
            HttpSession session = request.getSession(true);
            user user = new user();
            user.setUserName(request.getParameter("username"));
            user.setFirstName(request.getParameter("firstName"));
            user.setLastName(request.getParameter("lastName"));
            user.setEmail(request.getParameter("email"));
            user.setStreetAddress(request.getParameter("address"));
            user.setCity(request.getParameter("City"));
            user.setState(request.getParameter("state"));
            user.setZipCode(request.getParameter("zip"));
            user.setPassword(request.getParameter("password"));
                logger.debug("Adding User: " + user);
            GenericDao dao = DaoFactory.createDao(user.class);
            dao.insert(user);
            request.setAttribute("loggedIn", true);
            request.setAttribute("loggedUser", user);
            session.setAttribute("loggedIn", true);
            session.setAttribute("loggedUser", user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("index" + ".jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("error");
            dispatcher.forward(request, response);
        }
    }
}
