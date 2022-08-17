<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Patient Login</title>
<style>
<%@include file="/WEB-INF/css/patient-login-form.css"%>
</style>
</head>
<body>
	<div class="container">
		<form:form action="checkpatientlogin" method="post"
			modelAttribute="patient">
          <h2>Patient Login</h2>
			<div class="row">
				<div class="col-25">

					<label for="emailId">Email</label>
				
				</div>
				<div class="col-75">
					<form:input path="emailId" placeholder="Email" required="true" />
				</div>
				<form:errors path="emailId" cssClass="text-danger" />
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
		<div class="result">
		${result}
	</div>
		<div class="btn2">
			<label> Don't have an account?</label> <a class ="a1" href="signuppatient">
				<input onclick="change()"  class ="a1" type="button" value="SignUp"></input>
			</a>
		</div>
	</div>
</div>
</body>
</html>