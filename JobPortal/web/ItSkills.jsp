<%-- 
    Document   : ItSkills
    Created on : Feb 14, 2017, 12:06:56 AM
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

<jsp:useBean id="i1" class="Data.ItSkills" scope="session"/>
<jsp:setProperty name="i1" property="*"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IT Skills</title>
    </head>
    <body>
       
        <%
    try{
            DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
           // String filename=(String)session.getAttribute("session_email");
            String filename=obj.getEmail();
            out.print("FILENAME:"+filename);
            
          /*  
            out.print("Language:"+i1.getProgrammingSkill());
            out.print("Database:"+i1.getDatabaseSkill());
            out.print("Windows:"+i1.getOSSkill());
            out.print("SkillLevelP:"+i1.getSkillLevelofProgramming());
            out.print("SkillLevelD:"+i1.getSkillLevelofDatabase());
            out.print("SkillLevelW:"+i1.getSkillLevelofOS());
            out.print("Last Used P:"+i1.getLastUsedProgramming());
            out.print("Last Used D:"+i1.getLastUsedDatabase());
            out.print("Last Used OS:"+i1.getLastUsedOS());
            out.print("ExperP:"+i1.getExpYearofProgramming()+i1.getExpMonthofProgramming());
            out.print("ExperD:"+i1.getExpMonthofDatabase()+i1.getExpYearofDatabase());
            out.print("EXPrOS"+i1.getExpYearofOS()+i1.getExpMonthofOS());*/
            
          
            File file=new File("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml");
            
            Document document = documentBuilder.parse(file);
             
            Element root = document.getDocumentElement();
            Element firstElement=(Element)root.getFirstChild();
            Element xml_itSkills=document.createElement("ITSkills");
            
            Element xml_programmingSkill=document.createElement("Programming");
            xml_programmingSkill.appendChild(document.createTextNode(i1.getProgrammingSkill()));
            xml_itSkills.appendChild(xml_programmingSkill);
            
            Element xml_skillLevelOfProgramming=document.createElement("SkillLevelOfProgramming");
            xml_skillLevelOfProgramming.appendChild(document.createTextNode(i1.getSkillLevelofProgramming()));
            xml_itSkills.appendChild(xml_skillLevelOfProgramming);
            
            Element xml_lastUsedProgramming=document.createElement("LastUsedProgramming");
            xml_lastUsedProgramming.appendChild(document.createTextNode(i1.getLastUsedProgramming()));
            xml_itSkills.appendChild(xml_lastUsedProgramming);
            
            Element xml_expofProgramming=document.createElement("ExperienceOfProgramming");
            xml_expofProgramming.appendChild(document.createTextNode(i1.getExpYearofProgramming()+"Years"+" "+i1.getExpMonthofProgramming()+"Months"));
            xml_itSkills.appendChild(xml_expofProgramming);
            
            Element xml_databaseSkill=document.createElement("Database");
            xml_databaseSkill.appendChild(document.createTextNode(i1.getDatabaseSkill()));
            xml_itSkills.appendChild(xml_databaseSkill);
            
            Element xml_skillLevelOfDatabase=document.createElement("SkillLevelOfDatabase");
            xml_skillLevelOfDatabase.appendChild(document.createTextNode(i1.getSkillLevelofDatabase()));
            xml_itSkills.appendChild(xml_skillLevelOfDatabase);
            
            Element xml_lastUsedDatabase=document.createElement("LastUsedDatabase");
            xml_lastUsedDatabase.appendChild(document.createTextNode(i1.getLastUsedDatabase()));
            xml_itSkills.appendChild(xml_lastUsedDatabase);
            
            Element xml_expofDatabase=document.createElement("ExperienceOfDatabase");
            xml_expofDatabase.appendChild(document.createTextNode(i1.getExpYearofDatabase()+"Years"+" "+i1.getExpMonthofDatabase()+"Months"));
            xml_itSkills.appendChild(xml_expofDatabase);
            
            Element xml_operatingSystemSSkill=document.createElement("OperatingSystem");
            xml_operatingSystemSSkill.appendChild(document.createTextNode(i1.getOSSkill()));
            xml_itSkills.appendChild(xml_operatingSystemSSkill);
            
            Element xml_skillLevelOfOs=document.createElement("SkillLevelOfOperatingSystem");
            xml_skillLevelOfOs.appendChild(document.createTextNode(i1.getSkillLevelofOS()));
            xml_itSkills.appendChild(xml_skillLevelOfOs);
            
            Element xml_lastUsedOs=document.createElement("LastUsedOperatingSystem");
            xml_lastUsedOs.appendChild(document.createTextNode(i1.getLastUsedOS()));
            xml_itSkills.appendChild(xml_lastUsedOs);
            
            Element xml_expofOs=document.createElement("ExperienceOfOperatingSystem");
            xml_expofOs.appendChild(document.createTextNode(i1.getExpYearofOS()+"Years"+" "+i1.getExpMonthofOS()+"Months"));
            xml_itSkills.appendChild(xml_expofOs);
            
            firstElement.appendChild(xml_itSkills);
            root.appendChild(firstElement);
            
            DOMSource source = new DOMSource(document);

            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            StreamResult result = new StreamResult(("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml"));
            transformer.transform(source, result);
            
            response.sendRedirect("project.html");
            
            
           }catch(Exception e){out.print(e);}
            
         %> 
    </body>
</html>
