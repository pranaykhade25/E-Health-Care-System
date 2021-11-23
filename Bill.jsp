<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %> <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Enter Bill no:<input type=text name=bn><br>
Enter Customer Name:<input type=text name=cn><br>
Enter Bill Date:<input type=date name=dt><br>
Item Name:<select name="item"><br>
					<option>Select Item</option>
					<option>Biscuits</option>
					<option>Coke</option>
					<option>Coffee</option>
					<option>Chocolates</option>
				</select><br>
Enter Quantity:<input type=text name=qun><br>
Enter Rate:<input type=text name=rate><br>
Enter Total:<input type=text name=total><br>

<br><input type="Submit" value="Submit">

<%
String billno=request.getParameter("bn");
String cust=request.getParameter("cn");
String datee=request.getParameter("dt");
String item=request.getParameter("item");
String qun=request.getParameter("qun");
String rate=request.getParameter("rate");
String total=request.getParameter("total");

if(billno!=null && cust!=null && datee!=null && item!=null && qun!=null && rate!=null && total!=null)
{
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");

		  Statement stmt = con.createStatement();
		  stmt.execute("insert into bill values('"+billno+"','"+cust+"','"+datee+"','"+item+"','"+qun+"','"+rate+"','"+total+"')");
			 
			 %>
			 <script type="text/javascript" language="javascript">
				alert("inserted Successfully");
			 </script>
			 <jsp:forward page="billDisplay.jsp"/>
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