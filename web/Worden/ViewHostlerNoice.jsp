<%-- 
    Document   : ViewHostlerNoice
    Created on : Mar 7, 2018, 9:06:51 PM
    Author     : Ravi
--%>

<%@page import="DAO.NoticeboardOperation"%>
<%@page import="Beans.HostlerNotice"%>
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
        <title>View Hostler Notice</title>
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

                    <th >Notice ID</th>
                    <th >Title</th>
                    
                    <th >Notice</th>

                    <th >Update</th>
                    <th >Delete</th>

                </tr>
                <%
                   HostlerNotice hn=new HostlerNotice();
                   NoticeboardOperation nbn = new NoticeboardOperation();
                    List li = nbn.selectAllHnotice();
                    ListIterator lit = li.listIterator();
                    while (lit.hasNext()) {
                        hn = (HostlerNotice) lit.next();


                %>
                <tr>

                    <td ><%= hn.getNoteid()%></td>
                    <td ><%= hn.getTitle()%></td>
                    <td><%= hn.getNotice()%></td>
                    


                    <td ><a class="update" href="updateHnotice.jsp?id=<%= hn.getNoteid()%>">Update</a></td>
                    <td> <a class="delete" href="deleteHnotice.jsp?id=<%= hn.getNoteid()%>">Delete</a></td>
                </tr>
                <% }
                %>

            </table>
        </div>
    </body>
</html>

