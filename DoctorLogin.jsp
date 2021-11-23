<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DLogin</title>
<link rel="stylesheet" type="text/css" href="DoctorLogin.css">

</head>
<body>
<div class="doc-img">
<div class="container">
    <div class="backnavbar">
    
      <a href="MediPlusHome.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Doctor Login<div class="doc-hr"></div></a>
      
     </div>
</div>

<div class="form-wrapper">
             <div class="backnavbar">
      
     </div>
             <h1>Login</h1>
            <form method="post">
                <label for="name">Email</label>
                <input type="email" id="email" name="email">
                
 
                <label for="pass">Password</label>
                <input type="password" id="password" name="pass">
 
                
 
               
                <input type="Submit" value="LogIn">
            </form>
</div>
</div>
<%
String user1=request.getParameter("email");
String pass=request.getParameter("pass");
                		  

session.setAttribute("b", user1);
if(user1!=null && pass!=null)
{
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");

	  Statement stmt = con.createStatement();
      ResultSet rs=stmt.executeQuery("select * from doctor where email='"+user1+"'");
	  rs.next();
	  String p=rs.getString("pass");
	  
	  if(pass.equals(p))
	  {
	   %>
	  <jsp:forward page="DoctDashboard.jsp"/>
		  
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
%>
</body>
</html>