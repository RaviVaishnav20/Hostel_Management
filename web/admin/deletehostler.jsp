<%-- 
    Document   : deletehostler
    Created on : Mar 7, 2018, 4:12:17 AM
    Author     : Ravi
--%>

<%@page import="DAO.HostlerOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hostler Delete</title>
    </head>
    <body>
         <%
          int id=Integer.parseInt(request.getParameter("id"));
          HostlerOperation ho=new HostlerOperation();
           boolean b=ho.delete(id);
           if(b){
           response.sendRedirect("viewhostler.jsp");
           }
           
       %>
    </body>
</html>
