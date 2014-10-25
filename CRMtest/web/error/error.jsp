<%-- 
    Document   : error
    Created on : 2014/8/14, 上午 11:03:27
    Author     : programer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>This is an error handling page</title>
    </head>
    <body bgcolor='orange'>
        <h1>This is an error handling page</h1>
        The root cause: <%= exception.getMessage() %>
    </body>
</html>
