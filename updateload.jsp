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
            SELECT * from insload where proid=?;
            <sql:param value="${param.proid}" />
        </sql:query>
        <form action="updateloaddb.jsp" method="post">
            <table border="0" width="40%">
                <caption>புதுப்பி </caption>
                <tr>
                     <th>பொருள் எண் </th>
                     <th>பெயர் </th>
                      <th>விலை</th>
                    <th>அதிர்வெண் </th>
                    <th>சக்தி </th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="text" value="${row.proid}" name="proid"/></td>
                        <td><input type="text" value="${row.proname}" name="proname"/></td>
                        <td> <input type="text" value="${row.rate}" name="rate"/></td>
                        <td><input type="text" value="${row.hts}" name="hts"/></td>
                         <td><input type="text" value="${row.qua}" name="qua"/></td>
                        <td><input type="submit" value="புதுப்பி"/></td>
                    </tr>
                </c:forEach>
            </table>
            <a href="loaddetail.jsp">முகப்பு  செல் </a>
        </form
    </body>
</html>
