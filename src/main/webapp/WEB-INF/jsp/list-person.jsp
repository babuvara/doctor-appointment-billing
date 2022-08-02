<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>persons list</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Person id</th>
					<th>Name</th>
					<th>Gender</th>
					<th>DOB</th>
					<th>Blood Group</th>
					<th>Email id</th>
					<th>Mobile Number</th>
					<th>Location</th>
					<th>Person Type</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="per" items="${allperson}">
					<tr>
						<td>${per.personId}</td>
						<td>${per.name}</td>
						<td>${per.gender}</td>
						<td>${per.dob}</td>
						<td>${per.bloodGroup}</td>
						<td>${per.emailId}</td>
						<td>${per.mobileNumber}</td>
						<td>${per.location}</td>
						<td>${per.personType}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>