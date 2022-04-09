package com.ivyjochem.oc.controller;

import com.ivyjochem.oc.controller.entity.user;
import com.ivyjochem.oc.persistence.GenericDao;
import com.ivyjochem.oc.util.DaoFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "loginaction", value = "/loginaction")
public class loginaction extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map info = new HashMap<String,String>();
        info.put(request.getParameter("username"),request.getParameter("password"));
        GenericDao dao = DaoFactory.createDao(user.class);
        List result = dao.findByPropertyEqual(info);
        if(!result.isEmpty()){

        }
    }
}
