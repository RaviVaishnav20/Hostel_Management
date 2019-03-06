<%-- 
    Document   : hostlerlogout
    Created on : Mar 9, 2018, 1:49:54 AM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hostler</title>
    </head>
    <body>
        <%
       request.getSession().invalidate();
       response.sendRedirect("hostlerlogin.jsp");
       
       %>
    </body>
</html>
