<%-- 
    Document   : verify
    Created on : Feb 11, 2019, 2:21:42 AM
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
            if(uname.equals("9585734330")&&pass.equals("123"))
            {
            %>
            <jsp:forward page="welcome.jsp"/>
   <%} else
{%>
உங்களுக்கு அனுமதி இல்லை இது நிர்வாக பயன்பாட்டிற்க்கு மட்டும்!!!!!!
<jsp:include page="adminlogin.jsp"/>
<%}%>
    </body>
</html>
