<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Patient Login</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style type="text/css">
<%@include file="/WEB-INF/css/patientlogin.css"%>
</style>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a>MyHealth</a>
			</div>
			<ul>
				<li><a href="/">Home</a></li>
				<li><a href="/doctordetails/getdoctordetails">Doctors Lists</a></li>
				<li><a href="/doctordetails/bookdoctordetails">Book Doctor</a></li>
				<li><a href="/">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="img"></div>
	<div class="center">
		<div class="title">Welcome to MyHealth</div>
		<div class="btns"></div>
	</div>
</body>
</html>