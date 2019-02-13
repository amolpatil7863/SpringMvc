<%-- 
    Document   : postjob
    Created on : Mar 16, 2017, 9:01:59 PM
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
             
             out.println("<script type=\"text/javascript\">");
             out.println("function validateform()");
             out.println("{");
             
             out.println("if(document.postjob_form.hremail.value==\"\" || document.postjob_form.hremail.value==null)");
             out.println("{");
             out.println("alert(\"Please enter hr email\");");
             out.println("return false");
             out.println("}");
             
            /* out.println("atpos=document.postjob_form.hremail.indexOf(\"@\")");
             out.println("dotpos=document.postjob_form.hremail.lastIndexOf(\".\")");
             out.println("if(atpos<1 || (dotpos-atpos<2) )");
             out.println("{");
             out.println("alert(\"Please enter correct email address\");");
             out.println("return false");
             out.println("}");*/
             
             out.println("if(document.postjob_form.jobtitle.value==\"\" || document.postjob_form.jobtitle.value==null)");
             out.println("{");
             out.println("alert(\"Please enter job title\");");
             out.println("return false");
             out.println("}");
             out.println("if(document.postjob_form.jobdescription.value==\"\" || document.postjob_form.jobdescription.value==null)");
             out.println("{");
             out.println("alert(\"Please enter job description\");");
             out.println("return false");
             out.println("}");
             out.println("if(document.postjob_form.salary.value==\"\" || document.postjob_form.salary.value==null)");
             out.println("{");
             out.println("alert(\"Please enter salary\");");
             out.println("return false");
             out.println("}");
             out.println("if(document.postjob_form.industry.value==\"\" || document.postjob_form.industry.value==null)");
             out.println("{");
             out.println("alert(\"Please enter Industry\");");
             out.println("return false");
             out.println("}");
             out.println("if(document.postjob_form.functionalarea.value==\"\" || document.postjob_form.functionalarea.value==null)");
             out.println("{");
             out.println("alert(\"Please enter Functional Area\");");
             out.println("return false");
             out.println("}");
             out.println("if(document.postjob_form.role.selectedIndex==\"\" || document.postjob_form.role.selectedIndex==null)");
             out.println("{");
             out.println("alert(\"Please select role\");");
             out.println("return false");
             out.println("}");
             out.println("if(document.postjob_form.keySkills.selectedIndex==\"\" || document.postjob_form.keySkills.selectedIndex==null)");
             out.println("{");
             out.println("alert(\"Please select Keyskill\");");
             out.println("return false");
             out.println("}");
             out.println("if(document.postjob_form.candidateProfile.value==\"\" || document.postjob_form.candidateProfile.value==null)");
             out.println("{");
             out.println("alert(\"Please enter Candidate Profile\");");
             out.println("return false");
             out.println("}");
             out.println("if(document.postjob_form.companyprofile.value==\"\" || document.postjob_form.companyprofile.value==null)");
             out.println("{");
             out.println("alert(\"Please enter Company Profile Profile\");");
             out.println("return false");
             out.println("}");
             
             out.println("}");
             out.println("</script>");
             out.println("</head>");
             out.println("<body>");
             
             out.println(" <form action=\"ProcessData.jsp\" method=\"post\" name=\"postjob_form\" onsubmit=\" return validateform()\"> ");    
             String hrname=(String)session.getAttribute("s_hrname");//session 
             out.println(" <h2>"+hrname +"<h2>"+"</h1>");
             out.println(" <div class=\"container\"> ");
             out.println(" <div class=\"form\">");
             out.println(" <form id=\"contactform\">");
             out.println("<br>");
             out.println("<br>");
             out.println("<br>");
             out.println("<font color=white size=5px;><center>POST A JOB</center></font><br>");
             out.println("<p class=\"contact\">");
             out.println("<label for=\"Email:\">"+"Email:"+"</label>");
             out.println("</p>"); out.println("<br>");
             out.println("<input id=email name=hremail placeholder=example@domain.com type=email> ");
             out.println("<p class=\"contact\">");
             out.println("<label for=\"jobTitle:\">"+"Job Title:"+"</label>");
             out.println("</p>"); 
             out.println("<textarea name =jobtitle rows=3 cols=57></textarea><br>");
             out.println("<br>");
             out.println("<p class=\"contact\">");
             out.println("<label for=\"jobDescription:\">"+"Job Description:"+"</label>");
             out.println("</p>"); 
             out.println("<textarea name =jobdescription rows=3 cols=57></textarea><br>");
             out.println("<br>");
             out.println("<p class=\"contact\">");
             out.println("<label for=\"Salary:\">"+"Salary:"+"</label>");
             out.println("</p>"); out.println("<br>");
             out.println("<input type=text name=salary class=salary  placeholder=eg.INR  id=Salary><br>");            
             out.println("<p class=\"contact\">");
             out.println("<label for=\"Industry:\">"+"Industry:"+"</label>");
             out.println("</p>"); out.println("<br>");
             out.println("<input type=text name=industry class=Industry  placeholder=Industry id=Industry><br>");
             out.println("<p class=\"contact\">");
             out.println("<label for=\"functional area:\">"+"Functional Area:"+"</label>");
             out.println("</p>"); out.println("<br>");
             out.println("<input type=text name=functionalarea placeholder=Functional Area ><br><br");
             out.println("<p class=\"contact\">");
             out.println("<label for=\"role:\">"+"Role:"+"</label>");
             out.println("<select name=role>");
             out.println("<option value=-1>Select</option>");
             out.println("<option value=Domain Expert>Domain Expert</option>");
             out.println("<option value=Sr.Project Leader>Sr.Project Leader</option> ");
             out.println("<option value=Solution Architect>Solution Architect</option>");
             out.println("<option value=Quality Analyst>Quality Analyst</option>");
             out.println("<option value=Database Architect/DBA>Database Architect/DBA</option>");
             out.println("<option value=Network/System Administrator>Network/System Administrator</option>");  
             out.println("<option value=Project Leader>Project Leader</option>"); 
             out.println("<option value=Module Leader>Module Leader</option>");  
             out.println("<option value=Sr.Programmer>Sr.Programmer</option>"); 
             out.println("<option value=Programmer>Programmer</option>"); 
             out.println("<option value=Test Engineer>Test Engineer</option>"); 
             out.println("<option value=other>Other</option>");
             out.println("</select>");
             out.println("</p><br>");   
             out.println("<p class=\"contact\">");
             out.println("<label for=\"keyskills:\">"+"Key Skills:"+"</label>"); 
             out.println("<select name=keySkills>");
	     out.println("<option value=-1>select</option>");
	     out.println("<option value=java>java</option>");
	     out.println("<option value=.net>.net</option>");
	     out.println("<option value=software Development>Software Development</option>");
	     out.println("<option value=software Tester>software Tester</option>");
	     out.println("</select>");
	     out.println("<p><br>");
             out.println("<p class=\"contact\">");
             out.println("<label for=\"candidate profile:\">"+"Desired Candidate Profile:"+"</label>");
             out.println("</p>"); 
             out.println("<textarea name =candidateProfile rows=3 cols=57> </textarea><br><br>");
             out.println("<label for=\"company profile:\">"+"Company Profile:"+"</label>");
             out.println("</p>");
             out.println("<textarea name =companyprofile rows=3 cols=57> </textarea><br><br>");
             out.print("<input class=buttom type=submit id=count value=Submit>");
             out.println("</form>");
             out.println("</div>");
             out.println("</form>");
             out.println("</body>");
             out.print("</html>");

        %>
    </body>
</html>
