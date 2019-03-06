<%-- 
    Document   : viewworden
    Created on : Mar 7, 2018, 1:09:28 AM
    Author     : Ravi
--%>




<%@page import="DAO.WordenOperation"%>
<%@page import="Beans.AddWorden"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <link rel="stylesheet" href="../indexcss.css">
        <link rel="stylesheet" href="/w3css/3/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <title>View Warden</title>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th,td{
                padding: 10px;
                border-bottom: 1px solid #ddd;

            }
            th {
                height: 50px;
                text-align: left;
                background-color: #4267B2;
                color: white;

            }
            tr:hover {background-color: #E9EBEE;}
            tr:nth-child(even) {background-color: #f2f2f2;}
            td {
                height: 35px;
            }
            .update,.delete{
                border-radius:5px;
                padding: 3px;


            }
            .update{
                background-color: greenyellow;
                border: thin solid green;
            }
            .delete{
                border: thin solid red;
                background-color: red;
            }
        </style>
    </head>
    <body>
        
      <body>

           <%@include file="../logo.jsp" %>
          <%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Admin Navigation Bar.jsp" %>
        <div style="overflow-x:auto;">
            <table  >
                <tr >

                    <th >Warden ID</th>
                    <th >Name</th>
                    <th >Email</th>
                    <th >Password</th>
                    <th >Address</th>
                    <th >Contact</th>
                    <th >Update</th>
                    <th >Delete</th>

                </tr>
                <%
                    AddWorden ad = new AddWorden();
                    WordenOperation wo = new WordenOperation();
                    List li = wo.selectAllWorden();
                    ListIterator lit = li.listIterator();
                    while (lit.hasNext()) {
                        ad = (AddWorden) lit.next();


                %>
                <tr>

                    <td ><%= ad.getWid()%></td>
                    <td><%= ad.getName()%></td>
                    <td ><%= ad.getEmail()%></td>


                    <td ><%= ad.getPassword()%></td>
                    <td ><%= ad.getAddress()%></td>
                    <td ><%= ad.getContact()%></td>

                    <td ><a class="update" href="updateworden.jsp?id=<%= ad.getWid()%>">Update</a></td>
                    <td> <a class="delete" href="deleteworden.jsp?id=<%= ad.getWid()%>">Delete</a></td>
                </tr>
                <% }
                %>

            </table>
        </div>
    </body>
</html>
