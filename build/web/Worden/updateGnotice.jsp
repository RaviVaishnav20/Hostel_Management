<%-- 
    Document   : updateGnotice
    Created on : Mar 7, 2018, 9:15:26 PM
    Author     : Ravi
--%>

<%@page import="Beans.GuardianNotice"%>
<%@page import="DAO.NoticeboardOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="wordencss.css">
         <link rel="stylesheet" type="text/css" href="noticecss.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <link rel="stylesheet" href="../indexcss.css">
        <link rel="stylesheet" href="/w3css/3/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

        <title>Update Guardian Notice</title>
    </head>
    <body>
         <%@include file="../logo.jsp" %>
         
        <<%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Warden Navigation Bar.jsp" %>
        <%
            if(request.getParameter("id") !=null)
            {
        int noteid=Integer.parseInt(request.getParameter("id"));
       NoticeboardOperation nbo=new NoticeboardOperation();
      GuardianNotice gn = nbo.selectGnotice(noteid);
        if(gn !=null){
        %>
           <!-- multistep form -->
       <form id="msform" action="../GNUpdate" method="post">


            <fieldset>
                <h2 class="fs-title">Guardian Notice Board</h2>
               
                 
    <input type="hidden" name="noteid" value="<%= gn.getNoteid()%>"/>
    
    <input type="text" name="title" value="<%= gn.getTitle()%>"/>
    
    
    <input type="text"  name="notice" value="<%= gn.getNotice()%>" required="" />
   
    
  
    `<input type="submit"  class="next action-button" value="Update" />
               
            </fieldset>
        </form>
    <%
    }
}

    %>
    </body>
</html>

