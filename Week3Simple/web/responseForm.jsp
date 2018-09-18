<%-- 
    Document   : responseForm
    Created on : Sep 17, 2018, 7:32:22 PM
    Author     : Ashlee
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="edu.wctc.simple.Students"%>
<%@ page import="edu.wctc.simple.Individual" %>
<%@ page import="edu.wctc.simple.FindColumns" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Week 4</title>
</head>
<body>

<h1>Student Search</h1>
<a href="simple?message=This is a message">Student Search</a>

<% Students theStudents = new Students(); %>

<%
    ArrayList<Individual> result = null;
    String searchvalue = request.getParameter("searchtext");
    String findvalue = request.getParameter("parameter");
    FindColumns cols = null;
    if(findvalue=="Account Number") cols = FindColumns.ACCTNUM;
     else
         if(findvalue=="Last Name") cols = FindColumns.LNAME;
          else
              if(findvalue=="First Name") cols = FindColumns.FNAME;
                else
                    if(findvalue=="E-Mail") cols = FindColumns.EMAIL;
                        else
                            if(findvalue=="iPadDr") cols = FindColumns.IPADDR;
%>

    <% result = theStudents.findStudents(cols, searchvalue);%>
<table border='1'><tr><th>Account Number</th><th>First Name</th><th>Last Name</th><th>E-Mail</th><th>iPadDr</th>
    <% for (Individual i: result)
    {
        out.println("<tr>"+"<td>"+ i.getAccountNumber() + "</td>" + " " + "<td>" + i.getFname() + "</td>" + " " + "<td>" +
                i.getLname() + "</td>"+ "<td>"+ i.getEmail() + "</td>" +"<td>"+ i.getIpAddress() + "</td>" + "</tr>");
    }
%>

</table>

</body>
</html>