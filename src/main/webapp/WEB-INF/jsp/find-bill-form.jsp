<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/register-patient.css"%>
</style>
</head>
<body style="background-color: Dodgerblue;">
<body>
<button class="button3" onclick="history.back()" ><em class="gg-arrow-left-o"></em></button>
   <h2>Bill Details</h2>
	<div class="container">
		<form:form action="" 
			modelAttribute="findbillbyid">


			<div class="row">
				<div class="col-25">

					<label for="billId">Bill Id</label>

				</div>
				<div class="col-75">
					<form:input path="billId" readonly="true" required="true" />
				</div>
				<form:errors path="billId" cssClass="text-danger" />
			</div>
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

					<label for="patientEmail">Patient Email</label>

				</div>
				<div class="col-75">
					<form:input path="patientEmail" readonly="true" required="true" />
				</div>
				<form:errors path="patientEmail" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="purpose">Purpose</label>

				</div>
				<div class="col-75">
					<form:input path="purpose" readonly="true" required="true" />
				</div>
				<form:errors path="purpose" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="appointmentId">Appointment Id</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentId" readonly="true" required="true" />
				</div>
				<form:errors path="appointmentId" cssClass="text-danger" />
			</div>
		<div class="row">
				<div class="col-25">

					<label for="appointmentBill">Appointment Bill</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentBill" readonly="true" required="true" />
				</div>
				<form:errors path="appointmentBill" cssClass="text-danger" />
			</div>
		</form:form>
		<h1>Booking confirmed and Payment Successfully</h1>
	</div>
</body>
</html>