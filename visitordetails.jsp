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
        <title>Visitor Page</title>
    </head>
    <body>
   
        <h1 style="color:whitesmoke;background-color:darkslateblue;">Details</h1>
        <h2>Visitor Details</h2>
         <%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?useSSL=false","root","vishal");
    
       String Query="select * from visitor_details";
      
       PreparedStatement psm=con.prepareStatement(Query);
       ResultSet rs=psm.executeQuery();
       %>
       <table>
       <%
       out.println("<tr><th>Student id</th><th>Visitor Name</th><th>Date</th><th>Time In</th><th>Time Out</th></tr>");
       while(rs.next())
       {
           out.println("<tr><td>"+rs.getString("st_id")+"</td><td>"+rs.getString("vname")+"</td><td>"+rs.getString("date")+
                   "</td><td>"+rs.getString("time_in")+"</td><td>"+rs.getString("time_out")+"</tr>");
       }
      %>
       </table>
    </body>
</html>
