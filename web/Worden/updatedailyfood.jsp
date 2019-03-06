<%-- 
    Document   : updatedailyfood
    Created on : Mar 7, 2018, 2:56:55 PM
    Author     : Ravi
--%>

<%@page import="Beans.AddDailyFood"%>
<%@page import="DAO.FoodOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="wordencss.css">
        <link rel="stylesheet" type="text/css" href="foodcss.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <link rel="stylesheet" href="../indexcss.css">
        <link rel="stylesheet" href="/w3css/3/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

        <title>Update Daily Food</title>
    </head>
    <body>
         <%@include file="../logo.jsp" %>
        <%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Warden Navigation Bar.jsp" %>
        <%
            if(request.getParameter("id") !=null)
            {
        int fid=Integer.parseInt(request.getParameter("id"));
       FoodOperation fo=new FoodOperation();
       AddDailyFood ad = fo.selectFood(fid);
        if(ad !=null){
        %>
           <!-- multistep form -->
        <form id="msform" action="../FoodUpdate" method="post">
  
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Register Now</h2>
    <input type="hidden" name="fd" value="<%= ad.getFid()%>"/>
    <input type="text" name="fid" value="<%= ad.getFid()%>"/>
    <input type="text" name="day" value="<%= ad.getDay()%>"/>
    <input type="text" name="foodname" value="<%= ad.getFoodname()%>"/>
    
    <input type="text" name="description" value="<%= ad.getDescription()%>" required="" />
   
    
  
    `<input type="submit"  class="next action-button" value="Update" />
  </fieldset>
  </form>
    <%
    }
}

    %>
    </body>
</html>
