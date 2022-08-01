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
						<td>${app.appointmentid}</td>
						<td>${app.appointmentdate}</td>
						<td>${app.appointmenttime}</td>
						<td>${app.patientid}</td>
						<td>${app.purpose}</td>
						<td>${app.doctorid}</td>
						<td>${app.appointmentstatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>