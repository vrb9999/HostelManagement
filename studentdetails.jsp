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
        <title>Students</title>
    </head>
    <body>
   
        <h1 style="color:whitesmoke;background-color:darkslateblue;">Details</h1>
        <h2>Student Details</h2>
         <%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?useSSL=false","root","vishal");
    
       String Query="select * from student_details";
      
       PreparedStatement psm=con.prepareStatement(Query);
       ResultSet rs=psm.executeQuery();
       %>
       <table>
       <%
       out.println("<tr><th>Student id</th><th>Student Name</th><th>DOB</th><th>Email</th><th>Department</th><th>Sem</th><th>Phone Number</th></tr>");
       while(rs.next())
       {
           out.println("<tr><td>"+rs.getString("st_id")+"</td><td>"+rs.getString("sname")+"</td><td>"+rs.getString("dob")+
                   "</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("dept")+"</td><td>"+rs.getString("sem")+"</td><td>"+rs.getString("sph")+"</tr>");
       }
      %>
       </table>
    </body>
</html>
