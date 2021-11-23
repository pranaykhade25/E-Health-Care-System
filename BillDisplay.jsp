<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %> <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Bill no:1<br>
Customer Name:Pranay Khade<br>
<br>Date:2021-02-02


         <table border=1>
           <tr> 
            <th>Item</th>
            <th>Quantity</th>
            <th>Rate</th>
            <th>Total</th>
            
      
        
            
              </tr> 
				<form method="POST">
           
                              <%
                              Class.forName("com.mysql.jdbc.Driver");
                          	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MediPlus", "root" , "Pk1777");
                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select * from bill");
                            while (rs.next()) {

                            	String billno= rs.getString(1);
                            	String cust=rs.getString(2);
                                String datee = rs.getString(3);
                                String item = rs.getString(4);
                                String qun = rs.getString(5);
                                String rate = rs.getString(6);
                                String total= rs.getString(7);


                                out.println("<tr>");
                                                                                          
                                out.println("<td>" + item + "</td>");
                                out.println("<td>" + qun + "</td>");
                                out.println("<td>" + rate + "</td>");
                                out.println("<td>" + total+ "</td>");

                                
                           
                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                         
                    </form>
                    <br><br><a href='Bill.jsp'>Home</a>
</body>
</html>
</body>
</html>