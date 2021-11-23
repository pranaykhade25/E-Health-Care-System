<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Appoinments</title>

<link rel="stylesheet" type="text/css" href="Appointment.css">

</head>
<body>
<div class="container">
    <div class="backnavbar">
    
      <a href="Database.jsp">Dashboard</a> 
      <a class="next">&#10095;</a>
      <a>Appointments<div class="apt-hr"></div></a>
      
     </div>
</div><br><br>


<h2>Welcome!! &emsp; &emsp;<%= session.getAttribute("a") %></h2>
    <form>
 
         <table>
           <tr> 
            <th>Patient Name</th>
            <th>Patient Email</th>
            <th>Doctor</th>
            <th>Department</th>
            
      
        
            
              </tr> 
				<form method="POST">
           
                              <%
                              Class.forName("com.mysql.jdbc.Driver");
                          	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");
                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select pname,pemail,dname,department from patient,appointment where patient.email=appointment.pemail");
                            while (rs.next()) {

                            	String patname= rs.getString(1);
                            	String pemail=rs.getString(2);
                                String dname = rs.getString(3);
                                String depart = rs.getString(4);

                                out.println("<tr>");
                                out.println("<td>" + patname + "</td>");
                                out.println("<td>" + pemail + "</td>");
                                out.println("<td>" + dname + "</td>");                                                            
                                out.println("<td>" + depart + "</td>");
                                
                                out.println("<td><b><form action='DoctDelete1.jsp'><input type='submit' value='Approve'></form></b>");
                                out.println("<td><b><form action='DoctDelete1.jsp'><input type='submit' value='Reject'></form></b>");

                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                         
                    </form>
                    <br><br><a href='AdminLogout.jsp'>Log out</a>
</body>
</html>