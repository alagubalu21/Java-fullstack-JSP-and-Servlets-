<%-- 
    Document   : home
    Created on : Jul 5, 2021, 2:18:18 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Server</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
    </head>
    <body>
         <% 
            String username="";
            if(session.getAttribute("username")==null)
            {
                response.sendRedirect("login.jsp");
            }
            else
            {
                username=session.getAttribute("username").toString(); 
            }
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
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
      <li class="nav-item pull-right">
        <a class="nav-link" href="logout">Logout</a>
      </li>
  </div>
</nav>
        <br>
        <br>
    <center>
       
        <h1>Welcome <%=username%></h1>
        <h1>Enter Details!</h1>
        <form action="enter.jsp" >
            <table >
                <tr><td>
                        Name:</td> <td> <input type="text" name="name" required></td></tr>
                <tr><td>Rollno:</td><td><input type="text" name="roll" required></td></tr>
                <tr><td>Dept: </td><td> <input type="text" name="dept" required></td></tr>
           <tr><td> Phone: </td><td> <input type="text" name="phone" required></td></tr>
           <tr><td>Age:</td><td><input type="text" name="age" required></td></tr>
            
            </table>
            <br>
            <input type="submit" class="btn btn-primary">
        </form>
    </center>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
