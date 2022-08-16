<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style type="text/css">
<%@include file="/WEB-INF/css/index.css"%>
</style>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a>MyHealth</a>
			</div>
			<ul>
				<li><a href="/register">Register</a></li>
				<li><a href="/patient/patientlogin">Patient Login</a></li>
				<li><a href="/doctordetails/doctorlogin">Doctor Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="img"></div>
	<div class="center">
		<div class="title">Doctor-Appointment</div>
		<div class="btns"></div>
	</div>
</body>
</html>