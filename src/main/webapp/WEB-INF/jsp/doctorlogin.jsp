<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login</title>
<style type="text/css">
<%@include file="/WEB-INF/css/doctorlogin.css"%>
</style>
</head>
<body>
	<nav>
	<form:form modelAttribute="doctorId">
		<div class="menu">
			<div class="logo">
				<a>MyHealth</a>
			</div>
			
			<ul>
				<li><a href="/">Home</a></li>
				<li><a href="/patient/getpatient">Patients Lists</a></li>
				<li><a href="/appointment/getappointment">Appointments Lists</a></li>
				<li><a href="/doctorappointment/getdoctorappointmentlist?doctorId=${doctorId}">My Appointments</a></li>
				<li><a href="/">Logout</a></li>
			</ul>
		</div>
		</form:form>
	</nav>
	<div class="img"></div>
	<div class="center">
		<div class="title">Have a nice day Doctor !</div>
		<div class="btns"></div>
	</div>
</body>
</html>