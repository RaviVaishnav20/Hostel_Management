<%-- 
    Document   : guardianlogout
    Created on : Mar 9, 2018, 2:36:24 AM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardian</title>
    </head>
    <body>
       <%
       request.getSession().invalidate();
       response.sendRedirect("gardianlogin.jsp");
       
       %>
    </body>
</html>
