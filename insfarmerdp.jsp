<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page pageEncoding="UTF-8" language="java" import="java.sql.*"%> 
<%@page contentType="text/html;charset=UTF-8"%>
<%
    String fid = "";
    String farname = "";
    String need = "";
    String sat = "";
   
    fid = new String(request.getParameter("fid"));
    farname = new String(request.getParameter("farname"));
    need = new String(request.getParameter("need"));
    sat = new String(request.getParameter("sat"));
    
    //out.println(wid);
    java.sql.Connection conn = null;
    java.sql.Statement stmt = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String jdbc = "jdbc:mysql://localhost:3306/mysql?user=root&password=";
        String jdbcutf8 = "&useUnicode=true&characterEncoding=UTF-8";
        conn = DriverManager.getConnection(jdbc + jdbcutf8);
        stmt = conn.createStatement();
        String sqlInsert = "INSERT INTO `insf`(`fid`, `farname`, `need`, `sat`) VALUES ('"+fid+"','"+farname+"','"+need+"','"+sat+"')";           
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