<%-- 
    Document   : personalinfo
    Created on : Feb 9, 2017, 9:37:29 AM
    Author     : AMOL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,org.w3c.dom.*,javax.xml.parsers.*,javax.xml.transform.*, javax.xml.transform.dom.*,javax.xml.transform.stream.*"%>  
<jsp:useBean id="obj1" class="Data.ResumeBean" scope="session"/>
<jsp:setProperty name="obj1" property="*"/> 

<jsp:useBean id="obj" class="Register.User" scope="session"/>
<jsp:setProperty property="email" name="obj"/>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Information</title>
    </head>
    <body>
        
       <%

       try{
            Element root;
            DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance(); //define factory api to create dom tree
            DocumentBuilder docBuilder = builderFactory.newDocumentBuilder();   
            Document doc;  
            TransformerFactory factory;
            Transformer transformer;
            DOMSource source;
            FileWriter writer;
            BufferedWriter bw;
         
           // String nnn=obj.getEmail();
            //out.print("NAME:"+nnn);
            
          /*  out.print("NAME:"+obj.getName());
            out.print("Headline:"+obj.getResumeheadline());
            out.print("clocation:"+obj.getCurrent_location());
            out.print("exp:"+obj.getExperience());
            out.print("plocation:"+obj.getPreferred_location());
            out.print("Mobile:"+obj.getMobile());
            out.print("Email:"+obj.getEmail());
            out.print("Address:"+obj.getPermenantaddress());
            out.print("City:"+obj.getCity());
            out.print("Date:"+obj.getDob());
            out.print("Gender:"+obj.getGender());
            out.print("pincode:"+obj.getPincode());
            out.print("KeySkills:"+obj.getKeyskills());*/
            //FileCounter f=new FileCounter();
           // File file=new File("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\build\\web\\resumes123\\");
           // int listOfFiles=f.listaj(file);
           // listOfFiles=listOfFiles+100;
           // out.print("Listof Files:"+ listOfFiles);
            
           // String name=request.getParameter("name");
           // String filename=listOfFiles+name;
           // request.setAttribute("NAME", filename); //set Session
           
            //String filename=(String)session.getAttribute("name");
            
                String email=obj.getEmail();
                String filename=email;
                 //session.setAttribute("session_email",email);    //session created here
                //out.print("NAME IS:"+filename);
                File file=new File("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes\\"+filename+".xml");
               //  if(file.exists()){ listOfFiles++;    }out.print("COUNT:"+ listOfFiles);
               
             //out.print("File Name:"+filename+"\n");
             if(file.exists())
             {
                 out.print("This username is already used!!!");
                 out.print("\n"+"Please try again!!!!");
                 response.sendRedirect("personalinfo.html");
             }
             else
             {    
                out.println("\n"+ "New File will be created"); 
                out.println("at location : "+file);
                
                doc=docBuilder.newDocument(); //create dom tree
             
                root=doc.createElement("Root"); //root element
                doc.appendChild(root);
                
                Element parent = doc.createElement("Resume");   //child of root
               // root.appendChild(parent);
                Attr attr = doc.createAttribute("id");    
		attr.setValue(("1")); 
		parent.setAttributeNode(attr);
                
                Element xml_personalInfo=doc.createElement("PersonalInformation");
               
               // String name=request.getParameter("name");
                Element xml_name = doc.createElement("Name");
                xml_name.appendChild(doc.createTextNode(obj1.getName()));
                xml_personalInfo.appendChild(xml_name);

               // String resumeheadline=request.getParameter("resumeheadline");
                Element xml_resumeheadline=doc.createElement("ResumeHeadLine");
                xml_resumeheadline.appendChild(doc.createTextNode(obj1.getResumeheadline())); 
                xml_personalInfo.appendChild(xml_resumeheadline);

              //  String currentlocation=request.getParameter("current_location");
                Element xml_currentlocation= doc.createElement("CurrentLocation");
                xml_currentlocation.appendChild(doc.createTextNode(obj1.getCurrent_location())); 
                xml_personalInfo.appendChild(xml_currentlocation);

              //  String experience=request.getParameter("experience");
                Element xml_exp= doc.createElement("Experience");
                xml_exp.appendChild(doc.createTextNode(obj1.getExperience()));
                xml_personalInfo.appendChild(xml_exp);
                
             //   String preferred_location=request.getParameter("preferred_location");
                Element xml_preferredexperience=doc.createElement("PreferredExperience");
                xml_preferredexperience.appendChild(doc.createTextNode(obj1.getPreferred_location()));
                xml_personalInfo.appendChild(xml_preferredexperience);

               // String mobno=request.getParameter("mobile");
                Element xml_mobno=doc.createElement("MobileNo");
                xml_mobno.appendChild(doc.createTextNode(obj1.getMobile()));
                xml_personalInfo.appendChild(xml_mobno);

                //String email=request.getParameter("email");
                Element xml_email=doc.createElement("Email");
                xml_email.appendChild(doc.createTextNode(email));
                xml_personalInfo.appendChild(xml_email);

              //  String permenantAddress=request.getParameter("message");
                Element xml_permenantAddress=doc.createElement("PermenantAddress");
                xml_permenantAddress.appendChild(doc.createTextNode(obj1.getPermenantaddress()));
                xml_personalInfo.appendChild(xml_permenantAddress);

              //  String city=request.getParameter("city");
                Element xml_city=doc.createElement("City");
                xml_city.appendChild(doc.createTextNode(obj1.getCity()));
                xml_personalInfo.appendChild(xml_city);

            //    String dob=request.getParameter("dob");
                Element xml_dob=doc.createElement("DOB");
                xml_dob.appendChild(doc.createTextNode(obj1.getDob()));
                xml_personalInfo.appendChild(xml_dob);

            //    String gender=request.getParameter("gender");
                Element xml_gender=doc.createElement("Gender");
                xml_gender.appendChild(doc.createTextNode(obj1.getGender()));
                xml_personalInfo.appendChild(xml_gender);
                
                Element xml_languagesknown=doc.createElement("LanguagesKnown");
                xml_languagesknown.appendChild(doc.createTextNode(obj1.getLanguagesknown()));
                xml_personalInfo.appendChild(xml_languagesknown);

             //   String pincode=request.getParameter("pincode");
                Element xml_pincode=doc.createElement("Pincode");
                xml_pincode.appendChild(doc.createTextNode(obj1.getPincode()));
                xml_personalInfo.appendChild(xml_pincode);

                //String keyskills=request.getParameter("keyskills");
                Element xml_keyskills=doc.createElement("KeySkills");
                xml_keyskills.appendChild(doc.createTextNode(obj1.getKeyskills()));
                xml_personalInfo.appendChild(xml_keyskills);  
                
                parent.appendChild(xml_personalInfo);
                root.appendChild(parent);
                
                factory=TransformerFactory.newInstance();   //new factory instance
                transformer=factory.newTransformer();  // transform a source tree into a result tree.
                transformer.setOutputProperty(OutputKeys.INDENT,"true");
                StringWriter sw=new StringWriter(); //create initial buffer
                StreamResult result=new StreamResult(sw);   //translate into xml file
                source = new DOMSource(doc);    //transform source tree into dom tree
                transformer.transform(source,result); //xml source to result
                String xmlString=sw.toString();
                writer=new FileWriter(file,true);
                bw=new BufferedWriter(writer);
                bw.write(xmlString);
                bw.flush(); //flushes the String
                bw.close();
                
                response.sendRedirect("profilesummary.html");
             }
               // response.sendRedirect("profilesummary.html");
        }catch(Exception e){out.print(e);}  
            
    %>
    
    </body>
</html>
