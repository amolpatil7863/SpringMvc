<%-- 
    Document   : hr_register
    Created on : Jan 31, 2017, 1:33:59 PM
    Author     : AMOL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:useBean id="hrreg" class="HrRegister.HrData" scope="session"/>
         <jsp:setProperty name="hrreg" property="*"/>
         <%@page import="HrRegister.ProcessHrRegisterData"%> 
        
        <%
             int status= HrRegister.ProcessHrRegisterData.hr_register(hrreg);
			if(status>0)
			 {
                            response.sendRedirect("registersuccessfull.html");
			 }
                        else
                        {
                            out.print("Problem");
                        }
                    
              
         %>
    </body>
</html>
