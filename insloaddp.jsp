<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page pageEncoding="UTF-8" language="java" import="java.sql.*"%> 
<%@page contentType="text/html;charset=UTF-8"%>
<%
    String proid = "";
    String proname = "";
    String rate = "";
    String hts = "";
    String qua = "";
    proid = new String(request.getParameter("proid"));
    proname = new String(request.getParameter("proname"));
    rate = new String(request.getParameter("rate"));
    hts = new String(request.getParameter("hts"));
    qua = new String(request.getParameter("qua"));
    //out.println(wid);
    java.sql.Connection conn = null;
    java.sql.Statement stmt = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String jdbc = "jdbc:mysql://localhost:3306/mysql?user=root&password=";
        String jdbcutf8 = "&useUnicode=true&characterEncoding=UTF-8";
        conn = DriverManager.getConnection(jdbc + jdbcutf8);
        stmt = conn.createStatement();
        String sqlInsert = "INSERT INTO `insload`(`proid`, `proname`, `rate`, `hts`,`qua`) VALUES ('"+proid+"','"+proname+"','"+rate+"','"+hts+"','"+qua+"')";           
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