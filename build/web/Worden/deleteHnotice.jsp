<%-- 
    Document   : deleteHnotice
    Created on : Mar 7, 2018, 9:15:42 PM
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
           boolean b=nbo.deleteHnotice(id);
           if(b){
           response.sendRedirect("ViewHostlerNoice.jsp");
           }
           
       %>
    </body>
</html>
