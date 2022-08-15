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
<%@include file="/WEB-INF/css/list-patient.css"%>
</style>
</head>
<body>
			<h1>Appointments list</h1>
	<div id="table root">
			<table>
				<thead>
					<tr>
						<th>Appointment id</th>
						<th>Appointment Date</th>
						<th>Appointment Time</th>
						<th>Patient Email</th>
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
							<td>${appointment.patientEmail}</td>
							<td>${appointment.doctorId}</td>
							<td>${appointment.appointmentStatus}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	</div>
</body>
</html>