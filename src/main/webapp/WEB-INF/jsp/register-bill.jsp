<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/register-patient.css"%>
</style>
<script>
<%@include file="/WEB-INF/script/register-bill.js"%>
</script>
</head>
<body>
<button class="button3" onclick="history.back()" ><em class="gg-arrow-left-o"></em></button>
	<div class="container">
		<form:form action="register" method="post"
			modelAttribute="registerbill">
			 <h2>Pay Your Bill</h2>
			<div class="row">
				<div class="col-25">
					<label for="hospitalName">Hospital Name</label>
				</div>
				<div class="col-75">
					<form:input path="hospitalName" readonly="true" required="true" />
				</div>
				<form:errors path="hospitalName" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="patientName">Patient Name</label>

				</div>
				<div class="col-75">
					<form:input path="patientName" required="true" />
				</div>
				<form:errors path="patientName" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">
					<label for="patientEmail">Patient Email</label>
				</div>
				<div class="col-75">
					<form:input path="patientEmail" required="true" />
				</div>
				<form:errors path="patientEmail" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="purpose">Purpose</label>

				</div>
				<div class="col-75">
					<form:input path="purpose" placeholder="purpose"
										title="purpose name can't be empty or must contain only alphabets"
					                	pattern="^[a-zA-Z\\s]*$" onblur="purposeCheck();"  id="purpose" name="purpose" required="true"/>	
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="appointmentBill">Appointment Bill</label>
				</div>
				<div class="col-75">
					<form:input path="appointmentBill" required="true" />
				</div>
			</div>
			<div class="row">
				<form:button class="btn">Pay Bill</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>