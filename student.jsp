

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
            String sname=request.getParameter("sname");
            String dob=request.getParameter("dob");
            String email=request.getParameter("email");
            String dept=request.getParameter("dept");
            String sem=request.getParameter("sem");
            String sph=request.getParameter("sph");
            
            
            
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?allowPublicKeyRetrieval=true&useSSL=false","root","vishal");
             
            String q = "INSERT INTO student_details (st_id,sname,dob,email,dept,sem,sph) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement p = con.prepareStatement(q);
            p.setString(1,st_id);
            p.setString(2,sname);
            p.setString(3,dob);
            p.setString(4,email);
            p.setString(5,dept);
            p.setString(6,sem);
            p.setString(7,sph);
            p.executeUpdate();
           response.sendRedirect("visvin.html");
            con.close();
   
            
        %>   
    </body>
</html>

