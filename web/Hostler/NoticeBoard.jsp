<%-- 
    Document   : NoticeBoard
    Created on : Mar 9, 2018, 1:06:27 AM
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
        <title>Hostler Notice</title>
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
                background-color: #A18C57;
                color: white;

            }
            tr:hover {background-color: #E9EBEE;}
            tr:nth-child(even) {background-color: #f2f2f2;}
            td {
                height: 35px;
            }
            
        </style>
    </head>
    <body>
         <%@include file="../logo.jsp" %>
         <%@include file="Home Navigation Bar.jsp" %>
         <%@include file="Hostler Navigation Bar.jsp" %>
        
        <div style="overflow-x:auto;">
            <table  >
                <tr >

                    
                    <th >Title</th>
                    
                    <th >Notice</th>


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

                    
                    <td style="height: 100px;width: 100px" ><%= hn.getTitle()%></td>
                    <td style="height: 100px;width: 400px"><%= hn.getNotice()%></td>
                    


                <% }
                %>

            </table>
        </div>
    </body>
</html>


