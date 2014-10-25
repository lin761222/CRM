<%@page import="com.uuu.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>恭喜您！顧客建立成功</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/view/common/header.jsp">
            <jsp:param name="title" value="恭喜您！顧客建立成功"/>
        </jsp:include>
        <%--<jsp:useBean id="cust" scope="request" class="com.uuu.model.Customer"/>--%>

        <table border="1" >
            <tr><td>姓名</td><td>${cust.name}</td></tr>
            <tr><td>電郵</td><td>${cust.email}</td></tr>
            <tr><td>電話</td><td>${cust.telephone}</td></tr>
            <tr><td>地址</td><td>${cust.address}</td></tr>
            <tr><td>生日</td><td>${cust.birth}</td></tr>
            <tr><td>性別</td><td>${(cust.gender.equals("male")?"男":"女")}</td></tr>
            <tr><td>嗜好</td><td>${cust.habitString}</td></tr>
        </table>
    <%@include  file="/WEB-INF/view/common/footer.jsp" %>
</body>
</html>
