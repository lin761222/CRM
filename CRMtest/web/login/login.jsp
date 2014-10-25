<%-- 
    Document   : login
    Created on : 2014/8/20, 上午 10:56:03
    Author     : programer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>登入頁面</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/view/common/header.jsp">
            <jsp:param name="title" value="登入頁面"/>
        </jsp:include>

        <form action='j_security_check' method="POST">
            <table border='1'>
                <tr>
                    <td>帳號</td>
                    <td><input type='text' name="j_username" value=""></td>
                </tr>
                <tr>
                    <td>密碼</td>
                    <td><input type='password' name="j_password" value=""></td>
                </tr>
                    <td><input type="submit" value='登入'/></td>
                    <td><input type='reset' value='重設'/></td>
                </tr>
            </table>
        </form>
      <%@include  file="/WEB-INF/view/common/footer.jsp" %>
</body>
</html>

