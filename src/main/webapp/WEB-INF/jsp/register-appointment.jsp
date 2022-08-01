<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Appointment</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="root">
		<div id="form">
			<form:form action="register" method="post"
				modelAttribute="registerappointment">
				<div>
					<label for="appointment_id">Appointment id</label>
					<div>
						<form:input path="appointment_id" />
					</div>
				</div>
				<div>
					<label for="appointment_date">Appointment Date</label>
					<div>
						<form:input path="appointment_date" />
					</div>
				</div>
				<div>
					<label for="appointment_time">Appointment Time</label>
					<div>
						<form:input path="appointment_time" />
					</div>
				</div>
				<div>
					<label for="patient_id">Patient id</label>
					<div>
						<form:input path="patient_id" />
					</div>
				</div>
				<div>
					<label for="purpose">Purpose</label>
					<div>
						<form:input path="purpose" />
					</div>
				</div>
				<div>
					<label for="doctor_id">Doctor id</label>
					<div>
						<form:input path="doctor_id" />
					</div>
				</div>
				<div>
					<label for="appointment_status">Appointment Status</label>
					<div>
						<form:input path="appointment_status" />
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