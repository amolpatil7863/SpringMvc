<%-- 
    Document   : HRmenu
    Created on : Mar 16, 2017, 7:55:51 PM
    Author     : AMOL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HrMenu</title>
    </head>
    <body>
        <%     //  out.println("Login success");
                 out.println("<!DOCTYPE HTML>");
                 out.print("<html>");
                 out.println("<head>");
                 out.println("<link href=css/Resume/style1.css rel=stylesheet type=text/css>");
                 out.println("<link href=css/Resume/demo.css rel=stylesheet type=text/css>");
                 out.println("<style>");
                 out.println("h1 {color:red;text-align:right;} ");
	         out.println("h2 {color:yellow;text-align:right;}");
   
                 out.println("</style>");
                 out.println("</head>");
                 out.println("<body>");
                 
                 String hrname=(String)session.getAttribute("s_hrname");//session 
                 //out.println("<h1>Login Successfully!!!"+ "<br></h1>");
                 out.println("<div id=\"menu1\">");
                 out.println("<ul>");
                 out.println("<h2>"+"<li><a href=#>"+hrname +"</a></li>");
                 out.println("<ul>");
                 out.println("<li><a href=hr_logout.jsp>Logout</a><li>");
                 out.println("</ul>");
                 
                 out.println("</h2>");
                 out.println("</ul>");
                 out.println("</div>");
                 
                 out.println(" <div class=\"container\"> ");
                 out.println(" <div class=\"form\">");
                 out.println(" <form id=\"contactform\">");
                 out.print("<br><br><br><br><br>");
                  out.println("<br><br><br> <a class=contact href=postjob.jsp><font color=white size=5px;>Post a Job </font></a>");
                  out.println("<br><br><br><br<br> <a class=contact href=filter.jsp><font color=white size=5px;>Set Filter  </font></a>");
	
   
                   out.println("</form>");
                   out.println("</div>");
                   out.println("</body>");
                   out.print("</html>");
              
        %>
    </body>
</html>
