<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Patients list</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/list-doctordetails.css"%>
</style>
</head>
<body>
<button class="button3" onclick="history.back()" ><em class="gg-arrow-left-o"></em></button>
		<h1>Patients list</h1>
		<div id="table root">
			<table>
			<caption></caption>
				<thead>
					<tr>
						<th>Name</th>
						<th>Gender</th>
						<th>DOB</th>
						<th>Blood Group</th>
						<th>Email id</th>
						<th>Mobile Number</th>
						<th>Location</th>
						<th>Symptoms</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="patient" items="${allpatient}">
						<tr>
							<td>${patient.name}</td>
							<td>${patient.gender}</td>
							<td>${patient.dob}</td>
							<td>${patient.bloodGroup}</td>
							<td>${patient.emailId}</td>
							<td>${patient.mobileNumber}</td>
							<td>${patient.location}</td>
							<td>${patient.symptoms}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
</body>
</html>