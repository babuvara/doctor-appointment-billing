<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointments Details</title>
<style>
<%@include file="/WEB-INF/css/list-patient.css"%>
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getdoctor">
				<div>
					<label for="doctorId">Doctor Id</label>
					<div>
						<form:input path="doctorId" />
					</div>
				</div>
				<div>
					<label for="doctorName">Doctor Name</label>
					<div>
						<form:input path="doctorName" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" type="password" />
					</div>
				</div>
				<div>
					<label for="speciality">Speciality</label>
					<div>
						<form:input path="speciality" />
					</div>
				</div>
				<div>
					<label for="availableTime">Available Time</label>
					<div>
						<form:input path="availableTime" />
					</div>
				</div>
				<div>
					<label for="experience">Experience</label>
					<div>
						<form:input path="experience" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>appointmentId</th>
					<th>appointmentDate</th>
					<th>appointmentTime</th>
					<th>patientId</th>
					<th>purpose</th>
					<th>doctorId</th>
					<th>appointmentStatus</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="appointment" items="${appointmentlist}">
					<tr>
						<td>${appointment.appointmentId}</td>
						<td>${appointment.appointmentDate}</td>
						<td>${appointment.appointmentTime}</td>
						<td>${appointment.patientId}</td>
						<td>${appointment.purpose}</td>
						<td>${appointment.doctorId}</td>
						<td>${appointment.appointmentStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>