<%-- 
    Document   : ProjectDetail
    Created on : Feb 14, 2017, 8:44:29 PM
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

<jsp:useBean id="p1" class="Data.ProjectDetail" scope="session"/>
<jsp:setProperty name="p1" property="*"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project Details</title>
    </head>
    <body>
        <%
        try{
                DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
                DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
                // String filename=(String)session.getAttribute("session_email");
                String filename=obj.getEmail();
                out.print("FILENAME:"+filename);
                
                
                /*out.println("Project Title"+p1.getProjecttitle());
                out.println("Duration:"+p1.getStartMonth()+p1.getStartYear()+"To"+p1.getEndMonth()+p1.getEndYear());
                out.print("Location"+p1.getProjectlocation()+"LocationType:"+p1.getLocationType());
                out.print("Emp Type:"+p1.getEmploymentNature());
                out.print("Project Detail"+p1.getProjectDetails());
                out.print("Role:"+p1.getRole());
                out.print("Role Description:"+p1.getRoleDescription());
                out.print("TeamSize:"+p1.getTeamSize());*/
                File file=new File("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml");
            
                Document document=documentBuilder.parse(file);
                Element root=document.getDocumentElement();
                Element firstElement=(Element)root.getFirstChild();
                Element xml_projectDetail=document.createElement("ProjectDetails");
                
                Element xml_projectTitle=document.createElement("ProjectTitle");
                xml_projectTitle.appendChild(document.createTextNode(p1.getProjecttitle()));
                xml_projectDetail.appendChild(xml_projectTitle);
                
                Element xml_duration=document.createElement("Duration");
                xml_duration.appendChild(document.createTextNode(p1.getStartMonth()+p1.getStartYear()+"To"+p1.getEndMonth()+p1.getEndYear()));
                xml_projectDetail.appendChild(xml_duration);
                
                Element xml_location=document.createElement("ProjectLocation");
                xml_location.appendChild(document.createTextNode(p1.getProjectlocation()));
                xml_projectDetail.appendChild(xml_location);
                
                Element xml_empType=document.createElement("EmploymentType");
                xml_empType.appendChild(document.createTextNode(p1.getEmploymentNature()));
                xml_projectDetail.appendChild(xml_empType);
                
                Element xml_detail=document.createElement("ProjectDescription");
                xml_detail.appendChild(document.createTextNode(p1.getProjectDetails()));
                xml_projectDetail.appendChild(xml_detail);
                
                Element xml_role=document.createElement("Role");
                xml_role.appendChild(document.createTextNode(p1.getRole()));
                xml_projectDetail.appendChild(xml_role);
                
                Element xml_roleDescription=document.createElement("RoleDescription");
                xml_roleDescription.appendChild(document.createTextNode(p1.getRoleDescription()));
                xml_projectDetail.appendChild(xml_roleDescription);
                
                Element xml_teamSize=document.createElement("TeamSize");
                xml_teamSize.appendChild(document.createTextNode(p1.getTeamSize()));
                xml_projectDetail.appendChild(xml_teamSize);
                
                firstElement.appendChild(xml_projectDetail);
                root.appendChild(firstElement);
            
                 DOMSource source = new DOMSource(document);

                TransformerFactory transformerFactory = TransformerFactory.newInstance();
                Transformer transformer = transformerFactory.newTransformer();
                StreamResult result = new StreamResult(("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml"));
                transformer.transform(source, result);
               
                    out.println("Your Resume Uploaded Successfully");
            
            }catch(Exception e){out.print(e);}
            
        %>  
    </body>
</html>
