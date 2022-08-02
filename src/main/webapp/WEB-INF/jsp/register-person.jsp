<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Person</title>
<style>
input[type=submit] {
	width: 10%;
	background: purple;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background: #000;
}
</style>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="root">
		<div id="form">
			<form:form action="register" method="post"
				modelAttribute="registerperson">
				<div>
					<label for="personId">Person id</label>
					<div>
						<form:input path="personId" />
					</div>
				</div>
				<div>
					<label for="name">Name</label>
					<div>
						<form:input path="name" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<form:select path="gender">
						<form:option value="gender">Gender</form:option>
						<form:option value="male">Male</form:option>
						<form:option value="female">Female</form:option>
						<form:option value="transgender">Transgender</form:option>
					</form:select>
				</div>
				<div>
					<label for="dob">DOB</label>
					<div>
						<form:input path="dob" type="date" />
					</div>
				</div>
				<div>
					<label for="bloodGroup">Blood Group</label>
					<div>
						<form:input path="bloodGroup" />
					</div>
				</div>
				<div>
					<label for="emailId">Email id</label>
					<div>
						<form:input path="emailId" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<label for="mobileNumber">Mobile Number</label>
					<div>
						<form:input path="mobileNumber" />
					</div>
				</div>
				<div>
					<label for="location">Location</label>
					<div>
						<form:input path="location" />
					</div>
				</div>
				<div>
					<label for="personType">Person Type</label>
					<form:select path="personType">
						<form:option value="personType">Person Type</form:option>
						<form:option value="doctor">Doctor</form:option>
						<form:option value="patient">Patient</form:option>
					</form:select>
				</div>		
				<div>
					<input type="submit" value="submit">
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>