<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing list</title>
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
		<h1 style="color: Tomato">Billing List</h1>
		<div id="table root">
	</center>
	<center>
		<table>
			<thead>
				<tr>
					<th>Hospital Name</th>
					<th>Patient id</th>
					<th>Purpose</th>
					<th>Appointment id</th>
					<th>Net Bill</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bill" items="${allbill}">
					<tr>
						<td>${bill.hospitalName}</td>
						<td>${bill.patientId}</td>
						<td>${bill.purpose}</td>
						<td>${bill.appointmentId}</td>
						<td>${bill.netBill}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</center>
	</div>
</body>
</html>