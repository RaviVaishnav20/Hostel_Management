/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.GuardianNotice;
import DAO.NoticeboardOperation;
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
public class GNUpdate extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int noteid;
       
   String title,notice;
   noteid=Integer.parseInt(req.getParameter("noteid"));
   title=req.getParameter("title");
   notice=req.getParameter("notice");
        NoticeboardOperation nbo=new NoticeboardOperation();
        GuardianNotice gn=new GuardianNotice(title, notice);
      int id=  nbo.updateGnotice(noteid, gn);
      if(id!=0){
        resp.sendRedirect("Worden/ViewGuardianNotice.jsp");
        }
    }
}
