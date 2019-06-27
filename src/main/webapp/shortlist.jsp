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
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  <link rel="stylesheet" type="text/css" href="resource/css/styleemphp.css">
  <link rel='stylesheet' href="resource/css/bootstrap.min.css">
<link rel='stylesheet' href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="resource/css/firststyle.css">
<script src="resource/js/expandsearch.js"></script>
<link rel="stylesheet" type="text/css" href="resource/css/search.css">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="resource/css/loginemp1.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/table.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="resource/css/styleemphp.css">
  <script data-require="angular.js@1.2.25" data-semver="1.2.25" src="https://code.angularjs.org/1.2.25/angular.js"></script>
    <script>document.write('<base href="' + document.location + '" />');</script>
    <link rel="stylesheet" href="resource/css/style.css" />
    <script src="resource/js/highlight.js"></script>
<script  type="text/javascript">

var listvalues = localStorage.getItem('lists');
</script>
    <title>MongoDb Servlet Example</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- CSS File -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body onload="myFunction()">
<div class="header" style="background-color: black;">
    <a href="#default" class="logo" style="color: white">CompanyLogo</a>
     <form method="post" action="searchServlet">
     <input style="width: 40%;margin-left:5%;border-radius: 10px" type="text" placeholder="search using keywords separated by comma" name="keytext" id="keytext" >
     <button type="submit"  style=" border-radius: 100px; width:12em;background-color: #555555;"><b>search Candidates</b></button>
    <div class="header-right" style="margin-top: 1em">
    <a style="color: white" href="employerhomepage.jsp">My Profile </a>
      <a style="color: white" href="jobposting.jsp">Post Job </a>
      <a href="premium.jsp" style="color: white">Premium</a>
      <a onclick="document.getElementById('id01').style.display='block'" style="color: white">Profile</a>
   <a href="index.jsp" style="color: white">Logout</a>
    </div></form></div>
    <div id="mongoDbServlet" class="container">
        <h2 align="center" class="text-success">Selected list!</h2> 
      <ol> <h2>
      	<script type="text/javascript">
      	
        document.write(listvalues.split(",").join("<br /><br />"));
     
      </script> </li>
       </h2></ol>
        </div>      
    </div>
</body>
</html>