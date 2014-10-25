
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>建立帳號</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/view/common/header.jsp">
            <jsp:param name="title" value="建立帳號"/>
        </jsp:include>
        <c:if test="${errors!=null}">
            修正下列錯誤：<br>
            <table border="1">
                <ul>
                    <c:forEach items="${errors}" var="error">
                        <tr><td>
                                <font color="red">${error}</font></td></tr>
                            </c:forEach>
                </ul>
            </table>
        </c:if>
        
        <form action='ccController' method="POST">
            <input type="hidden" name="action" value="create_account"/>
            <table border='1'>
                <tr>
                    <td>帳號</td>
                    <td><input type='text' name="account" value="${param.account}"></td>
                </tr>
                <tr>
                    <td>密碼</td>
                    <td><input type='password' name="password" value=""></td>
                </tr>
                <td><input type="submit" value='OK'/></td>
                <td><input type='reset' value='Cancel'/></td>
                </tr>
            </table>
        </form>
        <%@include  file="/WEB-INF/view/common/footer.jsp" %>
    </body>
</html>

