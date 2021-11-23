<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Dashboard</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 14%;
  height: 300px;
}

/* Style the buttons inside the tab */
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 20px 14px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 14px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color:#009900;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 86%;
  border-left: none;
  height: 300px;
}

 .pro .btn {
  position:absolute;
  float:right;
  right: 7%;
  background-color:#009900;
  color: white;
  font-size: 12px;
  padding: 12px 24px;
  cursor: pointer;
  border-radius: 5px;
  text-decoration:none
}

.pro .btn:hover {
  background-color:DodgerBlue;
}
</style>
<link rel="stylesheet" type="text/css" href="Appointment.css">

</head>
<body>
<div class="pro">
<a class="btn" href='Appointment.jsp'>New Appointment!!</a>
 </div>
<% String user1=(String)session.getAttribute("a"); %>
<p><h2>Welcome!! &emsp; &emsp;<%=session.getAttribute("a") %></h2>


<div class="tab">
  <button class="tablinks" onclick="openDash(event, 'Profile')" id="defaultOpen">My Account</button>
  <button class="tablinks" onclick="openDash(event, 'Appointments')">My Appointments</button>
  
</div>

<div id="Profile" class="tabcontent">
  <h3>My Profile</h3>
  
    <form method="post">
 
         <table>
           <tr> <th>Patient Name</th>
            <th>username</th>
            <th>Email</th>
            
              </tr> 
				<form method="POST">
           
                              <%
                              Class.forName("com.mysql.jdbc.Driver");
                          	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");


                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select * from patient where email='"+user1+"'");
                            while (rs.next()) {

                                String pname= rs.getString(1);
                                String uname = rs.getString(2);
                                String email = rs.getString(3);

                                out.println("<tr>");
                                out.println("<td>" + pname + "</td>");
                                out.println("<td>" +email+ "</td>");                                                            
                                out.println("<td>" + uname+ "</td>");
                                
                                out.println("</tr>");
                                
                            }
                            st.close();
%>

                      
                        </table>
            			</form>
                    <br><br></p>
        <div class="pro">
<a class="btn" href='PatDelete.jsp'>Delete Account!!</a>
 </div>
</div>

<div id="Appointments" class="tabcontent">
  <h3>My Appointments</h3>
  <p><form>
 
         <table>
           <tr> 
            <th>Doctor</th>
            <th>Department</th>
            <th>Qualification</th>
            <th>Status</th>
          
            
              </tr> 
				<form method="POST">
           
                              <%
                              Class.forName("com.mysql.jdbc.Driver");
                          	Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");
                            Statement st1 = con.createStatement();
                            ResultSet rs1;
                            rs1 = st1.executeQuery("select pname,dname,department,qualification from patient,appointment where patient.email=appointment.pemail and pemail='"+user1+"'");
                            while (rs1.next()) {

                            	String patname= rs1.getString(1);
                            	
                                String dname = rs1.getString(2);
                                String depart = rs1.getString(3);
                                String qualif = rs1.getString(4);


                                out.println("<tr>");
                                
                                out.println("<td>" + dname + "</td>");                                                            
                                out.println("<td>" + depart + "</td>");
                                out.println("<td>" + qualif+ "</td>");

                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                         
                    </form>
                    <br><br></p> 
</div>



<script>
function openDash(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
 <a href='PatLogout.jsp'>Log out</a>
</body>
</html>