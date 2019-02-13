<%-- 
    Document   : logout
    Created on : Mar 19, 2017, 10:55:21 PM
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
            session.setAttribute("s_email",null);
            session.invalidate();
            response.sendRedirect("hr_login.html");
        %>
    </body>
</html>
