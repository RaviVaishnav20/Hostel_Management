<%-- 
    Document   : deleteworden
    Created on : Mar 7, 2018, 2:01:29 AM
    Author     : Ravi
--%>

<%@page import="DAO.WordenOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Worden</title>
    </head>
    <body>
         <%
          int id=Integer.parseInt(request.getParameter("id"));
           WordenOperation wo=new WordenOperation();
           boolean b=wo.delete(id);
           if(b){
           response.sendRedirect("viewworden.jsp");
           }
           
       %>
    </body>
</html>
