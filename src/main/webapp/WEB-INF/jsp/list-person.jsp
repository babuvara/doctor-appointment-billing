<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>person list</title>
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
				<c:forEach var="doct" items="${allperson}">
					<tr>
						<td>${doct.person_id}</td>
						<td>${doct.name}</td>
						<td>${doct.gender}</td>
						<td>${doct.dob}</td>
						<td>${doct.blood_group}</td>
						<td>${doct.email_id}</td>
						<td>${doct.mobile_number}</td>
						<td>${doct.location}</td>
						<td>${doct.person_type}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>