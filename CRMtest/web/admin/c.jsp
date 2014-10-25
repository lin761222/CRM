<%-- 
    Document   : c
    Created on : 2014/8/19, 上午 09:14:54
    Author     : programer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>測試連練階段c.jsp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/view/common/header.jsp">
            <jsp:param name="title" value="測試連練階段c.jsp"/>
        </jsp:include>
        <%
            session.setAttribute("telephone", request.getParameter("telephone"));
            session.setAttribute("address", request.getParameter("address"));
        %>
            <table border='1'>
                <tr>
                    <td>姓名</td>
                    <td>${sessionScope.name}</td>
                </tr>
                <tr>
                    <td>電郵</td>
                    <td>${sessionScope.email}</td>
                <tr>
                    <td>電話</td>
                    <td>${sessionScope.telephone}</td>
                </tr>
                <tr>
                    <td>地址</td>
                    <td>${sessionScope.address}</td>
            </table>
      <%@include  file="/WEB-INF/view/common/footer.jsp" %>
</body>
</html>

