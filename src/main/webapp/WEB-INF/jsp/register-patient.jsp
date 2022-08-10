<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Person</title>
<style>
input[type=submit] {
	width: 10%;
	background: purple;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background: #000;
}
</style>
<center>
	<h1>Patient-Registration</h1>
</head>
<body style="background-color: beige;">
<body>
	<div id="root">
		<div id="form">
			<div align="center">
				<table border="" width=50% cellpadding="10">
					<form:form action="register" method="post"
						modelAttribute="registerpatient">
						<tr>
							<div>
								<td><label for="name">Name</label></td>
								<td>
									<div>
										<form:input path="name" placeholder="Name" required="true"/>
									</div>
								</td>
								<form:errors path="name" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="gender">Select Gender</label></td>
								<td>
									<div>
										Male:
										<form:radiobutton path="gender" value="Male" />
										Female:
										<form:radiobutton path="gender" value="Female" />
										Transgender:
										<form:radiobutton path="gender" value="Transgender" />
									</div>
								</td>
									<form:errors path="gender" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="dob">DOB</label></td>
								<td>
									<div>
										<form:input path="dob" type="date" required="true"/>
									</div>
								</td>
								<form:errors path="dob" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="bloodGroup">Blood Group</label></td>
								<td><form:select path="bloodGroup">
										<form:errors path="bloodGroup" />
										<form:option value="O Positive">O Positive</form:option>
										<form:option value="O Negative">O Negative</form:option>
										<form:option value="A Positive">A Positive</form:option>
										<form:option value="A Negative">A Negative</form:option>
										<form:option value="B Positive">B Positive</form:option>
										<form:option value="B Negative">B Negative</form:option>
										<form:option value="AB Positive">AB Positive</form:option>
										<form:option value="AB Negative">AB Negative</form:option>
									</form:select></td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="emailId">Email id</label></td>
								<td><div>
										<form:input path="emailId" placeholder="Email" required="true"/>
									</div></td>
									<form:errors path="emailId" cssClass="text-danger" />
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="password">Password</label></td>
								<td><div>
										<form:input path="password" placeholder="Password" required="true"/>
									</div></td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="mobileNumber">Mobile Number</label></td>
								<td>
									<div>
										<form:input path="mobileNumber" placeholder="Mobile Number" required="true"/>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="location">Location</label></td>
								<td>
									<div>
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
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="disease">Disease</label></td>
								<td>
									<div>
										<form:input path="disease" placeholder="Disease" required="true"/>
									</div>
								</td>
								<form:errors path="disease" cssClass="text-danger" />
							</div>
						</tr>
				</table>
				<align="center">
				<input type="submit" value="submit"> </form:form>
			</div>
		</div>
		</center>
</body>
</html>