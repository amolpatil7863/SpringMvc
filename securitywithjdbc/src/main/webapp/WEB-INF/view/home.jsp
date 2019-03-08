<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<title>Spring Security Demo Home Page</title>
</head>
<body>
	<h2>Spring Security Demo Home Page</h2>

	<!--  manager role -->
	
	<p>
	
		User:
		<security:authentication property="principal.username" />
		<br> <br> Role(s):
		<security:authentication property="principal.authorities" />
	</p>
	
	
	<security:authorize access="hasRole('ROLE_MANAGER')">
	<h2>Manager Role</h2>
		<!-- Add a link to point to /leaders ... this is for the managers -->
		<p>
			<a href="securitywithjdbc/leaders">Leadership Meeting</a> (Only for Manager peeps)
		</p>
	</security:authorize>

	
	<!--  Admin Role -->
	<security:authorize access="hasRole('ROLE_ADMIN')">
	<h2>Admin Role</h2>
		<!-- Add a link to point to /systems ... this is for the admins -->
		<p>
			<a href="securitywithjdbc/systems">IT Systems Meeting</a> (Only for Admin peeps)
		</p>
	</security:authorize>
	
	
	<security:authorize access="hasRole('ROLE_EMPLOYEE')">
	<h2>Employee Role</h2>
		<p>
			<a href="">Employee Meeting</a> (Only for Employee)
		</p>
	</security:authorize>
	<hr>

	<!--logout button -->

	<form:form action="logout" method="POST">
		<input type="submit" value="Logout" />
	</form:form>
</body>
</html>