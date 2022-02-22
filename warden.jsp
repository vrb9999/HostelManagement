

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
            String wname=request.getParameter("wname");
            String dob=request.getParameter("dob");
            String email=request.getParameter("email");
            String gender=request.getParameter("gender");
            String phno=request.getParameter("phno");
            String address=request.getParameter("address");
            String pwd1=request.getParameter("pwd1");
            
            
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?allowPublicKeyRetrieval=true&useSSL=false","root","vishal");
             
            String q = "INSERT INTO warden_details (wname,dob,email,gender,phno,address,pwd1) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement p = con.prepareStatement(q);
            p.setString(1,wname);
            p.setString(2,dob);
            p.setString(3,email);
            p.setString(4,gender);
            p.setString(5,phno);
            p.setString(6,address);
            p.setString(7,pwd1);
            p.executeUpdate();
           response.sendRedirect("index.html");
            con.close();
   
            
        %>   
    </body>
</html>

