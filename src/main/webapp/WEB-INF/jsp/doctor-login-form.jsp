<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login</title>
<style>
<%@include file="/WEB-INF/css/patient-login-form.css"%>
</style>
</head>
<body style="background-color: Dodgerblue;">
<body>
  <h2>Doctor Login</h2>
	<div class="container">
		<form:form action="checkdoctorlogin" method="post"
			modelAttribute="doctor">


			<div class="row">
				<div class="col-25">

					<label for="doctorEmail">Email</label>
				
				</div>
				<div class="col-75">
					<form:input path="doctorEmail" placeholder="Doctor Email" required="true" />
				</div>
				<form:errors path="doctorEmail" cssClass="text-danger" />
			</div>
				<div class="row">
				<div class="col-25">

					<label for="password">Password</label>
				
				</div>
				<div class="col-75">
					<form:input path="password" type="password" placeholder="Password" required="true" />
				</div>
				<form:errors path="password" cssClass="text-danger" />
			</div>
				<div class="row">
					<form:button class="btn">Login</form:button>
				</div>
		</form:form>
		<div >
		<div class="btn2">
			<label> Don't have an account?</label> <a class ="a1" href="signupdoctor">
				<input onclick="change()"  class ="a1" type="button" value="SignUp"></input>
			</a>
		</div>
	</div>
	</div>
</body>
</html>