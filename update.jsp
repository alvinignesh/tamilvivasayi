<%-- 
    Document   : update
    Created on : Mar 12, 2019, 11:00:25 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="images/koeien-vrolijk-naar-buiten-tijdens-opening-boerenseizoen-2-1200x630.jpeg" alt=""/>
         <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/mysql"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from insw where wid=?;
            <sql:param value="${param.wid}" />
        </sql:query>
        <form action="updatedb.jsp" method="post">
            <table border="0" width="40%">
                <caption>Update </caption>
                <tr>
                     <th>wid</th>
                     <th>name</th>
                      <th>position</th>
                    <th>address</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="text" value="${row.wid}" name="wid"/></td>
                        <td><input type="text" value="${row.name}" name="name"/></td>
                        <td> <input type="text" value="${row.position}" name="position"/></td>
                        <td><input type="text" value="${row.address}" name="address"/></td>
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            <a href="workersdetail.jsp">Go Home</a>
        </form
    </body>
</html>
