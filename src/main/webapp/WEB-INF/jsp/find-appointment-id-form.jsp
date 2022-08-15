<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment</title>
<style>
<%@include file="/WEB-INF/css/register-patient.css"%>
</style>
</head>
<body style="background-color: Dodgerblue;">
<body>
   <h2 align="center">Appointment Details</h2>
	<div class="container">
		<form:form action="" method="post"
			modelAttribute="findappointmentbyid">


			<div class="row">
				<div class="col-25">

					<label for="appointmentId">Appointment Id</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentId" readonly="true" required="true" />
				</div>
				<form:errors path="appointmentId" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="appointmentDate">Appointment Date</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentDate" readonly="true" required="true" />
				</div>
				<form:errors path="appointmentDate" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="appointmentTime">Appointment Date</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentTime" readonly="true" required="true" />
				</div>
				<form:errors path="appointmentTime" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="patientEmail">Patient Email</label>

				</div>
				<div class="col-75">
					<form:input path="patientEmail" readonly="true" required="true" />
				</div>
				<form:errors path="patientEmail" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="doctorId">Appointment Date</label>

				</div>
				<div class="col-75">
					<form:input path="doctorId" readonly="true" required="true" />
				</div>
				<form:errors path="doctorId" cssClass="text-danger" />
			</div>
		<div class="row">
				<div class="col-25">

					<label for="appointmentStatus">Appointment Status</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentStatus" readonly="true" required="true" />
				</div>
				<form:errors path="appointmentStatus" cssClass="text-danger" />
			</div>
		</form:form>
	</div>
</body>
</html>