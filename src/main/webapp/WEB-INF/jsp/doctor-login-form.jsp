<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="checkdoctorlogin" method="post" modelAttribute="doctor">
				<div>
					<label for=doctorName>Name</label>
					<div>
						<form:input path="doctorName" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" type="password" />
					</div>
				</div>
				<form:button>Login</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>