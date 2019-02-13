<%-- 
    Document   : process1
    Created on : Feb 8, 2017, 12:06:19 PM
    Author     : AMOL
--%>
<%@page import="Register.ConnectionProvider"%>
<jsp:useBean id="obj" class="Register.User" scope="session"/>
<jsp:setProperty property="*" name="obj"/>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            try{  
            Connection con=ConnectionProvider.getCon();  
            PreparedStatement ps=con.prepareStatement("insert into register_data values(?,?,?,?,?,?)");  
            ps.setString(1,obj.getName()); //out.print("NAME:"+obj.getName());
            ps.setString(2,obj.getEmail()); //out.print("Email:"+obj.getEmail());
            ps.setString(3,obj.getPassword());  //out.print("PASS:"+obj.getPassword());
            ps.setString(4,obj.getGender()); //out.print("Gender"+obj.getGender());
            ps.setString(5,obj.getPhone());    // out.print("Phone:"+obj.getPhone());
            ps.setString(6,obj.getBirthdate());  //out.print("Bdate:"+obj.getBirthdate());
            int no_of_records=ps.executeUpdate();
                                
			if(no_of_records>0)
			 {
                            response.sendRedirect("registersuccessfull.html");
			 }
                        else
                        {
                            out.print("Problem");
                        }
}catch(Exception e){} 
        %>
    </body>
</html>
