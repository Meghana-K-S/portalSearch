<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resource/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
<script src="resource/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resource/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
.container {
	padding: 80px 120px;
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
}

.carousel-inner img {
	-webkit-filter: grayscale(90%);
	filter: grayscale(90%); /* make all photos black and white */
	width: 100%; /* Set width to 100% */
	margin: auto;
}

.carousel-caption h3 {
	color: #fff !important;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
}

.newspaper {
	-webkit-column-count: 5; /* Chrome, Safari, Opera */
	-moz-column-count: 5; /* Firefox */
	column-count: 5;
}

* {
	box-sizing: border-box;
}

.header {
	overflow: hidden;
	background-color: #f1f1f1;
	padding: 20px 10px;
}

.header a {
	float: left;
	color: black;
	text-align: center;
	padding: 12px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
}

.header a.logo {
	font-size: 25px;
	font-weight: bold;
}

.header a:hover {
	background-color: #ddd;
	color: black;
}

.header a.active {
	background-color: dodgerblue;
	color: white;
}

.header-right {
	float: right;
}

@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	.header-right {
		float: none;
	}
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

.footer {
	margin-top: 72%;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 5em;
	background-color: grey;
	color: white;
	text-align: center;
}

.custom-file-upload input[type="file"] {
	display: none;
}

