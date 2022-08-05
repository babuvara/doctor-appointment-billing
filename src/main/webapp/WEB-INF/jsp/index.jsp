<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body style="background-color: beige;">
<body>
	<div style="width: 50%; margin: 0 auto">
		<style>
.my_text {
	font-family: Times;
	font-size: 25px;
}

.hero-image {
	background-image:
		url("https://previews.123rf.com/images/stockbroker/stockbroker1507/stockbroker150705607/42402717-doctor-sitting-by-male-patient-s-bed-in-hospital.jpg");
	height: 300px;
	width: 600px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
		<center>
			<h1>Doctor-Appointment</h1>
		</center>
		<div class="hero-image"></div>
		<div class="my_text">
			<center>
				<div>
					<a href="/patient/registerpatient">Register</a>
				</div>
				<div>
					<a href="/patient/patientlogin"> Patient Login</a>
				</div>
				<div>
					<a href="/doctordetails/doctorlogin"> Doctor Login</a>
				</div>
				<div>
					<a href="/patient/getpatient">Patient list</a>
				</div>

				<div>
					<a href="/doctordetails/getdoctordetails">Doctor details</a>
				</div>
				<div>
					<a href="/doctordetails/registerdoctordetails">Register Doctor
						details</a>
				</div>
				<div>
					<a href="/appointment/getappointment">Appointment details</a>
				</div>
				<div>
					<a href="/appointment/registerappointment">Register Appointment</a>
				</div>
				<div>
					<a href="/billing/getbill">Billing details</a>
				</div>
				<div>
					<a href="/billing/registerbill">Add Billing</a>
				</div>
		</div>
</body>
</html>