<%-- 
    Document   : summary
    Created on : Feb 4, 2017, 8:58:53 PM
    Author     : AMOL
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ page import ="java.util.*" %>
<%@ page import="javax.xml.transform.*" %>
<%@ page import="javax.xml.transform.stream.*" %>
<%@ page import="javax.xml.transform.dom.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="javax.xml.parsers.*" %>

<jsp:useBean id="obj" class="Register.User" scope="session"/>
<jsp:setProperty name="obj" property="email"/>

<jsp:useBean id="s1" class="Data.Summary" scope="session"/>
<jsp:setProperty name="s1" property="*"/>
<%
    try{
            DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
            String filename=obj.getEmail();
            File file=new File("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml");
            
          
            Document document = documentBuilder.parse(file);
             
            Element root = document.getDocumentElement();   //get the root element
            //out.print("Root:"+root);
            Element firstElement=(Element)root.getFirstChild();
           
            Element xml_summary = document.createElement("ProfileSummary");
            Element xml_name = document.createElement("Summary");
            xml_name.appendChild(document.createTextNode(s1.getProfileSummary()));
            xml_summary.appendChild(xml_name);
            firstElement.appendChild(xml_summary);
            root.appendChild(firstElement);
       

          
        

            DOMSource source = new DOMSource(document);

            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            StreamResult result = new StreamResult(("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml"));
            transformer.transform(source, result);
            response.sendRedirect("education.html");
                
       }catch(Exception e){out.print(e);}
%>
   
