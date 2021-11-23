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
String user1=(String)session.getAttribute("a");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root", "Pk1777");
Statement st=con.createStatement();
int i=st.executeUpdate("delete from patient where email='"+user1+"'");
%><script type="text/javascript" language="javascript">
alert("Data Deleted Successfully!!");
</script>
<jsp:forward page="PatLogout.jsp"/>
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