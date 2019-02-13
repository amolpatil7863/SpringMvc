<%-- 
    Document   : SendiingMails
    Created on : Mar 26, 2017, 10:01:18 AM
    Author     : AMOL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import ="javax.mail.PasswordAuthentication" %>
<%@ page import ="javax.mail.Session" %>
<%@ page import ="javax.mail.Transport" %>
<%@ page import ="javax.mail.internet.InternetAddress" %>
<%@ page import ="javax.mail.internet.MimeMessage" %>


<%@page import="java.util.Properties"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String hr_email=(String)session.getAttribute("s_email");
            // out.println(hr_email);
             Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
     
             PreparedStatement pst = con.prepareStatement("Select company_name from listofjobs where hr_email= ? ");
             pst.setString(1,hr_email);
             ResultSet rs=pst.executeQuery();
             String company_name="";
             while(rs.next())
             {
                 company_name=rs.getString(1);
             }
             // out.println("Company Name:"+company_name);
            
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
             
                 final String user="portaljob244"; //username
                 final String password="jobportal123-"; //password
              ArrayList<String> mails=(ArrayList<String>)session.getAttribute("arr_email");
            
              
              out.println("<br>");out.println("<br>");out.println("<br>");out.println("<br>");out.println("<br>");
              out.println("<br>");out.println("<br>");out.println("<br>");out.println("<br>");
              
             // out.println("SIZE:"+mails.size());
              for(int i=0;i<mails.size();i++)
              {
                 out.println("Email:"+ mails.get(i));
                 out.println("<br>");
              }
              
             for(int i=0;i<mails.size();i++)
              {
            
                    // String user="portaljob244"; //username
                    // String password="jobportal123-"; //password
               //Get the session object  
                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
            
        Session session1 = Session.getDefaultInstance(props,new javax.mail.Authenticator() 
        {  
             protected PasswordAuthentication getPasswordAuthentication() 
                {  
                    return new PasswordAuthentication(user,password);  
                }  
        });  

            //Compose the message  
             try {  
                     MimeMessage message = new MimeMessage(session1);  
                     message.setFrom(new InternetAddress(user));  
                     message.addRecipient(Message.RecipientType.TO,new InternetAddress(mails.get(i)));  //reciever mail
                     //String companmy_name=(String)session.getAttribute("s_companyName");
                     message.setSubject("Shortlisted for "+company_name); 
                     PreparedStatement pst1 = con.prepareStatement("Select applicant_name from listofjobs where applicant_email= ? ");
                     pst1.setString(1,mails.get(i));
                     ResultSet rs1=pst1.executeQuery();
                     String applicant_name="";
                    while(rs1.next())
                    {
                         applicant_name=rs1.getString(1);
                    }
                     String msg="We are glad to inform that you have been shortlisted for the Interview";
                     message.setText("Hello, "+applicant_name+ ""+" Greetings!! "+msg
                             + ""+" ");  
       
                    //send the message  
                     Transport.send(message);  
  
                        out.println("message sent successfully...");  
   
                 } catch (MessagingException e) {out.println(e);}  
          }//end AraayList Here   
             
                 out.println("</form>");
                 out.println("</div>");
                 out.println("</div>");
                 out.println("</body>");
                 out.print("</html>");
        %>
    </body>
</html>
