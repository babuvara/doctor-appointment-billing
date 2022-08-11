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
<%@include file="/WEB-INF/css/book-doctordetails.css"%>
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
			
					<th>Doctor Name</th>
					<th>Speciality</th>
					<th>Available Time</th>
					<th>Experience</th>
					<th>Booking Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="doctorDetails" items="${alldoctordetails}">
					<tr>
						
						<td>${doctorDetails.doctorName}</td>
						<td>${doctorDetails.speciality}</td>
						<td>${doctorDetails.availableTime}</td>
						<td>${doctorDetails.experience}</td>
						<td><a href="/appointment/registerappointment?doctorId=${doctorDetails.doctorId}"><input
								onclick="change()" type="button" value="Book" id="myButton1"></input></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</center>
	</div>
	

	
	
	
</body>
</html>