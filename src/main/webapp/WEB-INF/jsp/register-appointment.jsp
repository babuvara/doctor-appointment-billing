<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Appointment</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/register-patient.css"%>
</style>
<script>
<%@include file="/WEB-INF/script/register-appointment.js"%>
</script>
</head>
<body>
<button class="button3" onclick="history.back()" ><em class="gg-arrow-left-o"></em></button>
	<div class="container">
		<form:form action="register" method="post"  modelAttribute="registerappointment">
   <h2>Book Your Appointment</h2>
			<div class="row">
				<div class="col-25">
					<label for="appointmentDate">Appointment Date</label>
				</div>
				<div class="col-75">
					<form:input path="appointmentDate" type="date" name="appointmentDate" onblur="checkAppointmentDate();" required="true"/>
				</div>
				<form:errors path="appointmentDate" cssClass="text-danger" />
			</div>
					<div class="row">
				<div class="col-25">

					<label for="patientName">Patient Name</label>

				</div>
				<div class="col-75">
					<form:input path="patientName" 
					required="true"  readonly="true"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">

					<label for="patientEmail">Patient Email</label>

				</div>
				<div class="col-75">
					<form:input path="patientEmail" 
					required="true"  readonly="true"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="doctorId">Doctor id</label>
				</div>
				<div class="col-75">
					<form:input path="doctorId" placeholder="doctor id" required="true" readonly="true"/>
				</div> 
			</div>
			<div class="row">
				<form:button class="btn">Submit</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>