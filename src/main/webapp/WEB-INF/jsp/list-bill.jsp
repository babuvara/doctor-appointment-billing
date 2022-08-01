<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing list</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Hospital Name</th>
					<th>Doctor id</th>
					<th>Patient id</th>
					<th>Purpose</th>
					<th>Appointment id</th>
					<th>Net Bill</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bill" items="${allbill}">
					<tr>
						<td>${bill.hospitalname}</td>
						<td>${bill.doctorid}</td>
						<td>${bill.patientid}</td>
						<td>${bill.purpose}</td>
						<td>${bill.appointmentid}</td>
						<td>${bill.netbill}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>