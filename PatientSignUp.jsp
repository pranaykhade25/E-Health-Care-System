<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %> <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient SignUp</title>
<link rel="stylesheet" type="text/css" href="Patient.css">
</head>
<body>
<div class="pat-img">
<div class="container">
    <div class="backnavbar">
    
      <a href="Home.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Patient SignUp<div class="pat-hr"></div></a>
      
     </div>
</div>
<div class="form-wrapper">
             <div class="backnavbar">
      
     </div>
             <h1>SignUp</h1>
            <form method="post">
            	<label for="name">Patient Name</label>
                <input type="text" id="name" name="nm" required>
            
                <label for="username">Username</label>
                <input type="text" id="username" name="usrnm" required>
 
                <label for="mail">Email-id</label>
                <input type="email" id="Email" name="email" required>
 
                <label for="pass">Password</label>
                <input type="password" id="password" name="psw" required>
 
                
 
               
                <input type="Submit" value="SignUp">
                
                <a href="PatientLogin.jsp">Already Register!! Login</a>
            </form>
</div></div>

<%
String name=request.getParameter("nm");
String user=request.getParameter("usrnm");
String email=request.getParameter("email");
String pass=request.getParameter("psw");
if(name!=null && user!=null && email!=null && pass!=null)
{
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");

		  Statement stmt = con.createStatement();
		  stmt.execute("insert into patient values('"+name+"','"+email+"','"+user+"','"+pass+"')");
			 
			 %>
			 <script type="text/javascript" language="javascript">
				alert("Account Created Successfully");
			 </script>
			 <jsp:forward page="PatientLogin.jsp"/>
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

