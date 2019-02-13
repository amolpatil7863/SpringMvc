<%-- 
    Document   : applicant_logout
    Created on : Mar 28, 2017, 3:06:36 PM
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
          <%
            session.setAttribute("Email",null);
            session.invalidate();
            response.sendRedirect("login.html");
          %>
    </body>
</html>
