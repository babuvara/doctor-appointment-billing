<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body style="background-color: powderblue;">
<body>
	<center>
		<h1>Doctor-Appointment</h1>
		<ul class="nav nav-tabs nav-dark bg-warning">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="/">Home</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/patient/patientlogin">Patient Login</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/doctordetails/doctorlogin">Doctor Login</a></li>
		<img
			src="https://previews.123rf.com/images/stockbroker/stockbroker1507/stockbroker150705607/42402717-doctor-sitting-by-male-patient-s-bed-in-hospital.jpg"
			img-fluid" alt="..."> <br>
		<div class="row">
			<div class="col-sm-6">
				<div class="card dark">
					<div class="card-body">
						<br> <a href="#" class="btn btn-success">Go somewhere</a>
					</div>
				</div>
			</div>
			<br> <br> <br> <a href="/patient/registerpatient">Patient
				Registration</a> <br> <a
				href="/doctordetails/registerdoctordetails">Doctor Registration</a>
			<br> <a href="/patient/getpatient">Patients List</a> <br> <a
				href="/doctordetails/getdoctordetails">Doctors List</a> <br> <a
				href="/appointment/getappointment">Appointment List</a> <br> <a
				href="/appointment/registerappointment">Register Appointment</a> <br>
			<a href="/billing/getbill">Bill Details</a> <br> <a
				href="/billing/registerbill">Register Bill</a>
		</div>
	</center>
</body>
</body>
</html>