

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
            String fname=request.getParameter("fname");
            String mname=request.getParameter("mname");
            String email=request.getParameter("email");
            String f_no=request.getParameter("f_no");
            String m_no=request.getParameter("m_no");
            String address=request.getParameter("address");
          
            
            
            
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?allowPublicKeyRetrieval=true&useSSL=false","root","vishal");
             
            String q = "INSERT INTO parent_details (st_id,fname,mname,email,f_no,m_no,address) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement p = con.prepareStatement(q);
            p.setString(1,st_id);
            p.setString(2,fname);
            p.setString(3,mname);
            p.setString(4,email);
            p.setString(5,f_no);
             p.setString(6,m_no);
            p.setString(7,address);
            
            p.executeUpdate();
           response.sendRedirect("visvin.html");
            con.close();
   
            
        %>   
    </body>
</html>

