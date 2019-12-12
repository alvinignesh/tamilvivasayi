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
            SELECT * from insw;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>தொழிலாளர்  பட்டியல் </caption>
                <tr>
                    <th>தொ எண்</th>
                    <th> பெயர்  </th>
                    <th>பொறுப்பு </th>
                    <th>முகவரி </th>
                    <th colspan="2">செயல் </th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.wid}"/></td>
                        <td><c:out value="${row.name}"/></td>
                        <td><c:out value="${row.position}"/></td>
                        <td><c:out value="${row.address}"/></td>
                         <td><a href="update.jsp?wid=<c:out value="${row.wid}"/>">புதுப்பி </a></td>
                        <td><a href="javascript:confirmGo('Sure to delete this record?','deletedb.jsp?wid=<c:out value="${row.wid}"/>')">நீக்கு </a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="workersdetail.jsp">முகப்பு செல் </a>
    </center>
</body>
</html>
