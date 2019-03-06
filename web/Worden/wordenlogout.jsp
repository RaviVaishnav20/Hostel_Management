<%-- 
    Document   : wordenlogout
    Created on : Mar 7, 2018, 9:47:27 PM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Worden Logout</title>
    </head>
    <body>
        <%
       request.getSession().invalidate();
       response.sendRedirect("wordenlogin.jsp");
       %>
    </body>
</html>
