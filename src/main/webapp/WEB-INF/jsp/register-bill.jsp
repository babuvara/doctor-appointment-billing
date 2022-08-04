<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Bill</title>
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
	<h1>Bill-Registration</h1>
</center>
</head>
<body style="background-color: powderblue;">

	<body>
<div id="root">
		<div id="form">
			<form:form action="register" method="post"
				modelAttribute="registerbill">
				<center>
				<div>
					<label for="hospitalName">Hospital Name</label>
					<div>
						<form:input path="hospitalName" />
					</div>
				</div>
				<div>
					<label for="doctorId">Doctor id</label>
					<div>
						<form:input path="doctorId" />
					</div>
				</div>
				<div>
					<label for="patientId">Patient id</label>
					<div>
						<form:input path="patientId" />
					</div>
				</div>
				<div>
					<label for="purpose">Purpose</label>
					<div>
						<form:input path="purpose" />
					</div>
				</div>
				<div>
					<label for="appointmentId">Appointment id</label>
					<div>
						<form:input path="appointmentId" />
					</div>
				</div>
				<div>
					<label for="netBill">Net Bill</label>
					<div>
						<form:input path="netBill" />
					</div>
				</div>
				<div>
					<input type="submit" value="submit">
				</div>
				</center>
			</form:form>
		</div>
	</div>
</body></html>