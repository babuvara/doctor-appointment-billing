<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment list</title>
<style>
table, th, td {
	border: 1px solid black;
	padding: 15px;
	text-align: left;
}

th, td {
	border-color: #96D4D4;
}

tr:hover {
	background-color: #D6EEEE;
}
</style>
</head>
<body style="background-color: powderblue;">
<body>
	<center>
		<div style="width: 100%" style="text-align: center;">
			<h1 style="color: tomato">Appointments list</h1>
	</center>
	<div id="table root">
		<center>
			<table>
				<thead>
					<tr>
						<th>Appointment id</th>
						<th>Appointment Date</th>
						<th>Appointment Time</th>
						<th>Patient id</th>
						<th>Doctor id</th>
						<th>Appointment Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="appointment" items="${allappointment}">
						<tr>
							<td>${appointment.appointmentId}</td>
							<td>${appointment.appointmentDate}</td>
							<td>${appointment.appointmentTime}</td>
							<td>${appointment.patientId}</td>
							<td>${appointment.doctorId}</td>
							<td>${appointment.appointmentStatus}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</center>
	</div>
</body>
</html>