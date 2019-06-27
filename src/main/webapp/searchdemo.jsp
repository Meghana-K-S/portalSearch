<%@page import="com.mongodb.QueryBuilder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"
	import="org.bson.Document" import="com.mongodb.DBCollection"%>
<%@ page import="com.search.servlet.*"%>
<%@ page import="com.search.servlet.Keysearch"%>
<%@ page import="java.util.regex.Pattern"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Search Candidates</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
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
    <link rel="stylesheet" type="text/css" href="resource/css/designhome.css">
     <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css'>
<link rel='stylesheet' href='https://cdn.datatables.net/buttons/1.2.2/css/buttons.bootstrap.min.css'>

      <link rel="stylesheet" href="resource/css/style.css">
    
    	<script type="text/javascript">
			function printChecked(){
				var items=document.getElementsByName('acs');
				var selectedItems="";
				for(var i=0; i<items.length; i++){
					if(items[i].type=='checkbox' && items[i].checked==true)
						selectedItems+=items[i].value+",";
				}
				 localStorage.setItem('lists', selectedItems); 
				 location.href = "shortlist.jsp";
			}	
			
		        
		</script>
    <style>
    input[type='checkbox'] {
    -webkit-appearance:none;
    width:30px;
    height:30px;
    background:white;
    border-radius:5px;
    border:2px solid #555;
}
input[type='checkbox']:checked {
    background: #abd;
}
.checked {
  color: orange;
}
  .table-fixed thead {
  width: 97%;
}
.table-fixed tbody {
  height: 500px;
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


<body>

<div class="header" style="background-color: black;">
    <a href="#default" class="logo" style="color: white">CompanyLogo</a>
     <form method="post" action="searchServlet">
     <input style="width: 40%;margin-left:5%;border-radius: 10px" type="text" placeholder="search using keywords separated by comma" name="keytext" id="keytext" >
     <button type="submit"  style=" border-radius: 100px; width:12em;background-color: #555555;"><b>search Candidates</b></button>
     <div class="header-right" style="margin-top: 1em">
      <a style="color: white" href="employerhomepage.jsp">Home </a>
      <a style="color: white" href="jobposting.jsp">Post Job </a>
      <a href="premium.jsp" style="color: white">Premium</a>
         <a href="index.jsp" style="color: white">Logout</a>
    </div></form>
    
</div> 
<div class="container col-md-5" style="float: right;width:520em;margin-right:30%;margin-top: 3% ;">
  <div class="row">
    <div id="users" class="col-md-12" style="margin-top: 2em">
      <div class="filter-group row">
        <div class="form-group col-xs-8 col-sm-8 col-md-5" >
          <input type="text" data-ng-model="vm.keywords" class="search form-control" placeholder="Keyword Search" style="width: 80em;margin-top: 2em">
        </div>
        
       <!--  <div class="form-group col-xs-12 col-sm-3">
          <button class="btn btn-danger" onclick="resetList();">Clear</button>
        </div> -->
      </div>
       <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
          <thead style="font-size:15px">
            <tr>
              <th>Name</th><th>Qualification</th>
              <th>Experience</th><th>State</th>
              <th>Resumes</th><th>Select</th>
          </tr>
          </thead>
          <tbody class="list">
           <!-- <ul class="list">
     <li class="list--list-item"> -->
     
				
				<%
				// retrieve your list from the request, with casting 
					ArrayList<Search> list = (ArrayList<Search>) request.getAttribute("list");

					//print the information about every category of the list
					for (Search category : list) {
			%><span data-ng-bind-html="highlightKeywords:vm.keywords">
			<tr class="list--list-item">
              <td class="name">
					<%
					out.println(category.getName());
				%>
				</td><td class="qual" data-exp="<%	out.println(category.getQualif());%>">
					<p class="exp"><%
					out.println(category.getQualif());
				%></p></td><td class="ex" >
				
					<%
					out.println(category.getExp());
				%>
				</td><td class="state">
					<%
					out.println(category.getStat());%>
					</td><td>
					<!--  <iframe src="resumes/Abigail-07628.pdf" style="width: 100%;height: 100%;border: none;"></iframe>-->
				<a href="resumes/Abigail-07628.pdf"  tabindex="-1">
				<button type="button" class="btn btn-success">Resume</button></a>	</td>
				<td>
<input type="checkbox" name="acs" value=<%out.println(category.getEmail());%>>Select<br></td></tr></span><%
					}
				%>
				
</tbody></table>
	<p align="right">
		<input class="btn btn-info" type="button" onclick='printChecked()' value="Shortlisted Candidates List"/>
	</p>
				</div>
<!-- 			<div class="no-result">No Results</div> -->
<!-- 			<ul class="pagination"></ul> -->
</div> 
	</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.min.js"></script>
  <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/list.js/1.5.0/list.min.js"></script>


    <script  src="resource/js/searchdemo.js"></script>

<div class="col-md-3"  style=" background-color: #353b48;height:200%;float: left;">
    <div id="users" class="col-xs-12">
        <div class="filter-group row" style="color: white">    
          <div class="form-group col-xs-12 col-sm-12 col-md-4" style="color: white">
          <br><br>
            <p>Qualification</p>
            <div class="radio-inline">
              <label>
              <input class="filter-all" type="radio" value="BE/B.tech" name="exp" id="job-part" checked /> Engineers
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter-all" type="radio" value="post graduation" name="exp" id="job-int" /> Post Graduates
              </label>
            </div>
            <div class="radio-inline">
              <label>
              <input class="filter-all" type="radio" value="diploma" name="exp" id="job-full" /> Diploma
              </label>
            </div>
          </div>
          <div class="form-group col-xs-12 col-sm-12 col-md-4">
          <br><br>
            <p>Rating</p>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Blvd" name="address" id="address-all" />&nbsp;&nbsp;<span class="fa fa-star checked"></span>
  <span class="fa fa-star checked"></span>
  <span class="fa fa-star checked"></span>
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="St" name="address" id="address-street" />&nbsp;&nbsp;<span class="fa fa-star checked"></span>
  <span class="fa fa-star checked"></span>
  <span class="fa fa-star"></span>
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Dr" name="address" id="address-drive" />&nbsp;&nbsp;<span class="fa fa-star checked"></span>
  <span class="fa fa-star"></span>
  <span class="fa fa-star"></span>
              </label>
            </div>
          </div>
        </div>
  </div><br><br><br><br><br><br><br><br>


 <!--  -->
  <div class="col-md-17" onclick="myFunction1()" Try itonclick="myFunction1()" style="background-color: white;margin-left:0px;height: 3em;border-radius: 100px">
  <h6 style="margin-left: 35%;padding-top: 10px">  experience </h6>
  </div>
  <div id="myDIV2">
          <div id="showmehideme">
            <div class="filter-group row" style="color: white">    
          
  <div class="form-group col-xs-12 col-sm-12 col-md-4" style="color: white">
    <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Blvd" name="address" id="address-all" /> >8years
              </label>
            </div>
              <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Blvd" name="address" id="address-all" /> >5years
              </label>
            </div>
            <div class="radio-inline">
              <label>
              <input class="filter" type="radio" value="St" name="address" id="address-street"/> >3years
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Dr" name="address" id="address-drive" /> fresher
              </label>
            </div>
          </div>   
               </div>
  </div>
</div>

  <script>
  function myFunction1() {
    var y = document.getElementById("myDIV2");
    if (y.style.display === "none") {
      y.style.display = "block";
    } else {
      y.style.display = "none";
    }
  }
  </script>







  <div class="col-md-17" onclick="myFunction4()" Try itonclick="myFunction4()" style="background-color: white;margin-left:0px;height: 3em;border-radius: 100px;margin-top: 2%">
  <h6 style="margin-left: 35%;padding-top: 10px;margin-top: 2%">  Job Type </h6>
  </div>
  <div id="myDIV4">
          <div id="showmehideme">
  <div class="form-group col-xs-12 col-sm-12 col-md-5" style="color: white">
              <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Blvd" name="address" id="address-all" /> Internship
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="St" name="address" id="address-street" /> Full-time
              </label>
            </div>
           
          </div>        
  </div>

</div></div>
  <script>
  function myFunction4() {
    var x = document.getElementById("myDIV4");
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  }
  </script>
 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.colVis.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js'></script>
<script src='https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js'></script>
<script src='https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js'></script>
<script src='https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js'></script>

  

    <script  src="resource/js/index.js"></script>
 <script  src="resource/js/searchdemo.js"></script>



</body>

</html>