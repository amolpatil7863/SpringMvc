<%-- 
    Document   : FilterResult
    Created on : Mar 27, 2017, 6:49:56 PM
    Author     : AMOL
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
       <%
         
            out.println("<!DOCTYPE HTML>");
                 out.print("<html>");
                 out.println("<head>");
                 out.println("<link href=css/Resume/style1.css rel=stylesheet type=text/css>");
                 out.println("<link href=css/Resume/demo.css rel=stylesheet type=text/css>");
                 out.println("<link href=css/button.css rel=stylesheet type=text/css>");
                 out.println("</head>");
                 out.println("<body>");
                  out.println(" <div class=\"container\"> ");
                 out.println(" <div class=\"form\">");
                 
                 ArrayList<String> totalApplicats=(ArrayList<String>)session.getAttribute("total_candidates");
       
               out.println("Total no of applicants applied for job:"+totalApplicats.size() +"<br>"); //total no on applicants
           
           for(int i=0;i<totalApplicats.size();i++)
            {
              out.println("Applicants "+ i+ ": "+totalApplicats.get(i)+"<br>"); //display one by one
            }
           
           
               ArrayList<String> mails=(ArrayList<String>)session.getAttribute("arr_email");
          out.println("<br>*******Shortlist Candidates:********<br>");  //display Shortlist Candidates
          //  out.println();
          
            for(int i=0;i<mails.size();i++)
            {
                out.println("Email:"+ mails.get(i));
                out.println("<br>"); 
            }
                //new updated //for sending mail code
                
                 
                 out.println(" <form action=\"SendiingMails.jsp\" method=\"post\"> ");
                 
                
                 out.println("<br>");
                 out.println("<br>");
                 out.println("<br>");
                 out.println("<br>");
                 
                
                 out.println("<br>");
                 out.print("<input type=submit value=SendMail class=\"button\">");
                 out.println("</form>"); //close form action tag
                 
                 
                  out.println("</body>");
                  out.print("</html>");

        %>
    </body>
</html>
 