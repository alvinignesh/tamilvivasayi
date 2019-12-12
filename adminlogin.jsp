<%-- 
    Document   : admin
    Created on : Feb 4, 2019, 1:17:07 AM
    Author     : ELUMALAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>நிர்வாக நுழைவு</title>
    </head>
      <body background="images/head-3-new1.jpg" alt=""/>
    <center>
        <table border="2">
            <theader>
                <td>  <h1> உள்நுழைவு சரிபார்ப்பு </h1></td>
            </theader>
        <form action="adminverify.jsp" method="get">
        <tr>
            <td>   பயனர்பெயரை உள்ளிடவும் :<input type="text" name="uname"/></td>
        </tr>
        <tr>
            <td> <br/>கடவுச்சொல்லை உள்ளிடவும் :<input type="password" name="pass"/></td>
        </tr>  
        <tr>
            <td> <br/><input type="submit" value="உள் நுழை"/></td>
        </tr>
            
        </form>
    </body>
</table>
     </center>
</html>
