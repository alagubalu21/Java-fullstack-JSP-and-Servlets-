<%-- 
    Document   : viewjsp
    Created on : Jul 5, 2021, 10:33:26 PM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Server</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            
            .tab{
                width:50%;
            }
        </style>
    </head>
    <body>
        
        <%
             if(session.getAttribute("username")==null)
            {
                response.sendRedirect("login.jsp");
            }
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            String roll=request.getParameter("roll");
            String id=session.getAttribute("id").toString();
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/student","jsp","jsp");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from student where rollno='"+roll+"' and staffid='"+id+"'");
           if(rs.next()==true)
           {
           String name=rs.getString(1);
           String rollno=rs.getString(2);
           String dept=rs.getString(3);
           String phone=rs.getString(4);
           String age=rs.getString(5);
           
          %>
        
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="students.jsp">Students</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="view.jsp">View</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="delete.jsp">Delete</a>
      </li>
  </div>
</nav>
        <br>
        <br>
        <center>
        <h1>Student Details</h1><br>
        <div class="tab">
         <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">RollNo</th>
      <th scope="col">Department</th>
      <th scope="col">Phone</th>
      <th scope="col">Age</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      
      <td><%=name%></td>
      <td><%=rollno%></td>
      <td><%=dept%></td>
      <td><%=phone%></td>
      <td><%=age%></td>
    </tr>
    
  </tbody>
</table><%}
            
           else
           {
            %>
            <h1>
            <%
               out.println("No Student Found");
           }%>
            </h1>
        </div>
        <a href="home.jsp">back</a>
    </center>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    </body>
</html>
