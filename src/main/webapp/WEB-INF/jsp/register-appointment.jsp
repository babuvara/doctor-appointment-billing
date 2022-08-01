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
					<label for="appointmentid">Appointment id</label>
					<div>
						<form:input path="appointmentid" />
					</div>
				</div>
				<div>
					<label for="appointmentdate">Appointment Date</label>
					<div>
						<form:input path="appointmentdate" />
					</div>
				</div>
				<div>
					<label for="appointmenttime">Appointment Time</label>
					<div>
						<form:input path="appointmenttime" />
					</div>
				</div>
				<div>
					<label for="patientid">Patient id</label>
					<div>
						<form:input path="patientid" />
					</div>
				</div>
				<div>
					<label for="purpose">Purpose</label>
					<div>
						<form:input path="purpose" />
					</div>
				</div>
				<div>
					<label for="doctorid">Doctor id</label>
					<div>
						<form:input path="doctorid" />
					</div>
				</div>
				<div>
					<label for="appointmentstatus">Appointment Status</label>
					<div>
						<form:input path="appointmentstatus" />
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