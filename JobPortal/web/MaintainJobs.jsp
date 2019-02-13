<%-- 
    Document   : MaintainJobs
    Created on : Feb 28, 2017, 5:06:20 PM
    Author     : AMOL
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                 out.println("</head>");
                 out.println("<body>");
                 
                 out.println(" <div class=\"container\"> ");
                 out.println(" <div class=\"form\">");
                 out.println(" <form id=\"contactform\">");
           String applicant_mail=(String)session.getAttribute("Email");
           
           String hr_email=(String)session.getAttribute("session_HrEmail");

           out.println("<br>");
  
           out.println("<br>");
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
           PreparedStatement pst = con.prepareStatement("Select name from register_data where email= ? ");
           pst.setString(1,applicant_mail);
           ResultSet rs1=pst.executeQuery();
           String applicant_name="";
           
            if(rs1.next())
             {
                 applicant_name=rs1.getString(1);
              
             }
            
            
            PreparedStatement pst1 = con.prepareStatement("Select job_title from JobPostData where email= ? "); 
            pst1.setString(1,hr_email);
            ResultSet rs=pst1.executeQuery();
            String job_title="";
            if(rs.next())
            {
                job_title=rs.getString(1);
              
            }
            PreparedStatement st = con.prepareStatement("Select hrname from hrRegister where email= ? "); 
            st.setString(1,hr_email);
            ResultSet rs2=st.executeQuery();
                String hrName="";
                if(rs2.next())
                {
                    hrName=rs2.getString("hrname");
                 
                    out.println("<br>");
                }
                //for auto increamenting id
                 Statement stmt=con.createStatement();
                 ResultSet rs_count=stmt.executeQuery("select count(job_id) from listofjobs");
                 int count=0;
                 while(rs_count.next())
                 {
                    count=rs_count.getInt(1);
                 }
                 count++;
                
                
               //for insert query 
              PreparedStatement p=con.prepareStatement("insert into listofjobs values(?,?,?,?,?,?,?)");
              p.setInt(1,count);
              p.setString(2,(String)session.getAttribute("s_companyName"));
              p.setString(3,hrName);
              p.setString(4,hr_email);
              p.setString(5,job_title);
              p.setString(6,applicant_name);
              p.setString(7,applicant_mail);
             
              int no_of_records=p.executeUpdate();
                   if(no_of_records>0)
                   {
                       out.println("<br><br><br><br><br><br><br><br><br><br><br><br>");
                       out.println("Successfully Applied");
                       out.println("<br>");
                       out.println("HR:" +hr_email+ "<br>");
                       out.println("Applicant Email:"+applicant_mail+"<br>");
                       out.println("NAME:"+applicant_name+"");
                       out.println("<br>");
                       out.println("Job_title:"+job_title+"");
                       out.println("<br>");
                       out.println("HrName:" + hrName+"<br>");
                    
                   }
                   else
                   {
                       out.print("Error");
                   }
                 
                   out.println("</form>");
                   out.println("</div>");
                   out.println("</div>");
                   out.println("</body>");
                   out.print("</html>");
       %>
    </body>
</html>
