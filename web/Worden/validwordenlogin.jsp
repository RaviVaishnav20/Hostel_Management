<%-- 
    Document   : wordenlogin
    Created on : Mar 7, 2018, 11:34:19 PM
    Author     : Ravi
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Worden Login</title>
<head>
    <link rel="stylesheet" href="../indexcss.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 10%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 10%;
    border-radius: 10%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
 <%@include file="../logo.jsp" %>
 <%@include file="Home Navigation Bar.jsp" %>
            
  <center><h2>Warden Login Form</h2>  </center>

  <form action="../WordenLoginn" method="post">
  <div class="imgcontainer">
    <img src="../image/worden2.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    
      <center>  <input type="text" placeholder="Enter Username" name="uid" required><br/>

    
    <input type="password" placeholder="Enter Password" name="pass" required><br/>
        
    <button type="submit">Login</button>
     <h5 style="color: red">Wrong id password...!!!!</h5>
      </center>
    
</form>

</body>
</html>


