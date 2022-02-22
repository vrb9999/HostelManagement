<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
         <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
        <%
           
            String st_id=request.getParameter("st_id");
            String amtpaid=request.getParameter("amtpaid");
            
           
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?allowPublicKeyRetrieval=true&useSSL=false","root","vishal");
             
            
             String q = "INSERT INTO fee (st_id,amtpaid,due) VALUES (?,?,?)";
            PreparedStatement p = con.prepareStatement(q);
       
            p.setString(1,st_id);
            p.setString(2,amtpaid);
            p.setString(3,null);

            p.executeUpdate();
           response.sendRedirect("visvin.html");
            con.close();
   
            
        %>   
    </body>
</html>
