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
			<form:form action="checkpatientlogin" method="post" modelAttribute="patient">
				<div>
					<label for=emailId>Email</label>
					<div>
						<form:input path="emailId" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" type="password"/>
					</div>
				</div>
				<form:button>Login</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>