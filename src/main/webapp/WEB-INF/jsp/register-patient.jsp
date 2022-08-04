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
<center>
	<h1>Patient-Registration</h1>
</center>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="root">
		<div id="form">
			<form:form action="register" method="post"
				modelAttribute="registerpatient">
				<center>
					<div>
						<label for="patientId">Patient id</label>
						<div>
							<form:input path="patientId" />
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
						<form:select path="bloodGroup">
							<form:option value="bloodGroup">Blood Group</form:option>
							<form:option value="O Positive">O Positive</form:option>
							<form:option value="O Negative">O Negative</form:option>
							<form:option value="A Positive">A Positive</form:option>
							<form:option value="A Negative">A Negative</form:option>
							<form:option value="B Positive">B Positive</form:option>
							<form:option value="B Negative">B Negative</form:option>
							<form:option value="AB Positive">AB Positive</form:option>
							<form:option value="AB Negative">AB Negative</form:option>
						</form:select>
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
						<label for="disease">Disease</label>
						<div>
							<form:input path="disease" />
						</div>
					</div>
					<div>
						<input type="submit" value="submit">
					</div>
				</center>
			</form:form>
		</div>
	</div>
</body>
</html>