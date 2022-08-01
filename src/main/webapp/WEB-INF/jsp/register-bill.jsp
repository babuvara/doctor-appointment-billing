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
					<label for="hospitalname">Hospital Name</label>
					<div>
						<form:input path="hospitalname" />
					</div>
				</div>
				<div>
					<label for="doctorid">Doctor id</label>
					<div>
						<form:input path="doctorid" />
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
					<label for="appointmentid">Appointment id</label>
					<div>
						<form:input path="appointmentid" />
					</div>
				</div>
				<div>
					<label for="netbill">Net Bill</label>
					<div>
						<form:input path="netbill" />
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