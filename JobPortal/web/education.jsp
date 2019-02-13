<%-- 
    Document   : education
    Created on : Feb 12, 2017, 6:48:05 PM
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

<jsp:useBean id="e1" class="Data.Education" scope="session"/>
<jsp:setProperty name="e1" property="*"/>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Education Detail</title>
    </head>
    <body>
        <%
    try{
            DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
           // String filename=(String)session.getAttribute("session_email");
            String filename=obj.getEmail();
             
            /*out.print("Marks:"+Integer.toString(e1.getMarks()));
            out.print("X"+e1.getClassXMarks());
            out.print("XII"+e1.getClassXIIMarks());
            out.print("ENG:"+e1.getEnglishMarks());
            out.print("Math:"+e1.getMathsMarks());
            
         out.print("Edu:"+e1.getSpecialization());
          out.print("Edu1"+e1.getUniversity_name());
          out.print("Edu2:"+e1.getPassoutYear());
          out.print("Edu3:"+e1.getMarks());
          out.print("Edu4:"+e1.getCertificate_body());
          out.print("Edu5:"+e1.getCertificate_name());
          out.print("Edu6:"+e1.getGradingSystem());
          out.print("Edu7:"+e1.getCertificationYear());
          out.print("Edu77:"+e1.getClassXBoard());
          out.print("Edu8:"+e1.getClassXpassoutYear());
          out.print("Edu58:"+e1.getClassXmedium());
          out.print("Edu78:"+e1.getClassXMarks());
          out.print("Edu11:"+e1.getClassXCertification_name());
          out.print("Edu12:"+e1.getClassXCertificationBody());
          out.print("Edu21:"+e1.getClassXIIBoard());
          out.print("Edu22:"+e1.getClassXIIpassoutYear());
          out.print("Edu33:"+e1.getClassXIIMedium());
          out.print("Edu43:"+e1.getClassXIIMarks());
          out.print("Edu33:"+e1.getEnglishMarks());
          out.print("Edu342:"+e1.getMathsMarks());
          out.print("Edu333:"+e1.getClassXIICertification_name());
          out.print("Edu111:"+e1.getClassXIICertificationBody());*/
          
            out.print("FILENAME:"+filename); //out.print("EE"+e1.getGraduation());
            File file=new File("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml");
            
          
            Document document = documentBuilder.parse(file);
             
            Element root = document.getDocumentElement();
            Element firstElement=(Element)root.getFirstChild();
            
            Element x_education=document.createElement("EducationDetail");
            
            Element x_graduationType=document.createElement("GraduationType");
            x_graduationType.appendChild(document.createTextNode(e1.getGraduation()));
            x_education.appendChild(x_graduationType);
   
            Element x_Specialization=document.createElement("Specialization");
            x_Specialization.appendChild(document.createTextNode(e1.getSpecialization()));
            x_education.appendChild(x_Specialization);
            
            Element x_UniversityName=document.createElement("UniversityName");
            x_UniversityName.appendChild(document.createTextNode(e1.getUniversity_name()));
            x_education.appendChild(x_UniversityName);
            
            Element x_passoutYear=document.createElement("PassoutYear");
            x_passoutYear.appendChild(document.createTextNode(e1.getPassoutYear()));
            x_education.appendChild(x_passoutYear);
            
            Element x_gradingSystem=document.createElement("GradingSystem");
            x_gradingSystem.appendChild(document.createTextNode(e1.getGradingSystem()));
            x_education.appendChild(x_gradingSystem);
            
            Element x_marks=document.createElement("Aggregates");
            x_marks.appendChild(document.createTextNode(Integer.toString(e1.getAggregates())));
            x_education.appendChild(x_marks);
           
            Element x_certificationName=document.createElement("CertificationName");
            x_certificationName.appendChild(document.createTextNode(e1.getCertificate_name()));
            x_education.appendChild(x_certificationName);
            
            Element x_certificationBody=document.createElement("CertificationBody");
            x_certificationBody.appendChild(document.createTextNode(e1.getCertificate_body()));
            x_education.appendChild(x_certificationBody);
            
            Element x_certificationYear=document.createElement("CertificationYear");
            x_certificationYear.appendChild(document.createTextNode(e1.getCertificationYear()));
            x_education.appendChild(x_certificationYear);
            
            Element x_classXBoard=document.createElement("ClassXBoard");
            x_classXBoard.appendChild(document.createTextNode(e1.getClassXBoard()));
            x_education.appendChild(x_classXBoard);
            
            Element x_classXPassoutYear=document.createElement("ClassXPassoutYear");
            x_classXPassoutYear.appendChild(document.createTextNode(e1.getClassXpassoutYear()));
            x_education.appendChild(x_classXPassoutYear);
            
            Element x_classXMedium=document.createElement("ClassXMedium");
            x_classXMedium.appendChild(document.createTextNode(e1.getClassXmedium()));
            x_education.appendChild(x_classXMedium);
            
            Element x_classXMarks=document.createElement("ClassXMarks");
            x_classXMarks.appendChild(document.createTextNode(Integer.toString(e1.getClassXMarks())));
            x_education.appendChild(x_classXMarks);
           
            Element x_classXCertificationName=document.createElement("ClassXCertificationName");
            x_classXCertificationName.appendChild(document.createTextNode(e1.getClassXCertification_name()));
            x_education.appendChild(x_classXCertificationName);
            
            Element x_classXCertificationBody=document.createElement("ClassXCertificationBody");
            x_classXCertificationBody.appendChild(document.createTextNode(e1.getClassXCertificationBody()));
            x_education.appendChild(x_classXCertificationBody);
            
            Element x_classXIIBoard=document.createElement("ClassXIIBoard");
            x_classXIIBoard.appendChild(document.createTextNode(e1.getClassXIIBoard()));
            x_education.appendChild(x_classXIIBoard);
            
            Element x_classXIIPassoutYear=document.createElement("ClassXIIPassoutYear");
            x_classXIIPassoutYear.appendChild(document.createTextNode(e1.getClassXIIpassoutYear()));
            x_education.appendChild(x_classXIIPassoutYear);
            
            Element x_classXIIMedium=document.createElement("ClassXIIMedium");
            x_classXIIMedium.appendChild(document.createTextNode(e1.getClassXIIMedium()));
            x_education.appendChild(x_classXIIMedium);
            
            Element x_classXIIMarks=document.createElement("ClassXIIMarks");
            x_classXIIMarks.appendChild(document.createTextNode(Integer.toString(e1.getClassXIIMarks())));
            x_education.appendChild(x_classXIIMarks);
               
            Element x_classXIIEnglishMarks=document.createElement("ClassXIIEnglishMarks");
            x_classXIIEnglishMarks.appendChild(document.createTextNode(Integer.toString(e1.getEnglishMarks())));
            x_education.appendChild(x_classXIIEnglishMarks);
           
             Element x_classXIIMathsMarks=document.createElement("ClassXIIMathsMarks");
             x_classXIIMathsMarks.appendChild(document.createTextNode(Integer.toString(e1.getMathsMarks())));
             x_education.appendChild(x_classXIIMathsMarks);
            
            Element x_classXIICertificationName=document.createElement("ClassXIICertificationName");
            x_classXIICertificationName.appendChild(document.createTextNode(e1.getClassXIICertification_name()));
            x_education.appendChild(x_classXIICertificationName);
            
            Element x_classXIICertificationBody=document.createElement("ClassXIICertificationBody");
            x_classXIICertificationBody.appendChild(document.createTextNode(e1.getClassXIICertificationBody()));
            x_education.appendChild(x_classXIICertificationBody);
            
            
            
            
            firstElement.appendChild(x_education);
            root.appendChild(firstElement);
            
            
            
            DOMSource source = new DOMSource(document);

            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            StreamResult result = new StreamResult(("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml"));
            transformer.transform(source, result);
            
            response.sendRedirect("itskills.html");
       }catch(Exception e){out.print(e);}
            
         %>
    </body>
</html>
