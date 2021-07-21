<%-- 
    Document   : login
    Created on : Jul 6, 2021, 12:54:29 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
        <center>
        <h1>Login</h1>
         <form action="loginjsp.jsp" method="post">
            <table >
                <tr><td>User Name:</td><td><input type="text" name="uname" required></td></tr>
                <tr><td>Password: </td><td> <input type="password" name="password" required></td></tr>
           
            </table>
            <br>
            <input type="submit" class="btn btn-primary" value="Login">
            <a href="Signup.jsp">New User?</a>
        </form>
    </center>
    </body>
</html>
