<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Doctor</title>
<style>
<%@include file="/WEB-INF/css/register-patient.css"%>
</style>
</head>
<body style="background-color: Dodgerblue;">
<body>
   <h2 align="center">Register Your Account</h2>
	<div class="container">
		<form:form action="register" method="post"
			modelAttribute="registerdoctordetails">


			<div class="row">
				<div class="col-25">

					<label for="doctorName">Name</label>

				</div>
				<div class="col-75">
					<form:input path="doctorName" placeholder="Doctor Name" required="true" />
				</div>
				<form:errors path="doctorName" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="password">Password</label>

				</div>
				<div class="col-75">
					<form:input path="password" placeholder="Password" required="true" />
				</div>
				<form:errors path="password" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="speciality">Speciality</label>

				</div>
				<div class="col-75">
					<form:input path="speciality" placeholder="Speciality" required="true" />
				</div>
				<form:errors path="speciality" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="availableTime">Available Time</label>

				</div>
				<div class="col-75">
					<form:input path="availableTime" placeholder="Available Time" required="true" />
				</div>
				<form:errors path="availableTime" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="experience">Experience</label>

				</div>
				<div class="col-75">
					<form:input path="experience" placeholder="Experience" required="true" />
				</div>
				<form:errors path="experience" cssClass="text-danger" />
			</div>
			<div class="row">
				<form:button class="btn">Register</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>