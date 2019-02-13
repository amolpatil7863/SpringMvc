<%-- 
    Document   : filter
    Created on : Mar 17, 2017, 1:50:58 PM
    Author     : AMOL
--%>

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
             out.println("<style>");
             out.println("h2 {color:yellow;text-align:right;} ");
             out.println("</style>");
             //javascript code start here
             out.println("<script type=\"text/javascript\">");
             out.println("function validateform()");
             out.println("{");
             
             out.println("if(document.filter_form.qualification.selectedIndex==\"\" || document.filter_form.qualification.selectedIndex==null)");
             out.println("{");
             out.println("alert(\"Please Select Qualification\");");
             out.println("return false;");
             out.println("}");
             out.println("if(document.filter_form.specialization.selectedIndex==\"\" || document.filter_form.specialization.selectedIndex==null)");
             out.println("{");
             out.println("alert(\"Please Select Specialization\");");
             out.println("return false;");
             out.println("}");
             out.println("if(document.filter_form.marks.value==\"\" || document.filter_form.marks.value==null)");
             out.println("{");
             out.println("alert(\"Please enter Aggregates\");");
             out.println("return false;");
             out.println("}");
             out.println("if(document.filter_form.experience.selectedIndex==\"\" || document.filter_form.experience.selectedIndex==null)");
             out.println("{");
             out.println("alert(\"Please Select Experience\");");
             out.println("return false;");
             out.println("}");
             
             out.println("}");
             out.println("</script>");
             
             out.println("</head>");
             out.println("<body>");
             out.println(" <form action=\"process_Filter.jsp\" method=\"post\" name=\"filter_form\" onsubmit=\"return validateform()\"> ");  
             String hrname=(String)session.getAttribute("s_hrname");//session 
             out.println(" <h2>"+hrname +"<h2>"+"</h1>");
             out.println(" <div class=\"container\"> ");
             out.println("<br><br><br><br><br><br><font face=verdana color=yellow  size=10px;><center>Set Filter</center></font>");
             out.println("<br>");
             out.println(" <div class=\"form\">");
             out.println(" <form id=\"contactform\">");
             
             out.println("<p class=\"contact\">");
             out.println("<label for=\"qualification:\">"+"Qualification:"+"</label>");
             out.println("<select name=qualification class=required>");
             out.println("<option value=-1>Select</option> ");
	     
             out.println("<option value=B.Tech/B.E.>B.Tech/B.E.</option>");
			 out.println("<option value=B.A>B.A</option>");   
			 out.println("<option value=B.Arch>B.Arch</option>");
			 out.println("<option value=BCA>BCA</option>");
             out.println("<option value=B.Com>B.Com</option>");
             out.println("<option value=B.Ed>B.Ed</option>"); 
			 out.println("<option value=B.Sc>B.Sc</option>");  
             out.println("<option value=BHMS>BHMS</option>");  
             out.println("<option value=LLB>LLB</option>");
             out.println("<option value=MBBS>MBBS</option>");
             out.println("</select>");
             out.println("</p> <br>");
            
            
             out.println("<p class=\"contact\">");
             out.println("<label for=\"Specialization:\">"+"Specialization:"+"</label>");
             out.println("<select name=specialization>");
             out.println("<option value=-1>Select</option> ");
             out.println("<option value=IT>Information Technology</option>"); 
			 out.println("<option value=Civil >Civil</option>"); 
			 out.println("<option value=Computers >Computers</option>");   
			 out.println("<option value=Electrical >Electrical</option>");    
			 out.println("<option value=Electronics/Telecommunication >Electronics/Telecommunication</option>");
			 out.println("<option value=Energy >Energy</option> ");
             out.println("<option value=Instrumentation >Instrumentation</option> ");
			 out.println("<option value=Mechanical >Mechanical</option> ");     
             out.println("<option value=Mineral >Mineral</option> ");       
             out.println("<option value=Nuclear >Nuclear</option>");       
			 out.println("<option value=Petroleum>Petroleum</option> ");    
			 out.println("<option value=Production/Industrial >Production/Industrial</option> ");  
			 out.println("<option value=Textile>Textile</option> ");
			 out.println("<option value=Other Engineering >Other Engineering</option></select></p>");

             out.println("<br>");
             
             
             out.println("<p class=\"contact\">");
             out.println("<label for=\"Marks:\">"+"Aggregate:"+"</label>");
             out.println("</p>"); 
             out.println("<input id=Marks type=number name=marks placeholder=Set Marks  tabindex=1>");
             out.println("<br>");
             
             out.println("<p class=\"contact\">");
             out.println("<label for=\"experience:\">"+"Experience:"+"</label>");
             out.println("<select name=experience>");
             out.println("<option value=-1>Select</option> ");
             out.println("<option value=0>0</option>");
             out.println("<option value=1>1</option>");
             out.println("<option value=2>2</option>");
             out.println("<option value=3>3</option>");
             out.println("<option value=4>4</option>");
             out.println("<option value=5>5</option>");
             out.println("<option value=6>6</option>");
             out.println("</select></p><br>");
             
             out.print("<input class=buttom type=submit id=count value=Display>");
             out.println("</form>");
             out.println("</div>");
             out.println("</form>");
             out.println("</body>");
             out.print("</html>");
        %>
    </body>
</html>
