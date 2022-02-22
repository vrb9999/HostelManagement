<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page import ="java.sql.*"%>
         <%@page import ="javax.sql.*"%>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <style type="text/css">
           body { background-color:#ccccff;background-position-y:120px;background-position-x:90%; background-repeat: no-repeat;background-size:500px 200px;}
         table{border:1; }
         </style>
        <title>Parents</title>
    </head>
    <body>
   
        <h1 style="color:whitesmoke;background-color:darkslateblue;">Details</h1>
        <h2>Parent Details</h2>
         <%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?useSSL=false","root","vishal");
    
       String Query="select * from parent_details";
      
       PreparedStatement psm=con.prepareStatement(Query);
       ResultSet rs=psm.executeQuery();
       %>
       <table>
       <%
       out.println("<tr><th>Student id</th><th>Father Name</th><th>Mother Name</th><th>Email</th><th>Father Number</th><th>Mother Number</th><th>Address</th></tr>");
       while(rs.next())
       {
           out.println("<tr><td>"+rs.getString("st_id")+"</td><td>"+rs.getString("fname")+"</td><td>"+rs.getString("mname")+
                   "</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("f_no")+"</td><td>"+rs.getString("m_no")+"</td><td>"+rs.getString("address")+"</tr>");
       }
      %>
       </table>
    </body>
</html>
