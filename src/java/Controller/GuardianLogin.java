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
public class GuardianLogin extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int uid;
        String pass;
             
uid = Integer.parseInt(req.getParameter("uid"));
        pass = req.getParameter("pass");
        AddHostler ad=new AddHostler();
      try{  HostlerOperation ho = new HostlerOperation();
        List li = ho.loginGuardian(uid);
        ListIterator lit = li.listIterator();
        while (lit.hasNext()) {
            ad = (AddHostler) lit.next();
                      
        }
         
        if(pass.equals(ad.getGpass())){
        resp.sendRedirect("Guardian/guardian.jsp");
        }else
        {
        resp.sendRedirect("Guardian/validguardianlogin.jsp");
        }}catch(Exception ex){
        resp.sendRedirect("Guardian/validguardianlogin.jsp");
        }
        
        }
  
}
