<%-- 
    Document   : updateworden
    Created on : Mar 7, 2018, 1:35:54 AM
    Author     : Ravi
--%>

<%@page import="Beans.AddWorden"%>
<%@page import="DAO.WordenOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="hrcss.css">
        <title>Update Warden</title>
    </head>
    <body>
            <%@include file="../logo.jsp" %>
            <%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Admin Navigation Bar.jsp" %>
        <%
            if(request.getParameter("id") !=null)
            {
        int wid=Integer.parseInt(request.getParameter("id"));
       WordenOperation wo=new WordenOperation();
       AddWorden ad = wo.selectWorden(wid);
        if(ad !=null){
        %>
           <!-- multistep form -->
        <form id="msform" action="../WordenUpdate" method="post">
  
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Register Now</h2>
    <input type="hidden" name="wid" value="<%= ad.getWid()%>"/>
    <input type="text" name="wid" value="<%= ad.getWid()%>"/>
    <input type="text" name="name" value="<%= ad.getName()%>"/>
    
    <input type="email" name="email" value="<%= ad.getEmail()%>" required="" />
   
    <input type="password" name="password" value="<%= ad.getPassword()%>"/>
    
    <input type="text" name="address" value="<%= ad.getAddress()%>" required="" />
    <input type="text" name="contact" value="<%= ad.getContact()%>" required="" />
  
    `<input type="submit"  class="next action-button" value="Update" />
  </fieldset>
  </form>
    <%
    }
}

    %>
    </body>
</html>
