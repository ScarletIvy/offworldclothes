package com.ivyjochem.oc.controller;

import com.ivyjochem.oc.controller.entity.user;
import com.ivyjochem.oc.persistence.GenericDao;
import com.ivyjochem.oc.util.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The type Loginaction.
 */
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
