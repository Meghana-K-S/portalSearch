<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="resource/css/resetpwd.css">
  <script src="resource/js/homepage.js"></script>
  <meta charset="ISO-8859-1">
  <script src="resource/js/iu.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="resource/js/registration.js"></script>
</head>

<body style='background-image: url("img/bgemplog.jpg")';>
  <div class="header" style="background-color: black">
    <a href="#default" class="logo" style="color: white">CompanyLogo</a>
     <div class="header-right">
     <a	href="index.jsp" class="logo" style="color: white">Home</a>	
     </div>
  </div>
</div>

<div class="center" style="margin-left: 38%">
      <div class="col-md-5" style="margin-top: 2em ;background-color: grey ; margin-bottom: 2em">
        <form id="change_pwd_form" name="pwdForm" method="post" action="pwdServlet">
         <div class="imgcontainer">
            <h1 class="text-left" style="color: white">Change</h1>
            <img src="img/reset.jpg" alt="Avatar" class="avatar">
         </div>

          <div class="container" style="margin-top: 2px;color: white">
            <label for="password"><b>New Password</b></label>
            <input type="password" placeholder="Enter New Password" name="npassword" onkeyup='check();'  required>  
            <label for="password"><b>confirm Password</b></label>
            <input type="password" placeholder="Confirm New Password" name="cpassword" onkeyup='check();' required>  
           <br><br><span id='message'></span>
            <button id="submit" name="submit" type="submit" class="btn btn-primary">Change</button>
          </div>
        </form>
      </div>
    </div>



</body>
</html>
