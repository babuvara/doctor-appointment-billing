<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Register Doctor</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/register-doctor.css"%>
</style>
<script>
<%@include file="/WEB-INF/script/register-doctordetails.js"%>
</script>
</head>
<body>
<button class="button3" onclick="history.back()" ><em class="gg-arrow-left-o"></em></button>
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
					<form:input path="doctorName" placeholder="Doctor Name" title="Name length should be 3 to 20" 
					 pattern="^[a-zA-Z\\s]{3,20}$" required="true"  doctorName="name" id="doctorName"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">

					<label for="doctorEmail">Doctor Email</label>

				</div>
				<div class="col-75">
					<form:input path="doctorEmail"  placeholder="Email" title="Enter a valid email as abc@gmail.com" 
					pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$" required="true"  id="doctorEmail" name="doctorEmail"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="password">Password</label>
				</div>
				<div class="col-75">
					<form:input path="password" type="password"
										title="password must begin with letter and contain atleast one number and must have atleast 8 characters"
										pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
										 placeholder="password"   id="password" name="password"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="speciality">Speciality</label>
				</div>
				<div class="col-75">
					<form:input path="speciality" placeholder="speciality"
										title="speciality name can't be empty or must contain only alphabets"
					                	pattern="^[a-zA-z\s]+$"   id="speciality" name="speciality" required="true"/>	
				</div>
			</div>
				<div class="row">
				<div class="col-25">
					<label for="availableTime">Available Time</label>
				</div>
				<div class="col-75">
					<form:input path="availableTime" placeholder="availableTime" required="true"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="experience">Experience</label>
				</div>
				<div class="col-75">
					<form:input path="experience" placeholder="Experience" required="true" />
				</div>
			</div>
			<div class="row">
				<form:button class="btn">Register</form:button>
			</div>
		</form:form>
	</div>
	</div>
</body>
</html>