
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
        <title>測試連練階段SQL</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/view/common/header.jsp">
            <jsp:param name="title" value="測試連練階段SQL"/>
        </jsp:include>

        <form action="testQuery.jsp" method="post">
            請輸入查詢：<input type="text" name="sql" value="${param.sql}" size="60"/>
            <input type="submit" value="查詢"/>
        </form>
        <%
            String sqlString = request.getParameter("sql");
            if (sqlString != null) {
                Connection con = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
//        1.建立並註冊Driver
                    //Class.forName("com.mysql.jdbc.Driver");
//        2.建立Connection
                    //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crm", "root", "123456");
                    InitialContext ic = new InitialContext();
                    DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/crmDB");
                    con = ds.getConnection();
//        3.建立SQL包裝物(Statement,PreparedStatement,CallableStatement)
                    stmt = con.createStatement();
//        4.執行CRUD資料存取邏輯
                    rs = stmt.executeQuery(sqlString);
                    ResultSetMetaData rsmd = rs.getMetaData();
                    int columnCount = rsmd.getColumnCount();
//        5.處理回傳結果
                    out.println("<table border=1>");
                    while (rs.next()) {
                        out.println("<tr>");
                        for(int i=1;i<=columnCount;i++){
                        out.println("<td>" + rs.getString(i) + "</td>");
                        }
//                        out.print("<td>" + rs.getString("FIRSTNAME") + "</td>");
//                        out.print("<td>" + rs.getString("LASTNAME") + "</td>");
//                        out.print("<td>" + rs.getString("STREET") + "</td>");
//                        out.print("<td>" + rs.getString("CITY") + "</td>");
                        out.println("</tr>");
                    }
                    out.println("</table>");
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    //        6.關閉所有連線物件
                    if (rs != null) {
                        try {
                            rs.close();
                        } catch (SQLException ex) {
                            ex.printStackTrace();
                        }
                        if (stmt != null) {
                            try {
                                stmt.close();
                            } catch (SQLException ex) {
                                ex.printStackTrace();
                            }
                        }
                        if (con != null) {
                            try {
                                con.close();
                            } catch (SQLException ex) {
                                ex.printStackTrace();
                            }
                        }
                    }
                }
            }
        %>
        <%@include  file="/WEB-INF/view/common/footer.jsp" %>
    </body>
</html>
