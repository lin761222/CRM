<%-- 
    Document   : ntn
    Created on : 2014/8/14, 上午 11:33:29
    Author     : programer
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>九九乘法表</title>  
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/view/common/header.jsp">
            <jsp:param name="title" value="九九乘法表"/>
        </jsp:include>
<span style="margin-top:60px;font-family:Verdana;font-size:0.7em;color: brown">${param.title}</span>
        <img src='image/cars.jpg' width=300><br>
        <table border='1'
               <% for (int i = 1; i <= 9; i++) { %>
               <tr>
                <% for (int j = 1; j <= 9; j++) {%>    
                <td><%=i%> *<%=j%> = </td><td><%=i * j%></td>
                <%}%>
            </tr>
            <%}%>
        </table>
        ${initParam.filePath}<br/> <%--用小數點--%>
        ${initParam['filePath']}<br/> <%--用中括號--%>

        ${initParam[filePath]}<br/> <%--空字串--%>
        ${header["user-agent"]}<br/> 
        ${initParam.user-Alex}<br/> <%--減號會被當運算子，自動處理NullPointerException轉為0--%>
        <%
            String ten = "10";
            String five = "5";
            request.setAttribute("a", ten);
            request.setAttribute("b", five);
            String[] fruits = {"apple", "watermelen", "cherry", "strawberry", "lemen"};
            request.setAttribute("fruit", fruits);
        %>
        ${fruit[1]} <br>
        ${fruit['2']} <br>
        ${fruit["3"]} <br>
        ${a-b} <br>

    <%@include  file="/WEB-INF/view/common/footer.jsp" %>
</body>
</html>
