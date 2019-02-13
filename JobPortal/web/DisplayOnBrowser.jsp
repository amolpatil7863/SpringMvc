<%-- 
    Document   : DisplayOnBrowser
    Created on : Feb 28, 2017, 10:02:59 AM
    Author     : AMOL
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobList</title>
    </head>
    <body>
         
        <%@page import="HrRegister.ConnectionProvider"%>
        <jsp:useBean id="hrobj" class="HrRegister.HrData" scope="session"/>
        <jsp:setProperty property="hremail" name="hrobj"/>  
     
        
        <%
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from JobPostData");
                
                
             
               int count=0;
               HashMap<String,Integer> hm=new HashMap();
                while(rs.next())
                {
                 out.println("Email:"+rs.getString(2));
                 session.setAttribute("session_HrEmail",rs.getString(2));
                 PreparedStatement pst = con.prepareStatement("Select company_name from hrRegister where email= ? ");
                 pst.setString(1,rs.getString(2));
                 ResultSet rs1=pst.executeQuery();
                 String companyName="";
                    if(rs1.next())
                    { 
                        
                        companyName=rs1.getString(1);
                    } 
                 session.setAttribute("s_companyName",companyName);
                 out.println("<!DOCTYPE HTML>");
                 out.print("<html>");
                 out.println("<head>");
                 out.println("<link href=css/Resume/style1.css rel=stylesheet type=text/css>");
                 out.println("<link href=css/Resume/demo.css rel=stylesheet type=text/css>");
                 out.println("</head>");
                 out.println("<body>");
                 
                 out.println(" <form action=\"MaintainJobs.jsp\" method=\"post\"> ");
                 
                 out.println(" <div class=\"container\"> ");
                 out.println(" <div class=\"form\">");
                 out.println(" <form id=\"contactform\">");
                 out.println("<br>");
                 out.println("<br>");
                 out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"Company Name:\">"+"Company Name:"+"</label>"+ companyName );
                 out.println("</p>"); out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"Job Title:\">"+"Job Title:"+"</label>"+ rs.getString(3));
                 out.println("</p>"); out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"Job Description:\">"+"Job Description:"+"</label>"+ rs.getString(4));
                 out.println("</p>"); out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"salary:\">"+"Salary:"+"</label>"+ rs.getString(5));
                 out.println("</p>"); out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"Industry:\">"+"Industry:"+"</label>"+ rs.getString(6));
                 out.println("</p>"); out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"Functional Area:\">"+"Functional Area:"+"</label>"+ rs.getString(7));
                 out.println("</p>"); out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"Role:\">"+"Role:"+"</label>"+ rs.getString(8));
                 out.println("</p>"); out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"Key Skills:\">"+"Key Skills:"+"</label>"+ rs.getString(9));
                 out.println("</p>"); out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"Candidate Profile:\">"+"Candidate Profile:"+"</label>"+ rs.getString(10));
                 out.println("</p>"); out.println("<br>");
                 out.println("<p class=\"contact\">");
                 out.println("<label for=\"Company Profile:\">"+"Company Profile:"+"</label>"+ rs.getString(11));
                 out.println("</p>"); out.println("<br>");
                 
                
                 out.println("<br>");
                 out.print("<input class=buttom type=submit id=count value=Apply>");
                  count++;
                }  
                 out.println("</div>");
                 out.println("</form>");
                 out.println("</body>");
                 out.print("</html>");
        %>         
              
    </body>
</html>
