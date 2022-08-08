<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Persons list</title>
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
		<div style="width: 100%" style="text-align: center;">
			<h1 style="color: powderblue">Patients list</h1>
	</center>
	<div id="table root">
		<center>
			<table>
				<thead>
					<tr>
						<th>Patient id</th>
						<th>Name</th>
						<th>Gender</th>
						<th>DOB</th>
						<th>Blood Group</th>
						<th>Email id</th>
						<th>Mobile Number</th>
						<th>Location</th>
						<th>Disease</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="pat" items="${allpatient}">
						<tr>
							<td>${pat.patientId}</td>
							<td>${pat.name}</td>
							<td>${pat.gender}</td>
							<td>${pat.dob}</td>
							<td>${pat.bloodGroup}</td>
							<td>${pat.emailId}</td>
							<td>${pat.mobileNumber}</td>
							<td>${pat.location}</td>
							<td>${pat.disease}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</center>
	</div>
	</div>
</body>
</html>