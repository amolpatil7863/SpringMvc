<%-- 
    Document   : login
    Created on : Jan 18, 2017, 10:37:23 PM
    Author     : AMOL
--%>


<%@ page import="java.io.File" %>
<%@ page import ="java.util.*" %>
<%@ page import="javax.xml.transform.*" %>
<%@ page import="javax.xml.transform.stream.*" %>
<%@ page import="javax.xml.transform.dom.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="javax.xml.parsers.*" %>


<%@page import="Register.ConnectionProvider"%>
<jsp:useBean id="obj" class="Register.User" scope="session"/>
<jsp:setProperty property="email" name="obj"/>
<jsp:setProperty property="name" name="obj"/>
<jsp:setProperty property="password" name="obj"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Register.Login"%> 

<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Form</title>
</head>
<body>
     
     
<% 
        boolean status=Login.validate(obj);
			 if(status==false)
			{
				
				response.sendRedirect("login.html");
                                out.print("Error");
				
			}
			else
			{
                            //out.print("Login success");
				//response.sendRedirect("loginsuccessfull.html");
                                String filename=obj.getEmail();
                                File file=new File("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml");
              
                                if(file.exists())   
                                {
                                     out.println("login Successfully!!!");
                                     
                                     session.setAttribute("Email",filename);
                                     response.sendRedirect("DisplayOnBrowser.jsp");
                                }
                                else
                                {
                                    response.sendRedirect("loginsuccessfull.html");
                                }
				//session.setAttribute("name",obj.getEmail());
                                
			}
			
		
		%>
</body>
</html>
