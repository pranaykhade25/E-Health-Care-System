<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %> <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Applicant SignUp</title>
<link rel="stylesheet" type="text/css" href="Careers.css">
</head>
<body>
<div class="pat-img">
<div class="container">
    <div class="backnavbar">
    
      <a href="MediPlusHome.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Applicant Login<div class="pat-hr"></div></a>
      
     </div>
</div>
<div class="form-wrapper">
             <div class="backnavbar">
      
     </div>
             <h1>Login</h1>
            <form method="post">
            	
                <label for="mail">Email-id</label>
                <input type="email" id="Email" name="email" required>
 
                <label for="pass">Password</label>
                <input type="password" id="password" name="password" required>
 
                <input type="Submit" value="Login">
                
                <a href="StudSignUp.jsp">New Here!! SignUp</a>
            </form>
</div></div>

<%
String user1=request.getParameter("email");
String password=request.getParameter("password");
                		  

session.setAttribute("c", user1);
if(user1!=null && password!=null)
{
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");

	  Statement stmt = con.createStatement();
      ResultSet rs=stmt.executeQuery("select * from career where semail='"+user1+"'");
	  rs.next();
	  String p=rs.getString("password");
	  
	  if(password.equals(p))
	  {
	   %>
	  <jsp:forward page="Careers.jsp"/>
		  
	 <% }
	  else
		{
		 %><script type="text/javascript" language="javascript">
			  alert("Your ID and Password do not match.Enter a valid Login Id and Password.");
			  </script>
		 <%}
		
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
