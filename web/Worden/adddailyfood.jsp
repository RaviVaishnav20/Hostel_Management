<%-- 
    Document   : adddailyfood
    Created on : Mar 7, 2018, 2:02:00 PM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="bgfood">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="wordencss.css">
        <link rel="stylesheet" type="text/css" href="foodcss.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <link rel="stylesheet" href="../indexcss.css">
        <link rel="stylesheet" href="/w3css/3/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

        <title>Add Daily Food</title>
    </head>
    <body>
            <%@include file="../logo.jsp" %>
        <%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Warden Navigation Bar.jsp" %>
        <form id="msform" action="../DailyFoodRegister" method="post">


            <fieldset>
                <h2 class="fs-title">Register Daily Food</h2>
                <input type="text" name="fid" placeholder="Food ID"  required="" />
                 <input type="text" name="day" placeholder="Day" />
                <input type="text" name="foodname" placeholder="Food Name" />
                <textarea type="text" name="description" placeholder="Food Description" ></textarea>
                <input type="submit"  class="next action-button" value="Register" />
            </fieldset>
        </form>
    </body>
</html>
