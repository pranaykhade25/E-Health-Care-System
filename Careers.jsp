<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %> <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply!!</title>
<link rel="stylesheet" type="text/css" href="Careers.css">
</head>
<body>
<div class="car-img">

<% String user1=(String)session.getAttribute("c"); %>
     <h2>Welcome!!&emsp; &emsp;<%= session.getAttribute("c") %></h2>
<div class="form-wrapper">
             <div class="backnavbar">
      
     </div>
     
     
             <h1>Apply!!</h1>
            <form method="post">
            	<label for="name">Applicant Name</label>
                <input type="text" id="name" name="nm" required>
            

                <label for="cont">Contact No</label>
                <input type="text" id="cont" name="contact" required>
                
                <label for="qualif">Qualification</label>
                <input type="text" id="qualif" name="qualificatn" required>
 
 				<label for="experience">Experience(in years)</label>
					<select name="exp">
					<option>Your Experience</option>
					<option>Fresher</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4 </option>
					<option>5+</option>
					<option>10+</option>
				</select>
 
                
 
                <input type="Submit" value="Apply">
                <a href="StudLogin">Logout</a>
                
            </form>
</div></div>

<%
String name=request.getParameter("nm");
String contact=request.getParameter("contact");
String qualific=request.getParameter("qualificatn");
String experience=request.getParameter("exp");

if(name!=null && contact!=null && qualific!=null && experience!=null)
{
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");

		  Statement stmt = con.createStatement();
		  stmt.execute("insert into application values('"+name+"','"+contact+"','"+qualific+"','"+experience+"')");
			 
			 %>
			 <script type="text/javascript" language="javascript">
				alert("Applied Successfully");
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

