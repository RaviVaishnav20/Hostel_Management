<%-- 
    Document   : viewdailyfood
    Created on : Mar 7, 2018, 2:49:21 PM
    Author     : Ravi
--%>

<%@page import="DAO.FoodOperation"%>
<%@page import="DAO.FoodDeclaration"%>
<%@page import="Beans.AddDailyFood"%>
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
        <title>View daily food</title>
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
                background-color: #FBBC05;
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
         <%@include file="../logo.jsp" %>
      <%@include file="Home Navigation Bar.jsp" %>
            <%@include file="Warden Navigation Bar.jsp" %>
        <div style="overflow-x:auto;">
            <table  >
                <tr >

                    <th >Food ID</th>
                    <th >Day</th>
                    <th >Food Name</th>
                    <th >Description</th>

                    <th >Update</th>
                    <th >Delete</th>

                </tr>
                <%
                    AddDailyFood ad = new AddDailyFood();
                    FoodOperation fo = new FoodOperation();
                    List li = fo.selectAllFood();
                    ListIterator lit = li.listIterator();
                    while (lit.hasNext()) {
                        ad = (AddDailyFood) lit.next();


                %>
                <tr>

                    <td ><%= ad.getFid()%></td>
                    <td ><%= ad.getDay()%></td>
                    <td><%= ad.getFoodname()%></td>
                    <td ><%= ad.getDescription()%></td>


                    <td ><a class="update" href="updatedailyfood.jsp?id=<%= ad.getFid()%>">Update</a></td>
                    <td> <a class="delete" href="deletedailyfood.jsp?id=<%= ad.getFid()%>">Delete</a></td>
                </tr>
                <% }
                %>

            </table>
        </div>
    </body>
</html>
