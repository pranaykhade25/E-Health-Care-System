<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Approved</title>
</head>
<body>
<%
String email=request.getParameter("pemail");

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root", "Pk1777");
			Statement st=con.createStatement();
			int i=st.executeUpdate("update Status set status='Approved' where pemail="+email+"'");
		%>
		<script type="text/javascript" language="javascript">
		alert("Approved Successfully!!");
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