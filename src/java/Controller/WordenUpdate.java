/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.AddWorden;
import DAO.WordenOperation;
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
public class WordenUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          int wid;
        String name, email, password, address, contact;
        wid = Integer.parseInt(req.getParameter("wid"));
        name = req.getParameter("name");
        email = req.getParameter("email");
        password = req.getParameter("password");
        address = req.getParameter("address");
        contact = req.getParameter("contact");
        
        WordenOperation wo=new WordenOperation();
        AddWorden ad=new AddWorden(wid, name, email, password, address, contact);
       int id= wo.update(wid, ad);
        if(id != 0)
        {
        resp.sendRedirect("admin/viewworden.jsp");
        }
       
    }
}
