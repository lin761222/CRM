<%-- 
    Document   : loginFail
    Created on : 2014/8/20, 上午 10:56:29
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
        
        <h1>Oops...登入失敗</h1>
      <%@include  file="/WEB-INF/view/common/footer.jsp" %>
</body>
</html>

