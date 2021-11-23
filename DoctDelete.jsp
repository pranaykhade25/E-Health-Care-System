<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Deleted</title>
</head>
<body>
<%
String email=request.getParameter("email");

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root", "Pk1777");
			Statement st=con.createStatement();
			int i=st.executeUpdate("delete from doctor where email='"+email+"'");
		%>
		<script type="text/javascript" language="javascript">
		alert("Data Deleted Successfully!!");
		</script>
		
		<%
		}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
		%>
</body>
</html>