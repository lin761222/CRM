package com.uuu.test;

import java.io.PrintStream;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TestQuery {

    public static void main(String args[]) {
        PrintStream out = System.out;
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
//        1.建立並註冊Driver
            Class.forName("com.mysql.jdbc.Driver");
//        2.建立Connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crm", "root", "123456");
//        3.建立SQL包裝物(Statement,PreparedStatement,CallableStatement)
            stmt = con.createStatement();
//        4.執行CRUD資料存取邏輯
            rs = stmt.executeQuery("select * from member");
//        5.處理回傳結果
            while (rs.next()) {
                out.print(rs.getString("ID") + "\t");
                out.print(rs.getString("FIRSTNAME") + "\t");
                out.print(rs.getString("LASTNAME") + "\t");
                out.print(rs.getString("STREET") + "\t");
                out.print(rs.getString("CITY") + "\n");
            }
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
}
