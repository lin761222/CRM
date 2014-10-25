<%-- 
    Document   : a
    Created on : 2014/8/19, 上午 09:14:35
    Author     : programer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>測試連練階段a.jsp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/view/common/header.jsp">
            <jsp:param name="title" value="測試連練階段a.jsp"/>
        </jsp:include>

        <form action='b.jsp' method="POST">
            <table border='1'>
                <tr>
                    <td>姓名</td>
                    <td><input type='text' name="name" value="${param.name}"></td>
                </tr>
                <tr>
                    <td>電郵</td>
                    <td><input type='text' name="email" value="${param.email}"></td>
                </tr>
                    <td><input type="submit" value='OK'/></td>
                    <td><input type='reset' value='Cancel'/></td>
                </tr>
            </table>
        </form>
      <%@include  file="/WEB-INF/view/common/footer.jsp" %>
</body>
</html>