.custom-file-upload .custom-file-upload1 {
	border: 1px solid #ccc;
	display: inline-block;
	padding: 6px 12px;
	cursor: pointer;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>
	<div class="header" style="background-color: black;">
		<a href="#default" class="logo" style="color: white">CompanyLogo</a> <input
			style="width: 40%; margin-left: 5%; border-radius: 10px" type="text"
			placeholder="Enter your preferences" name="keyword">
		<button type="submit"
			style="border-radius: 100px; width: 7em; background-color: #555555;">search</button>
		<div class="header-right" style="margin-top: 1em">
			<a style="color: white">Job Options</a> <a style="color: white"
				href="reg.jsp">Employer Registration</a> <a
				onclick="document.getElementById('id01').style.display='block'"
				style="color: white">Employer Login</a>
		</div>

		<div id="id01" class="modal">
			<form class="modal-content animate" id="user_login_form"
				name="loginForm" method="post" action="loginServlet">


				<div class="imgcontainer">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="close" title="Close Modal">&times;</span> <img
						src="img/employerloginpic.jpg" alt="Avatar" class="avatar">
				</div>

				<div class="container">
					<label for="employername"><b>Username</b></label> <input
						type="text" placeholder="Enter Username" name="login_id"
						id="login_id" required> <label for="employerpsw"><b>Password</b></label>
					<input type="password" placeholder="Enter Password"
						name="login_pwd" id="login_pwd" required><br>
						<div>
						<label> <input type="checkbox" checked="checked"
							name="remember"> Remember me
						</label>
					</div>
					 <a href="EmailForm.jsp">Forgot password?</a> <br><br>
					<button type="submit" style="border-radius: 100px; width: 10em">Login</button>
					 <button type="button"
						onclick="document.getElementById('id01').style.display='none'"
						style="border-radius: 10px;" class="cancelbtn">Cancel</button>
					
				</div>

			</form>
		</div>

		<script>
			// Get the modal
			var modal = document.getElementById('id01');

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>
	</div>
	<!----about us-->
	<div class="col-md-3"
		style="margin-top: 1em; float: left; border-radius: 25px; border: 2px; padding: 20px; margin-left: 5%">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner " role="listbox"
				style="border-radius: 100px;">
				<div class="item active">
					<img src="img/bg.jpg" alt="New York" width="600" height="600">
					<div class="carousel-caption">
						<h3>New York</h3>
						<p>The atmosphere in New York is lorem ipsum.</p>
					</div>
				</div>

				<div class="item">
					<img src="img/BGSEARCH.jpg" alt="Chicago" width="600" height="600">
					<div class="carousel-caption">
						<h3>Chicago</h3>
						<p>Thank you, Chicago - A night we won't forget.</p>
					</div>
				</div>

				<div class="item">
					<img src="img/bgcan.jpg" alt="Los Angeles" width="600" height="600">
					<div class="carousel-caption">
						<h3>LA</h3>
						<p>Even though the traffic was a mess, we had the best time
							playing at Venice Beach!</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<!--login customer-->




	<form class="col-md-3 modal-content animate" id="user_login_form"
		name="loginForm" method="post" action="loginServletjobseeker"
		style="float: right; margin-top: 1%; border-radius: 25px; border: 2px; padding: 20px; margin-right: 5%">
		<div class="imgcontainer">
			<h1 class="text-left">Job Seeker</h1>
			<!--      <img src="img/employeeloginpic.jpg" alt="Avatar" class="avatar">-->
		</div>

		<div class="Box">
			<label for="jobseekername"><b>Username &nbsp;&nbsp;</b></label> <input
				style="width: 60%; border-radius: 100px;" type="text"
				placeholder="Enter Username" name="jobseekername" id="jobseekername"
				required> <label for="jobseekerpsw"><b>Password
					&nbsp;&nbsp;</b></label> <input style="width: 60%; border-radius: 100px;"
				type="password" placeholder="Enter Password" name="jobseekerpsw"
				id="jobseekerpsw" required>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="reset" class="cancelbtn"
				style="border-radius: 100px; width: 27%; background-color: black">Cancel</button>
			&nbsp;
			<button type="submit"
				style="border-radius: 100px; width: 25%; background-color: #CD853F">Login</button>
			<div>
				<label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label>
			</div>
		</div>

		<span class="psw">Forgot <a href="#">password?</a></span>


	</form>








	<div class="col-md-3"
		style="margin-top: 3%; float: left; background-color: white; border-radius: 15px; margin-left: 5%; border-radius: 25px; border: 2px; padding: 20px;">
		<h1 style="margin-left: 20%">NEW USER?</h1>
		<div class="col-md-5"
			style="margin-top: 5%; float: left; border-radius: 15px; width: 100%; height: 100%">
			<button
				onclick="document.getElementById('uploadresume').style.display='block'"
				style="border-radius: 100px; width: 100%; background-color: black">Upload
				resume</button>
		</div>
		<div class="col-md-5"
			style="margin-top: 5%; float: right; border-radius: 15px;">

			<button type="submit"
				onclick="document.getElementById('createresume').style.display='block'"
				style="border-radius: 100px; width: 100%; background-color: black">create
				resume</button>
		</div>
	</div>








	<!-------------------------------------------------------jobseeker registration-------------------------------->


	<div id="uploadresume" class="modal">
		<form class="modal-content animate" id="user_login_form"
			name="loginForm" method="post" action="loginServlet">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('uploadresume').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>

			<div class="col-md-15"
				style="float: left; margin-top: 1em; opacity: 1.8;">
				<form class="modal-content animate" style="width: 55em">
					<h1 class="text-left" style="font-size: 2em;">Register
						Yourself</h1>
					<div class="container" style="margin-top: 1px;">
						<input style="width: 25em" type="text" placeholder="Enter name"
							name="jobseekername" required> <input
							style="width: 25em; height: 3em" type="email" name="jsEmail"
							placeholder="     Enter Email ID" required> <input
							style="width: 25em" type="password" placeholder="Enter Password"
							name="jspassword" required> <input style="width: 25em"
							type="password" placeholder="Confirm Password" name="jscpassword"
							required> <input style="width: 25em; height: 3em"
							type="tel" name="jscotactnumber"
							placeholder="     Contact Number"> <input
							style="width: 25em; height: 3em" type="tel" name="jscotactnumber"
							placeholder="     Contact Number">


						<div class="row" style="padding-right: 2em">
							<label style="margin-left: 1em; font-size: 1.5em"> DOB</label>
							<div class="col-md-3">
								<input type="date" class="form-control" name="date" id="date"
									placeholder="Date of Birth">
							</div>
							<label style="font-size: 1.5em">Gender</label>
							<div class="col-md-5">
								<div class="big" style="font-size: 1.5em">
									<input type="radio" class="gender" name="gn" value="male"><small>male</small>
									<input type="radio" class="gender" name="gn" value="female"><small>female</small>
									<input type="radio" class="gender" name="gn" value="other"><small>other</small>
								</div>
							</div>
						</div>
						<input style="width: 25em" type="text" maxlength="20"
							placeholder="address" name="address" required> <input
							style="width: 25em" type="text" maxlength="20"
							placeholder="address line 2" name="addressline2"> <input
							style="width: 25em" type="text" placeholder="city" name="city"
							required> <input style="width: 25em" type="text"
							placeholder="state" name="state" required>
						<div class="container">
							<h1>Upload Image</h1>
							<div class="avatar-upload">
								<div class="avatar-edit">
									<input type='file' id="imageUpload" accept=".png, .jpg, .jpeg" />
									<label for="imageUpload"></label>
								</div>
								<div class="avatar-preview">
									<div id="imagePreview"
										style="background-image: url(http://i.pravatar.cc/500?img=7);">
									</div>
								</div>
							</div>
						</div>
						<!--------------------------------image upload part------------------------------------------------>


						<div class="tnc form-row">
							<div class="chkZ chkPrompt" id="chkTerms"
								style="line-height: 18px;">
								<input type="checkbox" name="terms" value="" id="terms">





								<label for="terms"><span></span> I agree to <a
									onclick="document.getElementById('id01').style.display='block'"
									style="width: auto; color: blue">Terms &amp; Conditions</a> </label>




							</div>
						</div>
					</div>
				</form>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="submit" style="border-radius: 100px; width: 10em">register</button>
				<button type="button"
					onclick="document.getElementById('uploadresume').style.display='none'"
					style="border-radius: 10px;" class="cancelbtn">Cancel</button>
			</div>
		</form>
	</div>






	<!--------------------------------------------------------------------------------------------------------------->




	<!----random things-->

	<div class="newspaper col-md-6 "
		style="margin-top: 1%; float: left; padding: 20px; margin-right: 15%">



			<ul class="set">
				<li class="optGrp">Analytics</li>
				<li><a title="Core Compete"
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33049"
					target="_blank">Analytics</a></li>
				<li><a title="COURSE5 INTELLIGENCE PRIVATE LIMITED "
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33071"
					target="_blank">Analytics</a></li>
				<li><a title="LatentView Analytics Pvt Ltd."
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=30859"
					target="_blank">Analytics</a></li>
			</ul>


	
			<ul class="set" style="float: right">
				<li class="optGrp">Analytics</li>
				<li><a title="Core Compete"
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33049"
					target="_blank">Core Compete</a></li>
				<li><a title="COURSE5 INTELLIGENCE PRIVATE LIMITED "
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33071"
					target="_blank">COURSE5 INTELLIGENCE PRIVATE LIMITED </a></li>
				<li><a title="LatentView Analytics Pvt Ltd."
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=30859"
					target="_blank">LatentView Analytics Pvt Ltd.</a></li>
			</ul>

			<ul class="set" style="float: right">
				<li class="optGrp">Analytics</li>
				<li><a title="Core Compete"
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33049"
					target="_blank">Core Compete</a></li>
				<li><a title="COURSE5 INTELLIGENCE PRIVATE LIMITED "
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33071"
					target="_blank">COURSE5 INTELLIGENCE PRIVATE LIMITED </a></li>
				<li><a title="LatentView Analytics Pvt Ltd."
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=30859"
					target="_blank">LatentView Analytics Pvt Ltd.</a></li>
			</ul>

			<ul class="set" style="float: right">
				<li class="optGrp">Analytics</li>
				<li><a title="Core Compete"
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33049"
					target="_blank">Core Compete</a></li>
				<li><a title="COURSE5 INTELLIGENCE PRIVATE LIMITED "
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33071"
					target="_blank">COURSE5 INTELLIGENCE PRIVATE LIMITED </a></li>
				<li><a title="LatentView Analytics Pvt Ltd."
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=30859"
					target="_blank">LatentView Analytics Pvt Ltd.</a></li>
			</ul>
			<ul class="set" style="float: right">
				<li class="optGrp">Analytics</li>
				<li><a title="Core Compete"
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33049"
					target="_blank">Core Compete</a></li>
				<li><a title="COURSE5 INTELLIGENCE PRIVATE LIMITED "
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=33071"
					target="_blank">COURSE5 INTELLIGENCE PRIVATE LIMITED </a></li>
				<li><a title="LatentView Analytics Pvt Ltd."
					href="https://www.naukri.com/tieups/tieups.php?othersrcp=30859"
					target="_blank">LatentView Analytics Pvt Ltd.</a></li>
			</ul>

	</div>



	<!---------------------------------------------create resume------------------------------------------>


	<div id="createresume" class="modal">
		<form class="modal-content animate" id="user_login_form"
			name="loginForm" method="post" action="loginServlet">
				<div class="file-field">
					<a class="btn-floating peach-gradient mt-0 float-left"> <i
						class="fas fa-paperclip" aria-hidden="true"></i> <input
						type="file">
					</a>
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text"
							placeholder="Upload your file">
					</div>
				</div>
			</form>
	</div>

	<!--------------------------------------------------------------------------------------------------------------->

	<div>
		<div class=" modal-content animate  "
			style="margin-top: -12%; margin-left: 43%; margin-right: 2%; float: right; border-radius: 25px; border: 2px; padding: 20px; width: 40em">

			<div id="myCarousel1" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel1" data-slide-to="1"></li>
					<li data-target="#myCarousel1" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">

					<div class="item active">
						<a href="calldataset.php" target="_blank"> <img
							style="width: 100%" src="img/bgca.jpg" /> <br></a>

						<div class="carousel-caption">
							<h3>New York</h3>
							<p>The atmosphere in New York is lorem ipsum.</p>
						</div>
					</div>





					<div class="item ">
						<a href="calldataset.php" target="_blank"> <img
							style="width: 100%" src="img/bgcan.jpg" /> <br></a>

						<div class="carousel-caption">
							<h3>New York</h3>
							<p>The atmosphere in New York is lorem ipsum.</p>
						</div>
					</div>



					<div class="item ">
						<a href="calldataset.php" target="_blank"> <img
							style="width: 100%" src="img/bgca.jpg" /> <br></a>

						<div class="carousel-caption">
							<h3>New York</h3>
							<p>The atmosphere in New York is lorem ipsum.</p>
						</div>
					</div>



					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel1" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel1"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>


			</div>

		</div>
	</div>
	<div class="footer">
		<h1>@copyright</h1>
	</div>


</body>
</html>
