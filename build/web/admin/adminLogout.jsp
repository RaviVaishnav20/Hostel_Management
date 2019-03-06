<%-- 
    Document   : adminLogout
    Created on : Mar 6, 2018, 11:54:35 PM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       request.getSession().invalidate();
       response.sendRedirect("adminlogin.jsp");
       %>
       
    </body>
</html>
