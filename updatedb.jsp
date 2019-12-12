<%-- 
    Document   : updatedb
    Created on : Mar 12, 2019, 11:01:28 AM
3239/    Author     : hp2
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
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/mysql"
                           user="root"  password=""/>
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE insw SET wid=?,name=?,position=?,address=?
            WHERE wid='${param.wid}'
          <sql:param value="${param.wid}" />
            <sql:param value="${param.name}" />
             <sql:param value="${param.position}" />
            <sql:param value="${param.address}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="workersdetail.jsp">Go Home</a>          
        </c:if>
    </body>
</html>
