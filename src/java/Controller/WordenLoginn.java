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
import java.util.List;
import java.util.ListIterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ravi
 */
public class WordenLoginn extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int uid;
        String pass;
             
uid = Integer.parseInt(req.getParameter("uid"));
        pass = req.getParameter("pass");
        AddWorden ad = new AddWorden();
        try{
        WordenOperation wo = new WordenOperation();
        List li = wo.loginWarden(uid);
        ListIterator lit = li.listIterator();
        while (lit.hasNext()) {
            ad = (AddWorden) lit.next();
                      
        }
         
        if(pass.equals(ad.getPassword())){
        resp.sendRedirect("Worden/worden.jsp");
        }else
        {
        resp.sendRedirect("Worden/validwordenlogin.jsp");
        }}catch(Exception ex){
        resp.sendRedirect("Worden/validwordenlogin.jsp");
        }
        
        }
}
