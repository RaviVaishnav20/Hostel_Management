<%-- 
    Document   : adminHostler
    Created on : Mar 6, 2018, 11:54:23 PM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <link rel="stylesheet" href="../indexcss.css">
        <link rel="stylesheet" href="/w3css/3/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <title>Admin</title>
    </head>
    <body>
           <%@include file="../logo.jsp" %>
        <%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Admin Navigation Bar.jsp" %>
      
             <div  class="middle">
    
                 <center>      <a href="addhostler.jsp" style="border: 2px double #000; size: 50px; margin: 10pt; border-radius: 0pt;background-color: #93C903">Add Hostler</a>
       
        <a href="viewhostler.jsp" style="border: 2px double #000; size: 50px; margin: 10pt; border-radius: 0pt;background-color: #93C903">View Hostler</a>
        </center>
    </div>
        <footer class="w3-container w3-padding-64 w3-center w3-black w3-xlarge" style="height:50px">
        <a href="#"><i class="fa fa-facebook-official"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-flickr"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        
    </footer>
</body>
</html>

