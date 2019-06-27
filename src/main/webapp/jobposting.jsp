<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resource/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="resource/css/styleregis.css">
<script src="js/iu.js"></script>

</head>



<body background="img/color.jpg">
	<div class="header" style="background-color: black;">
		<a href="#default" class="logo" style="color: white">CompanyLogo</a>

		<div class="header-right">
			<a style="color: white">Profile</a> <a style="color: white"  href="employerhomepage.jsp">home</a>
		</div>
	</div>


	<div class="col-md-6"	style="margin-top: 4%; background-color: white; margin-bottom: 1em; margin-left: 25%">
		<form id="postjob_form" name="postjobForm" method="post"
			action="postjobServlet">
			<div class="container">
				<div class="row">
					<p style="margin-left: 2%">JOB TYPE</p>

					<div class="col-md-9 col-sm-9 col-xs-12" style="margin-left: 2%;">
						<input type="radio" value="Full Time" name="job_type_id" checked="checked">Full
						Time <input type="radio" value="Part Time" name="job_type_id">Part
						Time <input type="radio" value="Internship" name="job_type_id"
							checked="checked">Internship
					</div>
					<input style="width: 20em; border-radius: 100px; margin-left: 5%"
						type="text" placeholder="Job title" name="jobtitle" required>
					<select
						style="border-radius: 100px; width: 14em; height: 3em; margin-top: 1.5%; margin-left: 2%"
						name="qual" id="qual">
						<option value="">Qualification</option>
						<option value="12th">12th</option>
						<option value="diploma">diploma</option>
						<option value="BE/B.tech">BE/B.tech</option>
						<option value="BCA">BCA</option>
						<option value="BA,BSc">BA,BSc</option>
						<option value="ITI">ITI</option>
						<option value="post graduation">post graduation</option>
					</select>

				</div>


				<div class="container row">
					<input style="width: 20em; border-radius: 100px;" type="text"
						placeholder="city" name="city" required> <input
						style="width: 20em; border-radius: 100px;" type="text"
						placeholder="state" name="state" required> <input
						style="width: 20em; border-radius: 100px;" type="text"
						placeholder="skills Required" name="skill">
				</div>
			</div>

			<div class="row">
				<p style="margin-left: 3%; margin-top: 0%;">Year of passing between</p>
				<select
					style="border-radius: 100px; width: 10%; height: 2em; margin-left: 2%"
					name="startyear" id="startyear">
					<option value="1991">1991</option>
					<option value="1992">1992</option>
					<option value="1993">1993</option>
					<option value="1994">1994</option>
					<option value="1995">1995</option>
					<option value="1996">1996</option>
					<option value="1997">1997</option>
					<option value="1998">1998</option>
					<option value="1999">1999</option>
					<option value="2000">2000</option>
					<option value="2001">2001</option>
					<option value="2002">2002</option>
					<option value="2003">2003</option>
					<option value="2004">2004</option>
					<option value="2005">2005</option>
					<option value="2006">2006</option>
					<option value="2007">2007</option>
					<option value="2008">2008</option>
					<option value="2009">2009</option>
					<option value="2010">2010</option>
					<option value="2011">2011</option>
					<option value="2012">2012</option>
					<option value="2013">2013</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
					<option value="2016">2016</option>
					<option value="2017">2017</option>
					<option value="2018">2018</option>
					<option value="2019">2019</option>
					<option value="2020">2020</option>
				</select>&nbsp; and <select
					style="border-radius: 100px; width: 10%; height: 2em; margin-left: 4%"
					name="endyear" id="endyear">
					<option value="1991">1991</option>
					<option value="1992">1992</option>
					<option value="1993">1993</option>
					<option value="1994">1994</option>
					<option value="1995">1995</option>
					<option value="1996">1996</option>
					<option value="1997">1997</option>
					<option value="1998">1998</option>
					<option value="1999">1999</option>
					<option value="2000">2000</option>
					<option value="2001">2001</option>
					<option value="2002">2002</option>
					<option value="2003">2003</option>
					<option value="2004">2004</option>
					<option value="2005">2005</option>
					<option value="2006">2006</option>
					<option value="2007">2007</option>
					<option value="2008">2008</option>
					<option value="2009">2009</option>
					<option value="2010">2010</option>
					<option value="2011">2011</option>
					<option value="2012">2012</option>
					<option value="2013">2013</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
					<option value="2016">2016</option>
					<option value="2017">2017</option>
					<option value="2018">2018</option>
					<option value="2019">2019</option>
					<option value="2020">2020</option>
				</select>


				<p style="margin-left: 5%; margin-top: 0%;">Experience</p>

				<select
					style="border-radius: 100px; width: 10%; height: 2em; margin-left: 2%; margin-top: 0%;"
					name="startyr" id="startyr">
					<option value="fresher">fresher</option>
					<option value="> 2 years">> 2 years</option>
					<option value="> 5 years">> 5 years</option>
					<option value="> 10 years">> 10 years</option>
					<option value="> 15 years">> 15 years</option>
				</select>
			</div>
			<div class="row">

				<p style="margin-top: 2%; margin-left: 3%;">Salary in range</p>
				<input
					style="width: 10%; height: 2em; border-radius: 100px; margin-left: 2%"
					type="text" placeholder="min" name="min" required> <input
					style="width: 10%; height: 2em; border-radius: 100px; margin-left: 2%"
					type="text" placeholder="max" name="max" required> <select
					style="width: 13%; height: 2em; margin-left: 5%; margin-top: 2%"
					name="per" id="per">
					<option value="month">per month</option>
					<option value="year">per year</option>
					<option value="week">per week</option>
					<option value="hour">per hour</option>
				</select>


			</div>


			<div class="row">
				<p style="margin-top: 2%; height: 2%; margin-left: 3%;">Job
					description</p>
				<textarea rows="4" cols="50" style="margin-left: 2%" name="description" id="description">
</textarea>
			</div>

			<div class="row">
				<p style="margin-top: 2%; height: 2%; margin-left: 3%;">Last day
					to apply</p>

				<div class="col-md-3">
					<input style="margin-top: 4%" type="date" class="form-control"
						name="date" id="date">
				</div>

			</div>

			<div class="row">

				<input
					style="width: 20em; border-radius: 100px; width: 25%; margin-left: 3%;"
					type="text" placeholder="number of vacancies" name="vacancies"
					required>


				<p style="margin-top: 2%; margin-left: 2%;">Hiring process</p>


				<select
					style="width: 22%; height: 2em; margin-left: 2%; margin-top: 2%"
					name="process" id="process">
					<option value="Face to Face">Face to Face</option>
					<option value="Written test">Written test</option>
					<option value="Telephonic">Telephonic</option>
					<option value=" Group Discussion">Group Discussion</option>
					<option value="Walk in">Walk in</option>
					<option value="Other">Other</option>
				</select>
			</div>

			<button type="submit" style="border-radius: 100px; width: 10em">post</button>
		</form></div>
</body>
</html>
