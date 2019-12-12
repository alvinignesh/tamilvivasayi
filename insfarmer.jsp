<%-- 
    Document   : insert
    Created on : Mar 12, 2019, 10:57:39 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body background="images/1234497_indian-farmer-wallpaper.jpg" alt=""/>
        
  <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {margin:0;}

.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}

.navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: #ddd;
  color: black;
}

.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
}
</style>
</head>
</html>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>சேர் </title>
    </head>
    <body>
        <style>
            to{
                padding: 10px;
            }
            div{
                width: 50%;
                border: 1px solid;
                border-radius: 10px;
                background-color: darkcyan;
            }
            </style>
    <center>
        <form action="insfarmerdp.jsp" method="post">
            <table border="7" cellspacing="2" cellpadding="5">
                <table border="1px" style="color: blueviolet;">
                <thead>
                <br><br><br><br>
                    <tr>
                        <th colspan="6" style="font-size: 15px; color: blue;" >விவசாயிகள் விவரம்  </th>
                    </tr>
                </thead>
                </center>
                <tbody>
                <center>
                    <table border="0" cellspacing="2" cellpadding="5">
                <table border="1px" style="color:black;">
                        <br><br><tr>
                        <td>விவசாயி எண் </td>
                        <td><input type="text" name="fid"/></td>
                    </tr><tr>
                        <td> பெயர் </td>
                        <td><input type="text" name="farname"/></td>
                    </tr>
                    <tr>
                        <td>விவசாயின் தேவை  </td>
                        <td><input type="text" name="need"/></td>
                    </tr>
                    </tr><tr>
                        <td> நிவர்த்தி   செய்யப்பட்டதா </td>
                        <td><input type="text" name="sat"/></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="சேமி" /></td>
                        <td><input type="reset" value="மாற்று"/></td>
                    </tr>
            </table>
                </tbody>
        </form>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="farmersdetail.jsp">பின் செல் </a>
        </c:if></font>
</table>
    </center>
</body>

