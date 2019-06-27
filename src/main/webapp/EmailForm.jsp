<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Send an e-mail</title>
<link rel="stylesheet" type="text/css"
	href="resource/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="resource/css/styleregis.css">
<script src="resource/js/iu.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script src="resource/css/bootstrap.min.css"></script>
<script src="resource/js/registration.js"></script>
<style>
.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: #C0C0C0;
	color: Black;
	text-align: center;
}
</style>
</head>
<body>
	<div class="header"
		style="background-color: black; height: 6em; opacity: 1">
		<a href="#default" class="logo" style="color: grey">CompanyLogo</a>
		<div class="header-right">
			<button
				style="width: 7em; margin-bottom: 1em; border-radius: 10px; margin-bottom: 4px"
				onclick="goBack()">Back</button>
		</div>
	</div>
	<form id="user_email_form" name="emailForm" method="post"
		action="emailServlet">
		<h2 align="center">
			<br>
			<br>Enter your Email-id to change password
		</h2>
		<table width="45%" align="center">
			<p class="text-danger">${error}</p>
			<tr>
				<td width="50%"><strong>Email-id:</strong> <br></td>
				<td><input type="text" name="recipient" id="recipient"
					size="50" /><br>
				<br></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Send" /></td>
			</tr>
		</table>
		<h4 id="errMsg" class="text-danger" align="center">
			<b>${error_message}</b>
		</h4>
	</form>
	<div class="footer">
		Need Help? <a class="b" href="">Contact Us</a>
		<div class='container'>
			<div align="center">

				<a class="btn-tw" id="tw-link" href="">Facebook</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="btn-fb" id="fb-link" href="">Twitter</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="btn-ld" id="ld-link" href="">Instagram</a>
			</div>
		</div>
		<span class='rights'>© 2019 Fusteps, LLC. All rights reserved.
			Disclaimer: Fusteps India does not charge job seekers any fee or
			other consideration for using our services.</span>
	</div>

</body>
</html>