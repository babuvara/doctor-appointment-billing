<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Appointments Details</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/appointmentlist.css"%>
</style>
</head>
<body>
<nav>
<button class="button3" onclick="history.back()" ><em class="gg-arrow-left-o"></em></button>
		<div class="menu">
			<div class="logo">
				<a>MyHealth</a>
			</div>
			<ul>
				<li><a href="/">Home</a></li>
				<li><a href="/patient/getpatient">Patients Lists</a></li>
				<li><a href="/appointment/getappointment">Appointments Lists</a></li>
				<li><a href="/">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdoctor">
				<div>
					<label for="doctorId">Doctor Id</label>
					<div>
						<form:input path="doctorId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="doctorName">Doctor Name</label>
					<div>
						<form:input path="doctorName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="doctorEmail">Doctor Email</label>
					<div>
						<form:input path="doctorEmail" readonly="true"/>
					</div>
					</div>
			</form:form>
		</div>
	</div>
	<div id="tableroot">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>appointmentId</th>
					<th>appointmentDate</th>
					<th>appointmentTime</th>
					<th>patientEmail</th>
					<th>appointmentStatus</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="appointment" items="${appointmentlist}">
					<tr>
						<td>${appointment.appointmentId}</td>
						<td>${appointment.appointmentDate}</td>
						<td>${appointment.appointmentTime}</td>
						<td>${appointment.patientEmail}</td>
						<td>${appointment.appointmentStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>