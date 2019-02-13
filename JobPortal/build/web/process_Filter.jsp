<%-- 
    Document   : process_Filter
    Created on : Feb 17, 2017, 5:01:43 PM
    Author     : AMOL
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ page import ="java.util.*" %>
<%@ page import="javax.xml.transform.*" %>
<%@ page import="javax.xml.transform.stream.*" %>
<%@ page import="javax.xml.transform.dom.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="javax.xml.parsers.*" %>


<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <jsp:useBean id="f1" class="Data.FilterData" scope="session"/>
      <jsp:setProperty name="f1" property="*"/>
      
 <%
  try{
                 
      String hr_email=(String)session.getAttribute("s_email");
      out.println("Current Hr:"+"<font size=2 color=yellow>"+hr_email+"</font>"+"<br><br>");
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
     
      PreparedStatement pst = con.prepareStatement("Select applicant_email from listofjobs where hr_email= ? ");
      pst.setString(1,hr_email);
      ResultSet rs=pst.executeQuery();
      //String databasehr_email="";
      ArrayList<String> al=new ArrayList<String>();
        ArrayList<String> al_mail=new ArrayList<String>(); //for display filter Result
      while(rs.next())
      {
          al.add(rs.getString(1));
      }
                 out.println("<!DOCTYPE HTML>");    //html start here
                 out.print("<html>");
                 out.println("<head>");
                 out.println("<link href=css/Resume/style1.css rel=stylesheet type=text/css>");
                 out.println("<link href=css/Resume/demo.css rel=stylesheet type=text/css>");
                 out.println("<style>");
                 out.println("h2 {color:yellow;text-align:right;} ");
                 out.println("</style>");
                 out.println("</head>");
                 out.println("<body>");
                 String hrname=(String)session.getAttribute("s_hrname");//session 
                   out.println(" <h2>"+hrname +"<h2>"+"</h1>");
                 out.println(" <div class=\"container\"> ");
                 out.println(" <div class=\"form\">");
                 out.println(" <form id=\"contactform\">");       
                 
            //     out.println("Total no of applicants applied for job:"+al.size()+"<br>"); //total no on applicants
            session.setAttribute("total_candidates",al);//total applicats applied for job
          //  for(int i=0;i<al.size();i++)
            //{
              //  out.println("Applicants "+ i+ ": "+al.get(i)+"<br>"); //display one by one
            //}
      
      File folder = new File("C:\\Users\\AMOL\\Documents\\NetBeansProjects\\JobPortal\\Resumes");
       
      File[] listOfFiles = folder.listFiles();
      String search="";
      String specialization="";
      
      search=f1.getQualification();
      specialization=f1.getSpecialization();
     // String agg=Integer.toString( f1.getMarks());
     // String experience=f1.getExperience();
     
     //  out.println("<br>***Shortlist Candidates:*****<br>");  //display Shortlist Candidates
       
      for(int i=0;i<listOfFiles.length;i++)
       {	
        File file = listOfFiles[i];
        for(int j=0;j<al.size();j++)
        { 
	if(file.getName().endsWith(".xml") && file.getName().contains(al.get(j)))
	 {
	   String pathName=file.getAbsolutePath();
	   DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	   DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	   Document doc = dBuilder.parse(pathName);
	   doc.getDocumentElement().normalize();

	   NodeList nList= doc.getElementsByTagName("Resume"); //xml searching root 
           
	    for(int temp=0; temp<nList.getLength();temp++) 
             {
              Node nNode=nList.item(temp);
                            
              if(nNode.getNodeType()==Node.ELEMENT_NODE) 
               {
                Element eElement=(Element)nNode;
                String xml_agg=eElement.getElementsByTagName("Aggregates").item(0).getTextContent();
                int aggr=Integer.valueOf(xml_agg);            
                int txt_aggr=f1.getMarks();
                String xml_specialization= eElement.getElementsByTagName("Specialization").item(0).getTextContent();
                int exp=Integer.parseInt(eElement.getElementsByTagName("Experience").item(0).getTextContent());
                int txt_exp=Integer.parseInt(f1.getExperience());
                
              if(search.equals(eElement.getElementsByTagName("GraduationType").item(0).getTextContent()))
           
          
             {
              if(txt_aggr<=aggr && txt_exp<=exp)
              {
              if(specialization.equals(xml_specialization))
                {                
                // out.println("Applicant Name: "+ eElement.getElementsByTagName("Name").item(0).getTextContent()+" "+"and its Email:"+ al.get(j));
                    al_mail.add(al.get(j));//only shortlist candidates
                }
              }
                
             }
           
	   }
          }
	
        }
       
        }//end arraylist 
     }
       session.setAttribute("arr_email", al_mail);
       response.sendRedirect("FilterResult.jsp");
      
    }catch(Exception e){out.print(e);}
%>

</body>
</html>
