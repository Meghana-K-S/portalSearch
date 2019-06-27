<%@page import="com.mongodb.QueryBuilder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"
	import="org.bson.Document" import="com.mongodb.DBCollection"%>
<%@ page import="com.jcg.mongodb.servlet.*"%>
<%@ page import="java.util.regex.Pattern"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
<script src="resource/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  <link rel="stylesheet" type="text/css" href="resource/css/styleemphp.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resource/css/designhome.css">
   <script>
   var check = function() {
	   document.location.href="postServlet";    
  </script>
</head>



<body style='background-image: url("img/bgplane.jpg")';>
<div class="header" style="background-color: black;">
    <a href="#default" class="logo" style="color: white">CompanyLogo</a>
     <form method="post" action="searchServlet">
     <input style="width: 40%;margin-left:5%;border-radius: 10px" type="text" placeholder="search using keywords separated by comma" name="keytext" id="keytext" >
     <button type="submit"  style=" border-radius: 100px; width:12em;background-color: #555555;"><b>search Candidates</b></button>
    <div class="header-right" style="margin-top: 1em">
      <a style="color: white" href="jobposting.jsp">Post Job </a>
      <a href="premium.jsp" style="color: white">Premium</a>
      <a onclick="document.getElementById('id01').style.display='block'" style="color: white">Profile</a>
   <a href="index.jsp" style="color: white">Logout</a>
    </div></form>

  <div id="id01" class="modal">
    <form class="modal-content animate"  id="user_login_form" name="loginForm" method="post" action="loginServlet">
 

      <div class="imgcontainer">
        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
       <img src="img/employerloginpic.jpg" alt="Avatar" class="avatar">
      </div>

      <div class="container">
        <label for="employername"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="login_id" id="login_id" required>
        <label for="employerpsw"><b>Password</b></label>
          <input type="password" placeholder="Enter Password" name="login_pwd" id="login_pwd" required>        
               <button type="submit"  style=" border-radius: 100px; width:10em">Login</button>
      <div>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
      </div>
      </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" style=" border-radius: 10px;" class="cancelbtn">Cancel</button>
      <button type="button" style=" border-radius: 10px;" onclick="change_home()" class="cancelbtn">forgot password</button>
    </div>
  </form>
</div>



</div>





<div class="col-xs-3"  style="float:right;margin-right:2%;margin-top:2%;height:30em;background-color: white;border-radius: 50px">
  <h1><b>hello</b></h1>
</div>





  <div class="col-md-5" style="float: right;margin-right: 10%;margin-top: 2%;">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">

        <img src="img/start.jpg" alt="New York" width="1200" height="700">
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>The atmosphere in New York is lorem ipsum.</p>
        </div>      
      </div>

      <div class="item">
              <a href="calldataset.php"target="_blank">

        <img src="img/misbg.jpg" alt="Chicago" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Chicago</h3>
          <p>Thank you, Chicago - A night we won't forget.</p>
        </div>      
      </div>
    
      <div class="item">
              <a href="calldataset.php"target="_blank">

        <img src="img/money.jpg" alt="Los Angeles" width="1200" height="700">
        <div class="carousel-caption">
          <h3>LA</h3>
          <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</div>







<nav id="sidebar" >
  <ul class="dots">
   <li>
      <a href="#" data-toggle="tooltip" data-placement="bottom" title="All Activity">
      <span class="glyphicon glyphicon-list-alt" onkeyup='check();'></span>
      </a>
    </li>   
    <li>
      <a href="#" onclick="document.getElementById('id01').style.display='block'"  data-toggle="tooltip" data-placement="bottom" title="Candidates Interested">
        <span class="glyphicon glyphicon-user"><mark>23</mark></span>
      </a>  
    </li>
    <li>
      <a href="#" data-toggle="tooltip" data-placement="bottom" title="Applications">
      <span class="glyphicon glyphicon-envelope"><mark class="big swing">7</mark></span>
      </a>  
    </li>
    <li>
      <a href="./postServlet" data-toggle="tooltip" data-placement="bottom" title="Jobs Posted">
      <span class="glyphicon glyphicon-time"><mark class="rubberBand">3</mark></span>
      </a>
    </li>
    
      
  </ul> 
</nav>
     





<div class="col-md-15"  style="margin-top:35%;height:5em;background-color: white;margin-left: 1px  ">
  <h1><b>hello</b></h1>
</div>







<footer style="margin-top: 6%">
  <p>© 2018 Gandalf</p>
</footer>


</body>
</html>