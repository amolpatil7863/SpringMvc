<%-- 
    Document   : hr_login
    Created on : Jan 31, 2017, 3:34:46 PM
    Author     : AMOL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="HrRegister.ConnectionProvider"%>
<jsp:useBean id="hrobj" class="HrRegister.HrData" scope="session"/>
<jsp:setProperty property="hremail" name="hrobj"/>  
<jsp:setProperty property="hr_password" name="hrobj"/>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HR Login Page</title>
    </head>
    <body>
        <%@page import="HrRegister.HrLogin"%> 
        <jsp:useBean id="l1" class="HrRegister.HrData" scope="session"/>
        <jsp:setProperty property="hremail" name="l1"/>
        <jsp:setProperty property="hr_password" name="l1"/>
        <jsp:setProperty property="hrname" name="l1"/>
        <%
           
		 boolean status=HrLogin.validate(hrobj);	
		 String hr_Name= HrLogin.GetValue(l1);
			
			if(status==false)
			{
                           // out.println("<script>alert(Error)</script>");
                               //request.getRequestDispatcher("hr_login.html") ;                   
				response.sendRedirect("hr_login.html");
				
			}
			else
			{
                            //out.println(""+hr_Name);
                            session.setAttribute("s_hrname", hr_Name);
                            session.setAttribute("s_email",l1.getHremail());
                            response.sendRedirect("HRmenu.jsp");
                                
                               
				
			}
              
        %>
    </body>
</html>
