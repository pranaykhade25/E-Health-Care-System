
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddDoct</title>
<link rel="stylesheet" type="text/css" href="AddDoct.css">

</head>
<body>


<div class="container">
    <div class="backnavbar">
      <a href="Database.jsp">Dashboard</a> 
      <a class="next">&#10095;</a>
      <a>Add Doctors<div class="apt-hr"></div></a>
      
     </div>
</div>
    
    <div class="form-wrapper">
             <div class="backnavbar">
      
     </div>
             <h1>Add Doctor</h1>
            <form>
				<label for="name">Doctor Name</label>
                <input type="text" id="username" name="name" required>
 
                <label for="mail">Email</label>
                <input type="email" id="Email" name="email" required>
                
 
                <label for="pass">Qualification</label>
                <input type="text" id="qualiftn" name="qualftn" required>
                
                 
 				<label for="departments">Department</label>
			<select name="dept">
				<option>Select Your Department</option>
				<option>Neurology</option>
				<option>Gynaecology</option>
				<option>Cardiology</option>
				<option>Ophthalmology</option>
				<option>Oncology</option>
				<option>Nephrology</option>
				<option>Surgery</option>
			</select>
                
                <label for="pass">Password</label>
                <input type="password" id="password" name="psw" required>
 
               
 
               
                <input type="Submit" value="Add Doctor"></div>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String qualiftn=request.getParameter("qualftn");
String depart=request.getParameter("dept");
String pass=request.getParameter("psw");
if(name!=null && email!=null && qualiftn!=null && depart!=null && pass!=null)
{
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");

		  Statement stmt = con.createStatement();
			stmt.execute("insert into doctor values('"+name+"','"+email+"','"+qualiftn+"','"+depart+"','"+pass+"')");
			 %>
			 <script type="text/javascript" language="javascript">
				alert("Doctor Added Successfully");
			 </script>
			 <%
}

catch(Exception e)
{
	e.printStackTrace();
	System.out.print(e);
}
}
else
{%>
	<script type="text/javascript" language="javascript">
	alert("Feilds must contains some value");
	</script>

<%}
%>
</body>
</html>