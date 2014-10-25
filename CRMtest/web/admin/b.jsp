<%-- 
    Document   : b
    Created on : 2014/8/19, 上午 09:14:48
    Author     : programer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>測試連練階段b.jsp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/view/common/header.jsp">
            <jsp:param name="title" value="測試連練階段b.jsp"/>
        </jsp:include>
        <%
            session.setAttribute("name", request.getParameter("name"));
            session.setAttribute("email", request.getParameter("email"));
        %>
        <form action='c.jsp' method="POST">
            <table border='1'>
                <tr>
                    <td>電話</td>
                    <td><input type='text' name="telephone" value="${param.telephone}"></td>
                </tr>
                <tr>
                    <td>地址</td>
                    <td><input type='text' name="address" value="${param.address}"></td>
                </tr>
                    <td><input type="submit" value='OK'/></td>
                    <td><input type='reset' value='Cancel'/></td>
                </tr>
            </table>
        </form>
      <%@include  file="/WEB-INF/view/common/footer.jsp" %>
</body>
</html>

