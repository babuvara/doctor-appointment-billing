<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment list</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Appointment id</th>
					<th>Appointment Date</th>
					<th>Appointment Time</th>
					<th>Patient id</th>
					<th>Purpose</th>
					<th>Doctor id</th>
					<th>Appointment Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="app" items="${allappointment}">
					<tr>
						<td>${app.appointmentId}</td>
						<td>${app.appointmentDate}</td>
						<td>${app.appointmentTime}</td>
						<td>${app.patientId}</td>
						<td>${app.purpose}</td>
						<td>${app.doctorId}</td>
						<td>${app.appointmentStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>