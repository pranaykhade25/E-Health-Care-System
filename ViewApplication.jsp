<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Application</title>

<link rel="stylesheet" type="text/css" href="Appointment.css">

</head>
<body>
<div class="container">
    <div class="backnavbar">
    
      <a href="Database.jsp">Dashboard</a> 
      <a class="next">&#10095;</a>
      <a>Application<div class="apt-hr"></div></a>
      
     </div>
</div><br><br>


<h2>Welcome!! &emsp; &emsp;<%= session.getAttribute("a") %></h2>
    <form>
 
         <table>
           <tr> <th>Applicant Name</th>
            <th>Contact</th>
            <th>Qualification</th>
            <th>Experience</th>
            
            
              </tr> 
				<form method="POST">
           
                              <%
                              Class.forName("com.mysql.jdbc.Driver");
                          	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");
                          	
                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select * from application");
                            while (rs.next()) {

                                String sname= rs.getString(1);
                                String cont = rs.getString(2);
                                String qualif = rs.getString(3);
                                String exp = rs.getString(4);

                                out.println("<tr>");
                                out.println("<td>" + sname + "</td>");
                                out.println("<td>" + cont + "</td>");                                                            
                                out.println("<td>" + qualif + "</td>");
                                out.println("<td>" + exp + "</td>");


                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                         
                    </form>
                    <br><br><a href='AdminLogout.jsp'>Log out</a>
              
</body>
</html>