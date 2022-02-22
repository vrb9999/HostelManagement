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
            String room_no=request.getParameter("room_no");
            String capacity=request.getParameter("capacity");
            String no_st=request.getParameter("no_st");
           
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?allowPublicKeyRetrieval=true&useSSL=false","root","vishal");
             
            
             String q = "INSERT INTO room_details (st_id,room_no,capacity,no_st) VALUES (?,?,?,?)";
            PreparedStatement p = con.prepareStatement(q);
       
            p.setString(1,st_id);
            p.setString(2,room_no);
            p.setString(3,capacity);
            p.setString(4,no_st);

            p.executeUpdate();
           response.sendRedirect("visvin.html");
            con.close();
   
            
        %>   
    </body>
</html>
