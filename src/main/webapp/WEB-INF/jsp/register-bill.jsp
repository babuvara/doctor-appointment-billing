<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Bill</title>
</head>
<body style="background-color: powderblue;">
<body>
	<div id="root">
		<div id="form">
			<form:form action="register" method="post"
				modelAttribute="registerbill">
				<div>
					<label for="hospital_name">Hospital Name</label>
					<div>
						<form:input path="hospital_name" />
					</div>
				</div>
				<div>
					<label for="doctor_id">Doctor id</label>
					<div>
						<form:input path="doctor_id" />
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
					<label for="appointment_id">Appointment id</label>
					<div>
						<form:input path="appointment_id" />
					</div>
				</div>
				<div>
					<label for="net_bill">Net Bill</label>
					<div>
						<form:input path="net_bill" />
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