<%-- 
    Document   : enter
    Created on : Jul 5, 2021, 6:33:40 PM
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
        
    <center>
        <% 
            String name=request.getParameter("name");
            String rollno=request.getParameter("roll");
            String dept=request.getParameter("dept");
            String phone=request.getParameter("phone");
            String age=request.getParameter("age");
            String id=session.getAttribute("id").toString();
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/student","jsp","jsp");
            Statement st=con.createStatement();
            int i=st.executeUpdate("Insert into student values('"+name+"','"+rollno+"','"+dept+"','"+phone+"','"+age+"','"+id+"')");
            response.sendRedirect("home.jsp");
        %>
        
        </center>
    </body>
</html>
