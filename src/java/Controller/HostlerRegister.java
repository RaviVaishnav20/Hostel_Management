/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.AddHostler;
import DAO.HostlerOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ravi
 */
public class HostlerRegister extends HttpServlet {
 @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int hid,gid;
        String name, email, password,fname, address, contact,gpass;
        hid = Integer.parseInt(req.getParameter("hid"));
        gid = Integer.parseInt(req.getParameter("gid"));
        name = req.getParameter("name");
        fname = req.getParameter("fname");
        email = req.getParameter("email");
        password = req.getParameter("password");
        address = req.getParameter("address");
        contact = req.getParameter("contact");
        gpass = req.getParameter("gpass");
        HostlerOperation ho=new HostlerOperation();
        AddHostler ad=new AddHostler(hid, gid, name, email, fname, password, address, contact, gpass);
       int id= ho.insertHostler(ad);
        if(id!=0){
        resp.sendRedirect("admin/adminHostler.jsp");
        }

    }
}
