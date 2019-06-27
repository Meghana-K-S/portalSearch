
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
<title>Result</title>
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
<form name="RegForm" method="post" action="otpServlet">
	<div align="center">
	<h2>OTP sent to mail successfully,</h2>
		<h3>Enter the OTP</h3>
		<input type="text" name="otpval" id="otpval" maxlength="4"  size="5" style="width: 300px;" required/>
		<span id='message'></span>
		<input type="submit" name="submit"/>
	</div>
	<h4 id="errMsg" class="text-danger" align="center"><b>${error_message}</b></h4>
</form>
</body>
</html>