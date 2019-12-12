<%-- 
    Document   : wel
    Created on : Feb 11, 2019, 2:24:59 AM
    Author     : ELUMALAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%! String uname,pass;%>
   <%
       uname=request.getParameter("uname");
       pass=request.getParameter("pass");
       %>
       Welcome ,<%=uname%>
       <br/>
       Your password is :<%=pass%>
    </body>
</html>
