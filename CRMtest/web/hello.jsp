<%-- 
    Document   : hello
    Created on : 2014/8/14, 上午 10:05:36
    Author     : programer
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" errorPage="/error/error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%! int a = 100; %>
        <% int a = 500; %>
        a= <%= a/0 %><br>
        Today is <%=new SimpleDateFormat().format(new Date()) %>
        <!-- html comment-->
        <% //java comment %>
        <%-- jsp comment --%>
    </body>
</html>
