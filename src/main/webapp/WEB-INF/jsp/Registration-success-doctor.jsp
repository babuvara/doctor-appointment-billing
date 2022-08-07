<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Register Successfully</title>
<style>
input[type=button] {
	width: 10%;
	background: purple;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=button]:hover {
	background: #000;
}
</style>
</head>
<body style="background-color: powderblue;">
<body>
	<center>
		<h1 style='text: colour= green;'>Registered Successfully</h1>
		<!--  <a href="/doctordetails/doctorlogin">Go To Login</a>  -->
		<a href="/doctordetails/doctorlogin"><input
			onclick="change()" type="button" value="Go To Login" id="myButton1"></input></a>
	</center>
</body>
</html>