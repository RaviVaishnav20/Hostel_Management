/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

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
public class AdminLoginn extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uid,pass;
        uid=req.getParameter("uid");
        pass=req.getParameter("pass");
        if(uid.equals("sadiya") && pass.equals("sadiya123"))
        {
               resp.sendRedirect("admin/admin.jsp");
        }
        else
        {
        resp.sendRedirect("admin/validlogin.jsp");
        }}
}
