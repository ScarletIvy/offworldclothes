package com.ivyjochem.oc.controller;

import com.ivyjochem.oc.controller.entity.*;
import com.ivyjochem.oc.persistence.*;
import com.ivyjochem.oc.util.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "signupaction", value = "/signupaction")
public class signUpAction extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("password").equals(request.getParameter("repeatPassword"))) {
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
            GenericDao dao = DaoFactory.createDao(user.class);
            dao.insert(user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("home");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("error");
            dispatcher.forward(request, response);
        }
    }
}
