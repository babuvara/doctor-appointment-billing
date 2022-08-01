<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register DoctorDetails</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="root">
		<div id="form">
			<form:form action="register" method="post"
				modelAttribute="registerdoctordetails">
				<div>
					<label for="doctor_id">Doctor id</label>
					<div>
						<form:input path="doctor_id" />
					</div>
				</div>
				<div>
					<label for="speciality">Speciality</label>
					<div>
						<form:input path="speciality" />
					</div>
				</div>
				<div>
					<label for="available_time">Available Time</label>
					<div>
						<form:input path="available_time" />
					</div>
				</div>
				<div>
					<label for="experience">Experience</label>
					<div>
						<form:input path="experience" />
					</div>
				</div>
				<div>
					<form:button>Register</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>