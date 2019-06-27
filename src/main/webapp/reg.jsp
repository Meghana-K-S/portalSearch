<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<script type="text/javascript">
	
</script>
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

</head>
<body background="img/bgregister1.jpg">

	<div class="header"
		style="background-color: black; height: 6em; opacity: 1">
		<a href="#default" class="logo" style="color: grey">CompanyLogo</a>
		<div class="header-right">
			<button
				style="width: 7em; margin-bottom: 1em; border-radius: 10px; margin-bottom: 4px"
				onclick="goBack()">back</button>
		</div>
	</div>

	<div class="col-md-5"
		style="float: right; margin-top: 4em; margin-bottom: 2em">
		<form>
			<div class="container" style="background-color: white">
				<h1>random topics</h1>
				<p>about us and why should you join us</p>
			</div>
		</form>
		<div style="background-color: white">
			<form>
				<div class="container">
					<h1>random topics</h1>
					<p>about us and why should you join us</p>
				</div>
			</form>
		</div>
		<div style="background-color: white">
			<form>
				<div class="container">
					<h1>random topics</h1>
					<p>about us and why should you join us</p>
				</div>
			</form>
		</div>
		<div style="background-color: white">
			<form>
				<div class="container">
					<h1>random topics</h1>
					<p>about us and why should you join us</p>
				</div>
			</form>
		</div>
		<div style="background-color: white">
			<form>
				<div class="container">
					<h1>random topics</h1>
					<p>about us and why should you join us</p>
				</div>
			</form>
		</div>
	</div>
	<div class="col-md-15"
		style="float: left; margin-top: 1em; margin-bottom: 2em; opacity: 1.8;">
		<form class="modal-content animate" style="width: 55em" name="RegForm"
			method="post" action="RegServlet"
			onsubmit="if(document.getElementById('agree').checked) { return true; } else { alert('Please indicate that you have read and agree to the Terms and Conditions and Privacy Policy'); return false; }">
			<h1 class="text-left" style="font-size: 2em;">Register Employer</h1>
			<div class="container" style="margin-top: 1px;">
				<input style="width: 25em" type="text" placeholder="Enter name"
					name="employername" required> <input
					style="width: 25em; height: 3em" type="email" name="Email"
					placeholder="     Enter Email ID"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
				<input style="width: 25em" type="password"
					placeholder="Enter Password" name="password" id="password"
					onkeyup='check();' required> <input style="width: 25em"
					type="password" placeholder="Confirm Password" name="cpassword"
					id="cpassword" onkeyup='check();' required> <input
					style="width: 25em; height: 3em" type="tel" name="cotactnumber"
					placeholder="     Contact Number"> <input
					style="width: 25em" type="text" placeholder="Enter company Name"
					name="companyname" required> <input style="width: 25em"
					type="text" placeholder="Enter Member Name" name="membername"
					required>


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
				<input style="width: 25em" type="text" maxlength="80"
					placeholder="address" name="address" required> <input
					style="width: 25em" type="text" maxlength="80"
					placeholder="address line 2" name="addressline2"> <input
					style="width: 25em" type="text" placeholder="city" name="city"
					required> <input style="width: 25em" type="text"
					placeholder="state" name="state" required>



				<!--------------------------------image upload part------------------------------------------------>
				<div class="container" align="center">
					<h1>Upload Image</h1>
					<div class="avatar-upload">
						<div class="avatar-edit">
							<input type='file' id="imgInp" accept=".png, .jpg, .jpeg"
								name="image" /> <label for="imageUpload"></label>
						</div>
					</div>
					<img id='img-upload' />
				</div>
				<!--------------------------------image upload part------------------------------------------------>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id='message'></span><br>
			</div>


			<div class="tnc form-row">
				<div class="chkZ chkPrompt" id="chkTerms" style="line-height: 30px;">
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="terms"
						value="" id="terms"> <label for="terms"><span></span>
						I agree to <a
						onclick="document.getElementById('id01').style.display='block'"
						style="width: auto; color: blue" href="#">Terms &amp;
							Conditions</a> </label>
				</div>
			</div>
			<div class="row" style="padding-left: 2em">
				<button type="submit" style="border-radius: 100px; width: 10em"
					name="submit" id="submit">register</button>
				<button type="reset"
					style="border-radius: 100px; width: 10em; margin-left: 2em">cancel</button>
			</div>
			<h4 id="errMsg" class="text-danger" align="center"><b>${error_message}</b></h4>
	
		</form>
	</div>

	<div id="id01" class="modal">

		<form class="modal-content animate" action="/action_page.php">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>

			<div class="container">
				<h1>TERMS AND CONDITIONS</h1>
				<p>These Standard Terms and Conditions written on this webpage
					shall manage your use of our job portal website. These Terms will
					be applied fully and affect to your use of this Website. By using
					this Website, you agreed to accept all terms and conditions written
					in here. You must not use this Website if you disagree with any of
					these Website Standard Terms and Conditions.</p>
				<br>
				<p>Intellectual Property Rights</p>
				<p>Other than the content you own, under these Terms, Company
					Name and/or its licensors own all the intellectual property rights
					and materials contained in this Website. You are granted limited
					license only for purposes of viewing the material contained on this
					Website.</p>
				<br>
				<p>Entire Agreement</p>
				<p>These Terms constitute the entire agreement between Company
					Name and you in relation to your use of this Website, and supersede
					all prior agreements and understandings.</p>
				<br>
				<p>Governing Law and Jurisdiction</p>
				<p>These Terms will be governed by and interpreted in accordance
					with the laws of the State of Country, and you submit to the
					non-exclusive jurisdiction of the state and federal courts located
					in Country for the resolution of any disputes.</p>
			</div>
			
		</form>
	</div>
</body>
</html>