<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DoctorDetails list</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Doctor id</th>
					<th>Speciality</th>
					<th>Available Time</th>
					<th>Experience</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="docdet" items="${alldoctordetails}">
					<tr>
						<td>${docdet.doctorId}</td>
						<td>${docdet.speciality}</td>
						<td>${docdet.availableTime}</td>
						<td>${docdet.experience}</td>
						<td><a href="alldoctordetails?doctorId=${docdet.doctorId}">Book</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>