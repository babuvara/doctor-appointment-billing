<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>DoctorDetails list</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/book-doctordetails.css"%>
</style>
</head>
<body>
<nav>
<button class="button3" onclick="history.back()" ><em class="gg-arrow-left-o"></em></button>
		<div class="menu">
			<div class="logo">
				<a>MyHealth</a>
			</div>
			<ul>
				<li><a href="/">Home</a></li>
                <li><a href="/doctordetails/bookdoctordetails">Book Doctor</a></li>
				<li><a href="/">Logout</a></li>
			</ul>
		</div>
	</nav>
		<h1>Doctors List</h1>
		<div id="table root">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Doctor Name</th>
					<th>Speciality</th>
					<th>Available Time</th>
					<th>Experience</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="doctorDetails" items="${alldoctordetails}">
					<tr>
						<td>${doctorDetails.doctorName}</td>
						<td>${doctorDetails.speciality}</td>
						<td>${doctorDetails.availableTime}</td>
						<td>${doctorDetails.experience}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>