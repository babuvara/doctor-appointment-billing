<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Appointment</title>
<style>
<%@include file="/WEB-INF/css/register-patient.css"%>
</style>
</head>
<body style="background-color: Dodgerblue;">
<body>
   <h2>Appointment Details</h2>
	<div class="container">
		<form:form action="registerbill" method="Get"
			modelAttribute="findappointmentbyid">


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

					<label for="appointmentDate">Appointment Date</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentDate" readonly="true" required="true" />
				</div>
				<form:errors path="appointmentDate" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="appointmentTime">Appointment Time</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentTime" readonly="true" required="true" />
				</div>
				<form:errors path="appointmentTime" cssClass="text-danger" />
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

					<label for="doctorId">Doctor Id</label>

				</div>
				<div class="col-75">
					<form:input path="doctorId" readonly="true" required="true" />
				</div>
				<form:errors path="doctorId" cssClass="text-danger" />
			</div>
		<div class="row">
				<div class="col-25">

					<label for="appointmentStatus">Appointment Status</label>

				</div>
				<div class="col-75">
					<form:input path="appointmentStatus" readonly="true" required="true" />
				</div>
				<form:errors path="appointmentStatus" cssClass="text-danger" />
			</div>
			<%--  <div class="row">
				<form:button class="btn"> Get Bill</form:button>
			</div>  --%>
		</form:form>
		<%-- <c:forEach var="co" items="${findappointmentbyid}">
                    <td>${co.patientEmail}</td>
                    
                    
                        
		<a href="/billing/registerbill?patientEmail="${co.patientEmail}><input
								onclick="change()" type="button" value="Book" id="myButton1"></input></a>
		</c:forEach> --%>
		
		<a href="/billing/registerbill"><input
								onclick="change()" type="button" value="Get Bill" id="myButton1"></input></a>
	</div>
</body>
</html>