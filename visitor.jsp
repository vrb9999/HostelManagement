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
            String vname=request.getParameter("vname");
            String date=request.getParameter("date");
            String time_in=request.getParameter("time_in");
            String time_out=request.getParameter("time_out");
           
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?allowPublicKeyRetrieval=true&useSSL=false","root","vishal");
             
            
             String q = "INSERT INTO visitor_details (st_id,vname,date,time_in,time_out) VALUES (?,?,?,?,?)";
            PreparedStatement p = con.prepareStatement(q);
       
            p.setString(1,st_id);
            p.setString(2,vname);
            p.setString(3,date);
            p.setString(4,time_in);
            p.setString(5,time_out);

            p.executeUpdate();
           response.sendRedirect("visvin.html");
            con.close();
   
            
        %>   
    </body>
</html>
