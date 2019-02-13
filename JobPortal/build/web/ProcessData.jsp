<%-- 
    Document   : ProcessData
    Created on : Feb 20, 2017, 10:57:32 PM
    Author     : AMOL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
          <title>Jobs </title>
        
    </head>
    <body>
        <jsp:useBean id="post1" class="JobPost.JobPostBean" scope="session"/>
        <jsp:setProperty name="post1" property="*"/>
        <%@page import="JobPost.ProcessData"%> 
        
        <%
            int status=ProcessData.jobUpload(post1);
            //out.print("Email:"+post1.getHremail());
            if(status>0)
            {
                 out.print("<title>"+ "Data Uploaded Successfully" + "</title>");
                 response.sendRedirect("DisplayJobs.jsp");
           
                
            }
            else
            {
                out.print("Error!!"); 
            }
        %>
    </body>
</html>
