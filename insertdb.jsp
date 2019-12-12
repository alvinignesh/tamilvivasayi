<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page pageEncoding="UTF-8" language="java" import="java.sql.*"%> 
<%@page contentType="text/html;charset=UTF-8"%>
<%
    String wid = "";
    String name = "";
    String position = "";
    String address = "";
    wid = new String(request.getParameter("wid"));
    name = new String(request.getParameter("wname"));
    position = new String(request.getParameter("position"));
    address = new String(request.getParameter("address"));

    //out.println(wid);
    java.sql.Connection conn = null;
    java.sql.Statement stmt = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String jdbc = "jdbc:mysql://localhost:3306/mysql?user=root&password=";
        String jdbcutf8 = "&useUnicode=true&characterEncoding=UTF-8";
        conn = DriverManager.getConnection(jdbc + jdbcutf8);
        stmt = conn.createStatement();
        String sqlInsert = "INSERT INTO `insw`(`wid`, `name`, `position`, `address`) VALUES ('"+wid+"','"+name+"','"+position+"','"+address+"')";           
       // System.out.println(sqlInsert);
        if (stmt.executeUpdate(sqlInsert) > 0) {
            out.println("Successfully Saved...");            
        } else {
            out.println("Not Saved");
        }
        conn.close();
    } catch (Exception ex) {
        out.println("error" + ex);
    } finally {
        conn.close();
    }
    
%> 