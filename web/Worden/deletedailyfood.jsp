<%-- 
    Document   : deletedailyfood
    Created on : Mar 7, 2018, 2:57:10 PM
    Author     : Ravi
--%>

<%@page import="DAO.FoodOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          int id=Integer.parseInt(request.getParameter("id"));
          FoodOperation fo=new FoodOperation();
           boolean b=fo.delete(id);
           if(b){
           response.sendRedirect("viewdailyfood.jsp");
           }
           
       %>
    </body>
</html>
