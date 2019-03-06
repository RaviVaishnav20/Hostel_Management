<%-- 
    Document   : updatehostler
    Created on : Mar 7, 2018, 4:12:04 AM
    Author     : Ravi
--%>

<%@page import="Beans.AddHostler"%>
<%@page import="DAO.HostlerOperation"%>
<%@page import="Beans.AddWorden"%>
<%@page import="DAO.WordenOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="hrcss.css">
        <title>Update Hostler</title>
    </head>
    <body>
            <%@include file="../logo.jsp" %>
            <%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Admin Navigation Bar.jsp" %>
        <%
            if(request.getParameter("id") !=null)
            {
        int hid=Integer.parseInt(request.getParameter("id"));
       HostlerOperation wo=new HostlerOperation();
       AddHostler ad = wo.selectHostler(hid);
        if(ad !=null){
        %>
           <!-- multistep form -->
        <form id="msform" action="../HostlerUpdate" method="post">
  
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Register Now</h2>
    <input type="hidden" name="hid" value="<%= ad.getHid()%>"/>
    <input type="text" name="hid" value="<%= ad.getHid()%>"/>
    <input type="text" name="name" value="<%= ad.getName()%>"/>
    
    <input type="email" name="email" value="<%= ad.getEmail()%>" required="" />
   
    <input type="password" name="password" value="<%= ad.getPassword()%>"/>
    
    <input type="text" name="address" value="<%= ad.getAddress()%>" required="" />
    <input type="text" name="contact" value="<%= ad.getContact()%>" required="" />
    <input type="text" name="gid" value="<%= ad.getGid()%>" required="" />
    <input type="text" name="gpass" value="<%= ad.getGpass()%>" required="" />
  
  
    `<input type="submit"  class="next action-button" value="Update" />
  </fieldset>
  </form>
    <%
    }
}

    %>
    </body>
