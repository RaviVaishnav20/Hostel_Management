<%-- 
    Document   : UploadHostlerNotice
    Created on : Mar 7, 2018, 3:15:38 PM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="wordencss.css">
        <link rel="stylesheet" type="text/css" href="noticecss.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <link rel="stylesheet" href="../indexcss.css">
        <link rel="stylesheet" href="/w3css/3/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

        <title>Upload Hostler Notice</title>
    </head>
    <body>
            <%@include file="../logo.jsp" %>
       <%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Warden Navigation Bar.jsp" %>
        <form id="msform" action="../HNBconn" method="post">


            <fieldset>
                <h2 class="fs-title">Hostler Notice Board</h2>
               
                <div >
<br/>
        <input type="text" name="title" placeholder=" Enter Notice Title..." ><br/><br/>
<textarea name="notice"  rows="10" cols="30" placeholder=" Enter Notice Details..." maxlength="500" >
</textarea>
<br/><br/>
    </div>
                <input type="submit"  class="next action-button" value="Register" />
            </fieldset>
        </form>
    </body>
</html>
