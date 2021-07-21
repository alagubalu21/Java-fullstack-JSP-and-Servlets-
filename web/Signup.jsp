<%-- 
    Document   : Signup.jsp
    Created on : Jul 6, 2021, 12:24:25 PM
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
        <h1>Signup!</h1>
         <form action="signupjava" mmethod="post">
            <table >
                <tr><td>
                        Staff Id:</td> <td> <input type="text" name="id" required></td></tr>
                <tr><td>User Name:</td><td><input type="text" name="uname" required></td></tr>
                <tr><td>Password: </td><td> <input type="password" name="password" required></td></tr>
           <tr><td> Confirm Password: </td><td> <input type="password" name="confirmpassword" required></td></tr>
           
            
            </table>
            <br>
            <input type="submit">
        </form>
    </center>
        
    </body>
</html>
