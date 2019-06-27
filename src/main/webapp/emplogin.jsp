<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="resource/css/loginemp.css">
  <meta charset="ISO-8859-1">
  <style>
body {
background-image: url(img/hdr1.jpg);
-moz-background-size: cover;
-webkit-background-size: cover;
background-size: cover;
background-position: top center !important;
background-repeat: no-repeat !important;
background-attachment: fixed;
}
</style>
</head>
<body style='background-image: url("img/homep.jpg")';>
 <div class="header" style="background-color: black">
    <a href="#default" class="logo" style="color: white">CompanyLogo</a>
    <div class="header-right">
      <a style="color: white" href="index.jsp">Home</a>
      <a style="color: white" href="reg.jsp">Sign Up</a>
    </div>
  </div>

    <div class="center" style="position: relative;margin-left: 40%">
      <div class="col-md-5" style="margin-top: 2em ;background-color: white ; margin-bottom: 2em">
        <form id="user_login_form" name="loginForm" method="post" action="loginServlet">
         <div class="imgcontainer">
            <h1 class="text-left">Employer Login</h1>
            <img src="img/employerlogpic.jpg" alt="Avatar" class="avatar">
         </div>

          <div class="container">
            <label for="employername"><b>Usename</b></label>
            <input type="text" placeholder="Enter Username" name="login_id" id="login_id" required>
            <label for="employerpsw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="login_pwd" id="login_pwd" required>  
            <span class="psw"> <a href="resetpass.jsp">Forgot password?</a></span>      
            <button type="submit"  style=" border-radius: 100px; width:10em">Login</button>
          </div>
          <div class="row">
            <label>
              <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
          </div>
        </form>
      </div>
    </div>


</body>
</html>
