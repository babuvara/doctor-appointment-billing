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
</head>
<body style="background-color: beige;">
	<div id="root">
		<div id="form">
			<div align="center">
				<table border="" width=50% cellpadding="10">
					<form:form action="register" method="post"
						modelAttribute="registerdoctordetails">
						<tr>
							<div>
								<td><label for="doctorName">Doctor Name</label></td>
								<td>
									<div>
										<form:input path="doctorName" />
										<form:errors path="doctorName" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="password">Password</label></td>
								<td>
									<div>
										<form:input path="password" />
										<form:errors path="password" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="speciality">Speciality</label></td>
								<td>
									<div>
										<form:input path="speciality" />
										<form:errors path="speciality" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="availableTime">Available Time</label></td>
								<td>
									<div>
										<form:input path="availableTime" />
										<form:errors path="availableTime" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="experience">Experience</label></td>
								<td>
									<div>
										<form:input path="experience" />
										<form:errors path="experience" />
									</div>
								</td>
							</div>
				</table>
				<align="center">
				<input type="submit" value="submit"> </form:form>
			</div>
		</div>
		</center>
</body>
</html>