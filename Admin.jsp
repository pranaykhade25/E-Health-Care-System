<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>

<link rel="stylesheet" type="text/css" href="Admin.css">

</head>
<body>

<div class="admin-img">
<div class="container">
    <div class="backnavbar">
      <a href="MediPlusHome.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Admin Login<div class="admin-hr"></div></a>
      
     </div>
      </div>
    
<div class="form-wrapper">
             <div class="backnavbar">
      
     </div>
             <h1>Login</h1>
            <form method="post">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
                
 
                <label for="pass">Password</label>
                <input type="password" id="password" name="psw" required>
 
                
 
               
                <input type="Submit" value="Login">
            </form>
</div>
</div> 
<%
String user1=request.getParameter("email");
String password=request.getParameter("psw");
                		  


session.setAttribute("a", user1);

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");

	  Statement stmt = con.createStatement();
      ResultSet rs=stmt.executeQuery("select * from admin where email='"+user1+"'");
	  rs.next();
	  String p=rs.getString("password");
	  
	  if(password.equals(p))
	  {
	   %>
	  <jsp:forward page="Database.jsp"/>
		  
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

%>
</body>
</html>