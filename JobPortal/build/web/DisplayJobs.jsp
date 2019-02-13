<%-- 
    Document   : DisplayJobs
    Created on : Mar 17, 2017, 1:40:28 PM
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
             out.println("<!DOCTYPE HTML>");
             out.print("<html>");
             out.println("<head>");
             out.println("<link href=css/Resume/style1.css rel=stylesheet type=text/css>");
             out.println("<link href=css/Resume/demo.css rel=stylesheet type=text/css>");
             out.println("<style>");
             out.println("h2 {color:yellow;text-align:right;} ");
             out.println("</style>");
             out.println("</head>");
             out.println("<body>");
             
             out.println(" <form action=\"DisplayOnBrowser.jsp\" method=\"post\"> ");    
             String hrname=(String)session.getAttribute("s_hrname");//session 
             out.println(" <h2>"+hrname +"<h2>"+"</h1>");
             out.println(" <div class=\"container\"> ");
             out.println(" <div class=\"form\">");
             out.println(" <form id=\"contactform\">");
             out.println("<br>");
             out.println("<br>");
             out.println("<br>");
             out.println("<br>");
             out.println("<br>");
             out.println("<br>");
             
             out.println("<input class=buttom name=PostonBrowser id=submit tabindex=5 value=PostonBrowser type=submit>");
             out.println("</form>");
             out.println("</div>");
             out.println("</form>");
             out.println("</body>");
             out.print("</html>");
        %>
    </body>
</html>
