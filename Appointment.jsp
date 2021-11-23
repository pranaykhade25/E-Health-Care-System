<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment</title>

<link rel="stylesheet" type="text/css" href="Appointment.css">

</head>
<body>
<style>
.pro .btn {
  position:absolute;
  float:right;
  right: 7%;
  background-color:#009900;
  color: white;
  font-size: 14px;
  padding: 12px 24px;
  cursor: pointer;
  border-radius: 5px;
  text-decoration:none
}

.pro .btn:hover {
  background-color:DodgerBlue;
}
</style>

<div class="container">
    <div class="backnavbar">
    
      <a href="MediPlusHome.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Appointment<div class="apt-hr"></div></a>
       
     </div>
</div><br><br>
<div class="pro">
<a class="btn" href='PatientDashboard.jsp'>Profile</a>
 </div>
<h2>Welcome!!&emsp; &emsp;<%= session.getAttribute("a") %></h2>

    <form method="post">
 
         <table>
           <tr> <th>Doctor</th>
            <th>Email</th>
            <th>Qualification</th>
            <th>Department</th>
			
            <th>Book Appointment!!</th>
            
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
                               
                                out.println("<td><b><form action='Apt.jsp' method='post'><input type='submit' value='Appointment'>  <input type=\"hidden\" id=\"activityid1Value\" name=\"name\" value=\""+name+"\"><input type=\"hidden\" id=\"activityid1Value\" name=\"dept\" value=\""+dept+"\"><input type=\"hidden\" id=\"activityid1Value\" name=\"email\" value=\""+email+"\"><input type=\"hidden\" id=\"activityid1Value\" name=\"qualiftn\" value=\""+qualiftn+"\"></form></b>");
                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                   
                    </form>
                    <br><br><a href='PatLogout.jsp'>Log out</a>
                </body>
                </html>