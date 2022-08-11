<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

.container {
	margin-top: 3%;
	margin-left: 30%;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	width: 40%;
	float: left;
}

.col-25 {
	float: left;
	width: 30%;
	margin-top: 6px;
	margin-left: 10px;
}

.col-75 {
	float: left;
	width: 55%;
	margin-top: 6px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: white;
	background-color: #6bb6ff;
	border: none;
	border-radius: 10px;
	box-shadow: 0 9px #1E90FF ;
	margin-left: 190px;
	margin-top: 10px;
}

.btn:hover {
	background-color: #6bb6ff
}

</style>
</head>
<body style="background-color: Dodgerblue;">
<body>
   <h2 align="center">SignUp</h2>
	<div class="container">
		<form:form action="signup" method="post"
			modelAttribute="signuppatient">


			<div class="row">
				<div class="col-25">

					<label for="name">Name</label>
				
				</div>
				<div class="col-75">
					<form:input path="name" placeholder="Name" required="true" />
				</div>
				<form:errors path="name" cssClass="text-danger" />
			</div>

			<div class="row">
				<div class="col-25">


					<label for="gender">Select Gender</label>
				

				</div>
				<div class="col-75">

					Male:
					<form:radiobutton path="gender" value="Male" />
					Female:
					<form:radiobutton path="gender" value="Female" />
					Transgender:
					<form:radiobutton path="gender" value="Transgender" />
				</div>

			</div>
			<div class="row">
				<div class="col-25">

					<label for="dob">DOB</label>
					
				</div>
				<div class="col-75">
					<form:input path="dob" type="date" />
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="bloodGroup">Blood Group</label>
					</div>
					<div class="col-75">
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
					<form:input path="emailId" placeholder="Email" required="true" />
				</div>
				<form:errors path="emailId" cssClass="text-danger" />
			</div>
			<div class="row">
				<div class="col-25">

					<label for="password">Password</label>
				</div>
				<div class="col-75">
					<form:input path="password" type="password" placeholder="password" />
				</div>

			</div>
			<div class="row">
				<div class="col-25">
					<label for="mobileNumber">Mobile Number</label>
				
				</div>
				<div class="col-75">
					<form:input path="mobileNumber" placeholder="Mobile Number" />
				</div>

			</div>
			<div class="row">
				<div class="col-25">
					<label for="location">Location</label>
					</div>
					<div class="col-75">
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
						<label for="disease">Disease</label>
					</div>
					<div class="col-75">
						<form:input path="disease" placeholder="Disease" />
				</div>
				</div>
				<div class="row">
					<form:button class="btn">SignUp</form:button>

				</div>
		</form:form>
		</div>
</body>
</html>