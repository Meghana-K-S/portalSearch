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
  <!--  <link rel="stylesheet" type="text/css" href="resource/css/styleemphp.css">-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resource/css/designhome.css">
   <style>
.checked {
  color: orange;
}
  .table-fixed thead {
  width: 97%;
}
.table-fixed tbody {
  height: 830px;
  overflow-y: auto;
  width: 100%;
}
.table-fixed thead, .table-fixed tbody, .table-fixed tr, .table-fixed td, .table-fixed th {
  display: block;
}
.table-fixed tbody td, .table-fixed thead > tr> th {
  float: left;
  border-bottom-width: 0;
}
.highlighted {
 background-color: red; 
}
</style>
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







  <h1><b><center>Dashboard</center></b> </h1>
<div class="col-md-9" style="margin-top:2%;height:45em;background-color: white;margin-left: 263px  "> 
<%ArrayList<Login> list = (ArrayList<Login>) request.getAttribute("list");
if(list!=null)
{ %>
    <table class="table table-fixed" style="width: 80em;margin-top: 2em">
          <thead style="font-size:15px">
            <tr>
              <th class="col-xs-2">Title</th><th class="col-xs-2">Qualification</th>
              <th class="col-xs-2">Skill</th>
              <th class="col-xs-2">City</th><th class="col-xs-2">Vacancies</th>
              <th class="col-xs-2">End Date</th>
          </tr>
          </thead>
          <tbody class="list" data-ng-model="vm.textToHighlight">
           <!-- <ul class="list">
     <li class="list--list-item"> -->
     
				
				<%
				// retrieve your list from the request, with casting 
					
					//print the information about every category of the list
					for (Login category : list) {
			%><tr>
              <td class="col-xs-2">
					<%
					out.println(category.getTitle());
				%>
				</td><td class="col-xs-2">
					<%
					out.println(category.getQualification());
				%></td><td class="col-xs-2">
				
					<%
					out.println(category.getSkill());
				%>
				</td><td class="col-xs-2">
				<%
					out.println(category.getCity());
				%>
				</td><td class="col-xs-2">
					<%
					out.println(category.getVacancies());%>
					</td>
					<td class="col-xs-2 ">
					<%
					out.println(category.getDate());%>
					</td></tr><%
					}
					}
					else
					{
					%><h1>No Jobs are posted</h1>
						<%}
				%></h1>
				
</tbody></table>
    </div><br><br>






<nav id="sidebar" style="width:10em;height:25em;">
  <ul class="dots">
   <li>
      <a href="employerhomepage.jsp" data-toggle="tooltip" data-placement="bottom" title="All Activity">
      <span class="glyphicon glyphicon-list-alt"></span>
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
      <a href="#" data-toggle="tooltip" data-placement="bottom" title="Jobs Posted">
      <span class="glyphicon glyphicon-time"></span>
      </a>
    </li>
   
      
  </ul> 
</nav>
  








<footer style="margin-top: 40%">
  <p>© 2018 Gandalf</p>
</footer>


</body>
</html>