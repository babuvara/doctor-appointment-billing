<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register DoctorDetails</title>
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
	<h1>Doctor-Registration</h1>
</center>
</head>
<body style="background-color: powderblue;">
	<div id="root">
		<div id="form">
			<form:form action="register" method="post"
				modelAttribute="registerdoctordetails">
				<center>
					<div>
						<label for="doctorId">Doctor id</label>
						<div>
							<form:input path="doctorId" />
						</div>
					</div>
					<div>
						<label for="doctorName">Doctor Name</label>
						<div>
							<form:input path="doctorName" />
						</div>
					</div>
					<div>
						<label for="password">Password</label>
						<div>
							<form:input path="password" />
						</div>
					</div>
					<div>
						<label for="speciality">Speciality</label>
						<div>
							<form:input path="speciality" />
						</div>
					</div>
					<div>
						<label for="availableTime">Available Time</label>
						<div>
							<form:input path="availableTime" />
						</div>
					</div>
					<div>
						<label for="experience">Experience</label>
						<div>
							<form:input path="experience" />
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