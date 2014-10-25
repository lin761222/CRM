<%-- 
    Document   : createFail
    Created on : 2014/8/14, 下午 02:23:09
    Author     : programer
--%>

<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>顧客資料建立失敗</title>
    </head>
    <body>
    <center>
        <h1>顧客資料建立失敗</h1>
        <a href="createCustomer.html">返回</a><br>
        建立顧客資料頁面，並修正下列錯誤：<br>
        <%
            LinkedList<String> errors = (LinkedList<String>) request.getAttribute("errors");
        %>


        <table border="1">
            <ul>
                <% for (String error : errors) {%>
                <tr><td><font color="blue"><%=error%></font></td></tr>
                <%}%>
            </ul>
        </table>



    </center>

</body>
</html>
