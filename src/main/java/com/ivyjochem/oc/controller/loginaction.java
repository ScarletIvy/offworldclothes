package com.ivyjochem.oc.controller;

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
 * Created by ivyjochem
 */
@WebServlet(name = "loginaction", value = "/loginaction")
public class loginaction extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Map<String, Object> info = new HashMap<String,Object>();
        info.put("userName",request.getParameter("username"));
        info.put("password",request.getParameter("password"));
        GenericDao<? extends Object> dao = DaoFactory.createDao(user.class);
        List result = dao.findByPropertyEqual(info);
        if(!result.isEmpty()){
            request.setAttribute("loggedIn", true);
            request.setAttribute("loggedUser", result.get(0));
            session.setAttribute("loggedIn", true);
            session.setAttribute("loggedUser", result.get(0));
            RequestDispatcher dispatcher = request.getRequestDispatcher("index" +
                    ".jsp");
            dispatcher.forward(request, response);
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("authenticationError" + ".jsp");
            dispatcher.forward(request, response);
        }
    }
}
