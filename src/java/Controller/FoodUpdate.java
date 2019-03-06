/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.AddDailyFood;
import DAO.FoodOperation;
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
public class FoodUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
        int fid;
        String foodname,description,day;
        fid = Integer.parseInt(req.getParameter("fid"));
        foodname = req.getParameter("foodname");
         day = req.getParameter("day");
        
        description = req.getParameter("description");
        
        FoodOperation fo=new FoodOperation();
        AddDailyFood ad=new AddDailyFood(fid, day, foodname, description);
       int id= fo.update(fid, ad);
        if(id!=0){
        resp.sendRedirect("Worden/viewdailyfood.jsp");
        }
    }
}
