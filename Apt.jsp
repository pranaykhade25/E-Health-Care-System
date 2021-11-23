<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Booked!!</title>

<link rel="stylesheet" type="text/css" href="Appointment.css">

</head>
<body>

<div class="container">
    <div class="backnavbar">
    
      <a href="Home.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>My Appointment<div class="apt-hr"></div></a>
      
     </div>
</div><br><br>
 <table>
           <tr> <th>Patient</th>
            <th>Doctor</th>
            <th>Department</th>
            <th>Qualification</th>
           
			
            
              </tr> 
<%

String user1=(String)session.getAttribute("a");
String demail=request.getParameter("email");
String dname=request.getParameter("name");
String department=request.getParameter("dept");
String qualification=request.getParameter("qualiftn");



out.println("<tr>");
out.println("<td>" + user1 + "</td>");
out.println("<td>" + dname + "</td>");
out.println("<td>" + department + "</td>");
out.println("<td>" + qualification + "</td>");

out.println("</tr>");
if(user1!=null && demail!=null && department!=null && dname!=null && qualification!=null)
{
try{
	Class.forName("com.mysql.jdbc.Driver");
  	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");
  	
		  Statement stmt = con.createStatement();
			stmt.execute("insert into appointment values('"+user1+"','"+demail+"','"+dname+"','"+department+"','"+qualification+"')");
			%><script type="text/javascript" language="javascript">
			  alert("Your Appointment Is Booked!!");
			  </script><%
}
catch(Exception e)
{
	e.printStackTrace();
	%><script type="text/javascript" language="javascript">
	  alert("Unsuccessful!!");
	  </script><%
}
}
%></table><br><br><a href='PatientDashboard.jsp'>DashBoard</a>