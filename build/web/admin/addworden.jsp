<%-- 
    Document   : addworden
    Created on : Mar 7, 2018, 12:20:44 AM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="hrcss.css">
          <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <link rel="stylesheet" href="../indexcss.css">
        <link rel="stylesheet" href="/w3css/3/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
       
        <title>Add Warden</title>
    </head>
    <body>
            <%@include file="../logo.jsp" %>
         <%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Admin Navigation Bar.jsp" %>
       <form id="msform" action="../WordenRegister" method="post">


            <fieldset>
                <h2 class="fs-title">Warden Registration</h2>
                 <input type="text" name="wid" placeholder="Warden ID" required=""/>
                <input type="text" name="name" placeholder="Full Name" />
               
                <input type="email" name="email" placeholder="Email" required="" />
               
                <input type="password" name="password" placeholder="Password" required=""/>

                <input type="text" name="address" placeholder="Address"  />
                <input type="text" name="contact" placeholder="Mobile Number" required="" />
               

                
                `<input type="submit"  class="next action-button" value="Register" />
            </fieldset>
        </form>
    </body>
</html>
