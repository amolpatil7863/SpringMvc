<%-- 
    Document   : register
    Created on : Jan 18, 2017, 10:51:32 PM
    Author     : AMOL
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
</head>
<body>
        <jsp:useBean id="reg" class="Register.User" scope="session"/>
        <jsp:setProperty name="reg" property="*"/>
        <%@page import="Register.ProcessRegisterData"%> 
 <% 
         int status=ProcessRegisterData.register(reg);
		
                                
			if(status>0)
			 {
                            response.sendRedirect("registersuccessfull.html");
			 }
                               
                                    
		%>

</body>
</html>
