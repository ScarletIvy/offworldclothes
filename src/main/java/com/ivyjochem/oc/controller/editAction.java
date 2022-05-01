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

/**
 * The type Edit profile.
 */
@WebServlet(name = "editaction", value = "/editaction")
public class editAction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        user oldUser = (user) session.getAttribute("loggedUser");
        user newUser = (user) session.getAttribute("loggedUser");
        RequestDispatcher dispatcher = request.getRequestDispatcher("home");
        if(oldUser == newUser){
            dispatcher.forward(request, response);
        } else {
            dispatcher.forward(request, response);
        }
    }
}

