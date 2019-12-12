<%-- 
    Document   : display
    Created on : Feb 19, 2019, 1:43:45 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SELECT Operation</title>
        <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
    </head>
 <body background="images/head-3-new22.jpg" alt=""/>
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/mysql"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from insload;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption> </caption>
                <tr>
                    <th>பொருள் எண்</th>
                    <th> பெயர்  </th>
                    <th>விலை </th>
                    <th>அதிர்வெண் </th>
                     <th>சக்தி </th>
                  
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.proid}"/></td>
                        <td><c:out value="${row.proname}"/></td>
                        <td><c:out value="${row.rate}"/></td>
                        <td><c:out value="${row.hts}"/></td>
                         <td><c:out value="${row.qua}"/></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="loaddetail.jsp">முகப்பு செல் </a>
    </center>
</body>
</html>
