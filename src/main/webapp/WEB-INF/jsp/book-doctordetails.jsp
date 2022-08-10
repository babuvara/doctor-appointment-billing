<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DoctorDetails list</title>
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
<body>
	<center>
		<h1 style="color: Tomato">Doctors List</h1>
		<div id="table root">
	</center>
	<center>
		<table>
			<thead>
				<tr>
					<th>Doctor id</th>
					<th>Doctor Name</th>
					<th>Speciality</th>
					<th>Available Time</th>
					<th>Experience</th>
					<th>Booking Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="docDet" items="${alldoctordetails}">
					<tr>
						<td>${docDet.doctorId}</td>
						<td>${docDet.doctorName}</td>
						<td>${docDet.speciality}</td>
						<td>${docDet.availableTime}</td>
						<td>${docDet.experience}</td>
						<td><a href="alldoctordetails?doctorId=${docDet.doctorId}"><input
								onclick="change()" type="button" value="Book" id="myButton1"></input></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</center>
	</div>
</body>
</html>