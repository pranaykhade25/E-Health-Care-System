<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewDoctors</title>

<link rel="stylesheet" type="text/css" href="Appointment.css">

</head>
<body>

<div class="container">
    <div class="backnavbar">
    
      <a href="Database.jsp">Dashboard</a> 
      <a class="next">&#10095;</a>
      <a>Doctors<div class="apt-hr"></div></a>
      
     </div>
</div><br><br>


<h2>Welcome!! &emsp; &emsp;<%= session.getAttribute("a") %></h2>
    <form method="post">
 
         <table>
           <tr> <th>Doctor</th>
            <th>Email</th>
            <th>Qualification</th>
            <th>Department</th>
           
            
              </tr> 
				<form method="POST">
           
                              <%
                              Class.forName("com.mysql.jdbc.Driver");
                          	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");
                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select * from doctor");
                            while (rs.next()) {

                                String name= rs.getString(1);
                                String email = rs.getString(2);
                                String qualiftn = rs.getString(3);
                                String dept = rs.getString(4);
                              
                                out.println("<tr>");
                                out.println("<td>" + name + "</td>");
                                out.println("<td>" + email + "</td>");
                                                            
                                out.println("<td>" + qualiftn + "</td>");
                                out.println("<td>" + dept + "</td>");
                                
                                out.println("<td><b><form action='DoctDelete.jsp'><input type='submit' value='Delete'>  <input type=\"hidden\" id=\"activityid1Value\" name=\"name\" value=\""+name+"\"><input type=\"hidden\" id=\"activityid1Value\" name=\"dept\" value=\""+dept+"\"><input type=\"hidden\" id=\"activityid1Value\" name=\"email\" value=\""+email+"\"></form></b>");
                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
             
                    </form>
                    <br><br><a href='AdminLogout.jsp'>Log out</a>
</body>
</html>