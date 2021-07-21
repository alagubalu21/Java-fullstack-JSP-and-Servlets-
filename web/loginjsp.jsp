<%-- 
    Document   : loginjsp
    Created on : Jul 6, 2021, 1:18:43 PM
    Author     : HP
--%>


<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username=request.getParameter("uname");
            String password=request.getParameter("password");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/student","jsp","jsp");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select username,password,id from staff where username='"+username+"'");
            rs.next();
            if(rs.getString(1).equals(username)&&rs.getString(2).equals(password))
            {
                String staffid=rs.getString(3);
                session.setAttribute("id",staffid);
                session.setAttribute("username",username);
                response.sendRedirect("home.jsp");
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
