<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Register Patient</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/register-patient.css"%>
</style>
<script>
<%@include file="/WEB-INF/script/register-patient.js"%>
</script>
</head>
<body>
<button class="button3" onclick="history.back()" ><em class="gg-arrow-left-o"></em></button>
	<div class="container">
	<div id="form" class='fieldset'>
		<form:form action="register" method="post"
			modelAttribute="registerpatient" name="myForm">
			<h2>Register Your Account</h2>
			<div class="row">
				<div class="col-25">
					<label for="name">Name</label>
				</div>
				<div class="col-75">
					<form:input path="name" placeholder="Name" title="Name length should be 3 to 20" 
					 pattern="^[a-zA-Z\\s]{3,20}$" required="true"  onblur="nameCheck();" name="name" id="name"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="gender">Select Gender</label>
				</div>
				<div class="col-75">
					<form:radiobutton path="gender" value="Male" />
					Male
					<form:radiobutton path="gender" value="Female" />
					Female
					<form:radiobutton path="gender" value="Transgender" />
					Transgender
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="dob">DOB</label>
				</div>
				<div class="col-75">
					<form:input path="dob" type="date" name="dob" onblur="checkDateOfBirth();" required="true"/>
				</div>
				<form:errors path="dob" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">
					<label for="bloodGroup">Blood Group</label>
				</div>
				<div class="blood">
					<form:select path="bloodGroup">
						<form:errors path="bloodGroup" />
						<form:option value="O Positive">O Positive</form:option>
						<form:option value="O Negative">O Negative</form:option>
						<form:option value="A Positive">A Positive</form:option>
						<form:option value="A Negative">A Negative</form:option>
						<form:option value="B Positive">B Positive</form:option>
						<form:option value="B Negative">B Negative</form:option>
						<form:option value="AB Positive">AB Positive</form:option>
						<form:option value="AB Negative">AB Negative</form:option>
					</form:select>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="emailId">Email</label>
				</div>
				<div class="col-75">
					<form:input path="emailId"  placeholder="Email" title="Enter a valid email as abc@gmail.com" 
					pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$" required="true" onblur="emailCheck();" id="emailId" name="emailId"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="password">Password</label>
				</div>
				<div class="col-75">
					<form:input path="password"
										title="password must begin with letter and contain atleast one number and must have atleast 8 characters"
										pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
										 placeholder="password" onblur="passwordCheck();"  id="password" name="password"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="mobileNumber">Mobile Number</label>
				</div>
				<div class="col-75">
					<form:input path="mobileNumber" placeholder="Mobile Number"
										title="*please enter valid phone number"
					                	pattern="^[6-9]{1}[0-9]{9}$" onblur="mobileNumberCheck();"  id="mobileNumber" name="mobileNumber"/>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="location">Location</label>
				</div>
				<div class="location">
					<form:select path="location">
						<form:errors path="location" />
						<form:option value="Ariyalur">Ariyalur</form:option>
						<form:option value="Chengalpattu">Chengalpattu</form:option>
						<form:option value="Chennai">Chennai</form:option>
						<form:option value="Coimbatore">Coimbatore</form:option>
						<form:option value="Cuddalore">Cuddalore</form:option>
						<form:option value="Dharmapuri">Dharmapuri</form:option>
						<form:option value="Dindigul">Dindigul</form:option>
						<form:option value="Erode">Erode</form:option>
						<form:option value="Kallakurichi">Kallakurichi</form:option>
						<form:option value="Kanchipuram">Kanchipuram</form:option>
						<form:option value="Kanyakumari">Kanyakumari</form:option>
						<form:option value="Karur">Karur</form:option>
						<form:option value="Krishnagiri">Krishnagiri</form:option>
						<form:option value="Madurai">Madurai</form:option>
						<form:option value="Nagapattinam">Nagapattinam</form:option>
						<form:option value="Namakkal">Namakkal</form:option>
						<form:option value="Nilgiris">Nilgiris</form:option>
						<form:option value="Perambalur">Perambalur</form:option>
						<form:option value="Pudukkottai">Pudukkottai</form:option>
						<form:option value="Ramanathapuram">Ramanathapuram</form:option>
						<form:option value="Ranipet">Ranipet</form:option>
						<form:option value="Salem">Salem</form:option>
						<form:option value="Sivaganga">Sivaganga</form:option>
						<form:option value="Tenkasi">Tenkasi</form:option>
						<form:option value="Thanjavur">Thanjavur</form:option>
						<form:option value="Theni">Theni</form:option>
						<form:option value="Thoothukudi">Thoothukudi</form:option>
						<form:option value="Tiruchirappalli">Tiruchirappalli</form:option>
						<form:option value="Tirunelveli">Tirunelveli</form:option>
						<form:option value="Tirupathur">Tirupathur</form:option>
						<form:option value="Tiruppur">Tiruppur</form:option>
						<form:option value="Tiruvallur">Tiruppur</form:option>
						<form:option value="Tiruvannamalai">Tiruvannamalai</form:option>
						<form:option value="Tiruvarur">Tiruvarur</form:option>
						<form:option value="Vellore">Vellore</form:option>
						<form:option value="Viluppuram">Viluppuram</form:option>
						<form:option value="Virudhunagar">Virudhunagar</form:option>
					</form:select>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="symptoms">Symptoms</label>
				</div>
				<div class="col-75">
					<form:input path="symptoms" placeholder="Symptoms"
										title="symptoms name can't be empty or must contain only alphabets"
					                	pattern="^[a-zA-Z\\s]*$" onblur="symptomsCheck();"  id="symptoms" name="symptoms" required="true"/>	
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