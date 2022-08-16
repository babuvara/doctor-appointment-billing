<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Appointment</title>
<style>
<%@include file="/WEB-INF/css/register-patient.css"%>
</style>
</head>
<body style="background-color: Dodgerblue;">
<body>
   <h2>Book Your Appointment</h2>
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
						<form:option value="6 - 7 PM">6 - 7 PM</form:option>
						<form:option value="7 - 8 PM">7 - 8 PM</form:option>
						<form:option value="8 - 9 PM">8 - 9 PM</form:option>
						<form:option value="9 - 10 PM">9 - 10 PM</form:option>
						<form:option value="10 - 11 PM">10 - 11 PM</form:option>
						<form:option value="11 - 12 AM">11 - 12 AM</form:option>
						<form:option value="12 - 1 AM">12 - 1 AM</form:option>
						<form:option value="1 - 2 AM">1 - 2 AM</form:option>
						<form:option value="2 - 3 AM">2 - 3 AM</form:option>
						<form:option value="3 - 4 AM">3 - 4 AM</form:option>
						<form:option value="4 - 5 AM">4 - 5 AM</form:option>
						<form:option value="5 - 6 AM">5 - 6 AM</form:option>
						<form:option value="6 - 7 AM">6 - 7 AM</form:option>
						<form:option value="7 - 8 AM">7 - 8 AM</form:option>
						<form:option value="8 - 9 AM">8 - 9 AM</form:option>
					</form:select>
				</div>
			</div>
			<div class="row">
				<div class="col-25">

					<label for="patientEmail">Patient Email</label>

				</div>
				<div class="col-75">
					<form:input path="patientEmail" placeholder="Patient Email" required="true" />
				</div>
				<form:errors path="patientEmail" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="doctorId">Doctor id</label>

				</div>
				<div class="col-75">
					<form:input path="doctorId" placeholder="doctor id" required="true" readonly="true"/>
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