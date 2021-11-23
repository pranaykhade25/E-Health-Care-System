<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Database</title>

<link rel="stylesheet" type="text/css" >

</head>

<style>

body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: DodgerBlue;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #009900;;
  color: white;
}
.bg-img{
   background-image: url('MedexLogo.png');
   min-height: 777px;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   position: relative;
}
div.content {

  
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}


@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}

</style>
</head>
<body>

<div class="sidebar">
  <a class="active">DashBoard</a>
  <a href="AddDoctor.jsp" target="_blank">Add Doctor(s)</a>
  <a href="ViewApt.jsp" target="_blank">View Appointments</a>
  <a href="ViewPat.jsp" target="_blank">View Patients</a>
  <a href="ViewDoct.jsp" target="_blank">View Doctors</a>
  <a href="ViewApplication.jsp" target="_blank">View Applications</a>
  <a href="AdminLogout.jsp">Logout</a>
</div>

<div class="content">
<div class="bg-img">
  
  <p>Welcome To MediPlus+</p>
</div>
</div>
</body>
</html>
