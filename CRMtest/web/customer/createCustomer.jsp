<%-- 
    Document   : createCustomer
    Created on : 2014/8/15, 上午 09:26:07
    Author     : programer
--%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>新增客戶資料</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/view/common/header.jsp">
            <jsp:param name="title" value="新增客戶資料"/>
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
            <input type="hidden" name="action" value="create_customer"/>
            <table border='1'>
                <tr>
                    <td>姓名</td>
                    <td><input type='text' name="name" value="${param.name}"></td>
                </tr>
                <tr>
                    <td>電郵</td>
                    <td><input type='text' name="email" value="${param.email}"></td>
                </tr>
                <tr>
                    <td>電話</td>
                    <td><input type='text' name="phone" value="${param.phone}"></td>
                </tr>
                <tr>
                    <td>地址</td>
                    <td><input type='text' name="address" value="${param.address}"></td>
                </tr>
                <tr>
                    <td>生日</td>
                    <td>
                        <input type='text' name="year" value="${param.year}" size="2">年
                        <select name="month">

                            <c:set var="defaultMonth" value="6"/>
                            <c:set var="monthString" value="${param.month}"/>
                            <c:if test="${monthString != null}">
                                <c:set var="defaultMonth" value="${monthString}"/>
                            </c:if>
                            <c:forEach begin="1" end="12" step="1" var="i">
                                <option value="${i}" ${ (i == defaultMonth) ? "selected" : ""}>${i}</option>
                            </c:forEach>
                        </select>月

                        <select name="day">

                            <c:set var="defaultDay" value="16"/>
                            <c:set var="dayString" value="${param.day}"/>
                            <c:if test="${dayString != null}">
                                <c:set var="defaultDay" value="${dayString}"/>
                            </c:if>
                            <c:forEach begin="1" end="31" step="1" var="i">
                                <option value="${i}" ${ (i == defaultDay) ? "selected" : ""}>${i}</option>
                            </c:forEach>



                        </select>日
                    </td>
                </tr>
                <tr>
                    <td>性別</td>
                    <td>
                        <c:set var="gender" value="${param.gender}"/>
                        <c:if test = "${ gender!=null }">
                            <c:choose>
                                <c:when test="${gender.equals ('male')}">
                                    <c:set var="isMale" value="checked"/>
                                </c:when>
                                <c:otherwise>
                                    <c:set var="isFemale" value="checked"/>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <input type='radio' name="gender" value='male' ${isMale} />男
                        <input type='radio' name="gender" value='female' ${isFemale} />女
                    </td>

                </tr>
                <tr>
                    <td>嗜好</td>
                    <td>
                        
                        <c:set var="habits" value="${paramValues.habit}"/>
                        <c:if test="${habits != null}">
                            <c:forEach items="${habits}" var="habit">
                                <c:if test="${habit.equals('music')}">
                                    <c:set var="isMusic" value="checked"/>
                                </c:if>
                                <c:if test="${habit.equals('shopping')}">
                                    <c:set var="isShopping" value="checked"/>
                                </c:if>
                                <c:if test="${habit.equals('reading')}">
                                    <c:set var="isReading" value="checked"/>
                                </c:if>
                            </c:forEach>
                        </c:if>
                        <input type='checkbox' name="habit" value='music' ${isMusic}/>聽音樂
                        <input type='checkbox' name="habit" value='shopping' ${isShopping}/>購物
                        <input type='checkbox' name="habit" value='reading' ${isReading}/>閱讀
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value='OK'/></td>
                    <td><input type='reset' value='Cancel'/></td>
                </tr>
            </table>
        </form>
        <%@include  file="/WEB-INF/view/common/footer.jsp" %>
    </body>
</html>

