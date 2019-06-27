<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Job Portal</title>
<meta name="viewport" content="width=device-width, initial scale=1.0">
<link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="resource/css/loginemp.css">
<link rel="stylesheet" type="text/css"
	href="resource/css/stylesearch.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/resource/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/resource/js/bootstrap.min.js"></script>
<style>
body {
	background-color: white;
	-moz-background-size: cover;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: top center !important;
	background-repeat: no-repeat !important;
	background-attachment: fixed;
}
6+
</style>
</head>
<body>
	<div id="bg">
		<img src="bg.jpg" alt="">
	</div>

	<form id="searchform" name="searchForm" method="post"
		action="searchServlet">
		<div class="header" style="background-color: black">
			<a href="#default" class="logo" style="color: white">CompanyLogo</a>
			<div class="header-right">
				<a href="#default" class="logo" style="color: white">Profile</a> <a
					href="employerhomepage.jsp" class="logo" style="color: white">Home</a> <a
					href="index.jsp" class="logo" style="color: white">logout</a>
			</div>
		</div>
		<br>
		<br>
		<br>
		<div class="search-job text-center" id="box">

			<div class="col-md-10"></div>
			<div class="row">
				<div class="col-md-12">
					<fieldset>
						<p>
							<label>Qualification:</label> <select name="qual" id="qual">
								<option value="">Select experience</option>
								<option value="12th">12th</option>
								<option value="diploma">diploma</option>
								<option value="BE/B.tech">BE/B.tech</option>
								<option value="post graduation">post graduation</option>

							</select> <label>Job Title:</label> <select name="job_interests"
								id="job_interests" required>
								<option value="">Select Job title</option>
								<option value="Architect">Architect</option>
								<option value="Coding">Coding</option>
								<option value="Java Developer">Java Developer</option>
								<option value="System Engineer">System Engineer</option>
								<option value="IT Services">IT Services</option>
								<option value="Product Engineer">Product Engineer</option>
								<option value="Marketing">Marketing</option>
								<option value="Human Resources">Human Resources</option>
								<option value="Sales Research">Sales Research</option>
								<option value="Developer">Developer</option>
								<option value="Associate Engineer">Associate Engineer</option>
							</select> <label>Location:</label> <select name="state" id="state">
								<option value="">Select State</option>
								<option value="Andaman and Nicobar Islands">Andaman and
									Nicobar Islands</option>
								<option value="Andhra Pradesh">Andhra Pradesh</option>
								<option value="Arunachal Pradesh">Arunachal Pradesh</option>
								<option value="Assam">Assam</option>
								<option value="Bihar">Bihar</option>
								<option value="Chandigarh">Chandigarh</option>
								<option value="Chhattisgarh">Chhattisgarh</option>
								<option value="Dadra and Nagar Haveli">Dadra and Nagar
									Haveli</option>
								<option value="Daman and Diu">Daman and Diu</option>
								<option value="Delhi">Delhi</option>
								<option value="Goa">Goa</option>
								<option value="Gujarat">Gujarat</option>
								<option value="Haryana">Haryana</option>
								<option value="Himachal Pradesh">Himachal Pradesh</option>
								<option value="Jammu and Kashmir">Jammu and Kashmir</option>
								<option value="Jharkhand">Jharkhand</option>
								<option value="Karnataka">Karnataka</option>
								<option value="Kerala">Kerala</option>
								<option value="Lakshadweep">Lakshadweep</option>
								<option value="Madhya Pradesh">Madhya Pradesh</option>
								<option value="Maharashtra">Maharashtra</option>
								<option value="Manipur">Manipur</option>
								<option value="Meghalaya">Meghalaya</option>
								<option value="Mizoram">Mizoram</option>
								<option value="Nagaland">Nagaland</option>
								<option value="Orissa">Orissa</option>
								<option value="Pondicherry">Pondicherry</option>
								<option value="Punjab">Punjab</option>
								<option value="Rajasthan">Rajasthan</option>
								<option value="Sikkim">Sikkim</option>
								<option value="Tamil Nadu">Tamil Nadu</option>
								<option value="Tripura">Tripura</option>
								<option value="Uttaranchal">Uttaranchal</option>
								<option value="Uttar Pradesh">Uttar Pradesh</option>
								<option value="West Bengal">West Bengal</option>
							</select>
						</p>
					</fieldset>
					<button class="button">
						<span>Search </span>
					</button>
				</div>
			</div>
		</div>
	</form>
</body>

</html>