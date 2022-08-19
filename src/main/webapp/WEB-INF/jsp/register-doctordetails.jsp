<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Register Doctor</title>
<style>
<%@include file="/WEB-INF/css/register-doctor.css"%>
</style>
<script>
<%@include file="/WEB-INF/script/register-doctordetails.js"%>
</script>
</head>
<body>
	<div class="container">
	<div id="form" class='fieldset'>
		<form:form action="register" method="post"
			modelAttribute="registerdoctordetails" name="myForm">
            <h2>Register Your Account</h2>
			<div class="row">
				<div class="col-25">

					<label for="doctorName">Name</label>

				</div>
				<div class="col-75">
					<form:input path="doctorName" placeholder="Doctor Name" name="name" onblur="doctorNameCheck();" required="true" />
				</div>
				<form:errors path="doctorName" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="doctorEmail">Doctor Email</label>

				</div>
				<div class="col-75">
					<form:input path="doctorEmail" placeholder="Doctor Email" name="emailId" onblur="doctorEmailCheck();" required="true" />
				</div>
				<form:errors path="doctorEmail" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="password">Password</label>

				</div>
				<div class="col-75">
					<form:input path="password" placeholder="Password" onblur="passwordCheck();"  name="password" required="true" />
				</div>
				<form:errors path="password" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="speciality">Speciality</label>

				</div>
				<div class="col-75">
					<form:input path="speciality" placeholder="Speciality" required="true" />
				</div>
				<form:errors path="speciality" cssClass="text-danger" />
			</div>
				<div class="row">
				<div class="col-25">
					<label for="availableTime">Available Time</label>
				</div>
				<div class="col-75">
					<form:select path="availableTime">
						<form:errors path="availableTime" />
						<form:option value="9 AM - 6 PM">9 AM - 6 PM</form:option>
						<form:option value="6 PM - 9 AM">6 PM - 9 AM</form:option>
					</form:select>
				</div>
			</div>
			<div class="row">
				<div class="col-25">

					<label for="experience">Experience</label>

				</div>
				<div class="col-75">
					<form:input path="experience" placeholder="Experience" required="true" />
				</div>
				<form:errors path="experience" cssClass="text-danger" />
			</div>
			<div class="row">
				<form:button class="btn">Register</form:button>
			</div>
		</form:form>
	</div>
	</div>
</body>
</html>