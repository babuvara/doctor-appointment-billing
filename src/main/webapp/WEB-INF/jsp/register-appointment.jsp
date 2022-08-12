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
   <h2 align="center">Book Your Appointment</h2>
	<div class="container">
		<form:form action="register" method="post"
			modelAttribute="registerappointment">


			<div class="row">
				<div class="col-25">

					<label for="appointmentDate">Appointment Date</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentDate" type="date" required="true" />
				</div>
				<form:errors path="appointmentDate" cssClass="text-danger" />
			</div>
				<div class="row">
				<div class="col-25">
					<label for="appointmentTime">Appointment Time</label>
				</div>
				<div class="col-75">
					<form:select path="appointmentTime">
						<form:errors path="appointmentTime" />
						<form:option value="9 - 10 AM">9 - 10 AM</form:option>
						<form:option value="10 - 11 AM">10 - 11 AM</form:option>
						<form:option value="11 - 12 PM">11 - 12 PM</form:option>
						<form:option value="12 - 1 PM">12 - 1 PM</form:option>
						<form:option value="1 - 2 PM">1 - 2 PM</form:option>
						<form:option value="2 - 3 PM">2 - 3 PM</form:option>
						<form:option value="3 - 4 PM">3 - 4 PM</form:option>
						<form:option value="4 - 5 PM">4 - 5 PM</form:option>
						<form:option value="5 - 6 PM">5 - 6 PM</form:option>
					</form:select>
				</div>
			</div>
			<div class="row">
				<div class="col-25">

					<label for="patientId">Patient id</label>

				</div>
				<div class="col-75">
					<form:input path="patientId" placeholder="patient id" required="true" />
				</div>
				<form:errors path="patientId" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="doctorId">Doctor id</label>

				</div>
				<div class="col-75">
					<form:input path="doctorId" placeholder="doctor id" required="true" />
				</div>
				<form:errors path="doctorId" cssClass="text-danger" />
			</div>
			<div class="row">
				<form:button class="btn">Submit</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>