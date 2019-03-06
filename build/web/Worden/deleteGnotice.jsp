<%-- 
    Document   : deleteGnotice
    Created on : Mar 7, 2018, 9:15:52 PM
    Author     : Ravi
--%>

<%@page import="DAO.NoticeboardOperation"%>
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
          NoticeboardOperation nbo= new NoticeboardOperation();
           boolean b=nbo.deleteGnotice(id);
           if(b){
           response.sendRedirect("ViewGuardianNotice.jsp");
           }
           
       %>
    </body>
</html>
