<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DoctApt</title>

<link rel="stylesheet" type="text/css" href="Appointment.css">

</head>
<body>
<div class="container">
    <div class="backnavbar">
    
      <a href="Home.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>My Appointments<div class="apt-hr"></div></a>
      
     </div>
</div><br><br>


<h2>Welcome!! &emsp; &emsp;<%= session.getAttribute("b") %></h2>
    <form>
 
         <table>
           <tr> <th>Patient Name</th>
            <th>Doctor</th>
            <th>Department</th>
            
              </tr> 
				<form method="POST">
           
                              <%
                              String duser=(String)session.getAttribute("b");
                          Class.forName("org.postgresql.Driver");
                        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Pranay@25");

                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select pname,dname,department from patient,appointment where patient.username=appointment.username and usernm='"+duser+"'");
                            while (rs.next()) {

                            	String patname= rs.getString(1);
                                String dname = rs.getString(2);
                              
                                String depart = rs.getString(3);

                                out.println("<tr>");
                                out.println("<td>" + patname + "</td>");
                                out.println("<td>" + dname + "</td>");                                                
                                out.println("<td>" + depart + "</td>");

                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                         
                    </form>
                    <br><br><a href='DoctorLogin.jsp'>Log out</a>
</body>
</html>