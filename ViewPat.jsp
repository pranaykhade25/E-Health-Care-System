<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewPatients</title>

<link rel="stylesheet" type="text/css" href="Appointment.css">

</head>
<body>
<div class="container">
    <div class="backnavbar">
    
      <a href="Database.jsp">Dashboard</a> 
      <a class="next">&#10095;</a>
      <a>Patients<div class="apt-hr"></div></a>
      
     </div>
</div><br><br>


<h2>Welcome!! &emsp; &emsp;<%= session.getAttribute("a") %></h2>
    <form>
 
         <table>
           <tr> <th>Patient Name</th>
            <th>Email</th>
            <th>username</th>
            
              </tr> 
				<form method="POST">
           
                              <%
                              Class.forName("com.mysql.jdbc.Driver");
                          	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");
                          	
                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select * from patient");
                            while (rs.next()) {

                                String pname= rs.getString(1);
                                String uname = rs.getString(2);
                                String email = rs.getString(3);

                                out.println("<tr>");
                                out.println("<td>" + pname + "</td>");
                                out.println("<td>" + uname + "</td>");                                                            
                                out.println("<td>" + email + "</td>");

                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                         
                    </form>
                    <br><br><a href='AdminLogout.jsp'>Log out</a>
              
</body>
</html>