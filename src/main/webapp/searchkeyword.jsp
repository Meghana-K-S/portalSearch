<%@page import="com.mongodb.QueryBuilder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"
	import="org.bson.Document" import="com.mongodb.DBCollection"%>
<%@ page import="com.search.servlet.*"%>
<%@ page import="com.search.servlet.Keysearch"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resource/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="resource/css/loginemp.css">

<link rel="stylesheet" type="text/css"
	href="resource/css/stylesearch.css">
<script src="resource/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<div class="header" style="background-color: black">
		<a href="#default" class="logo" style="color: white">CompanyLogo</a>
		<div class="header-right">
			<a style="color: white" href="employerhomepage.jsp">Home</a>
			 <a style="color: white"  href="index.jsp">Logout</a>
		</div>
	</div>
	<form id="keywordform" name="keywordForm" method="post"
		action="keyServlet">
		<div class="container" align="left">
			<div class="row">
				<h2>Stylish Search Box</h2>
				<div id="custom-search-input">
					<div class="input-group col-md-15">
						<input type="text" class="  search-query form-control" name="key"
							id="key" placeholder="Search" style="font-size: 25px" /> <input
							type="submit" name="submit" value="Search" />
						<!--   <button class="btn btn-info" type="button" style="width:5em;height:3.5em;font-size:10px;">
                                        <span class=" glyphicon glyphicon-search"></span>&nbsp;&nbsp;
                                    </button>-->
					</div>
				</div>
			</div>
		</div>
	</form>
	<br>
	<br>
	<h3 class="text-success" style="font-size: 35px" align="center">
		<b>Candidates List</b>
	</h3>
	<div class="container">
		<div class="col-sm-12">
			<%
				// retrieve your list from the request, with casting 
				String keytext = (String) getServletContext().getAttribute("keytext");
				if (keytext == null) {
					ArrayList<Search> list = (ArrayList<Search>) request.getAttribute("list");

					//print the information about every category of the list
					for (Search category : list) {
			%>
			<div class="well" style="background-color: #bbdefb">
				<h4 class="text-info" style="font-size: 22px">
					Name:
					<%
					out.println(category.getName());
				%>
				</h4>
				<br>
				<p style="font-size: 20px">
					Date of Birth:
					<%
					out.println(category.getDob());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					Qualification:
					<%
					out.println(category.getQualif());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					Job Interest:
					<%
					out.println(category.getJobi());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					State:
					<%
					out.println(category.getStat());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					Country:
					<%
					out.println(category.getCont());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					<%
						out.println();
					%>
				</p>
			</div>
			<%
				}
				} else {
					ArrayList<Keysearch> list1 = (ArrayList<Keysearch>) request.getAttribute("listsofkeyword");

					// print the information about every category of the list
					for (Keysearch l : list1) {
			%>
			<div class="well" style="background-color: #bbdefb">
				<h4 class="text-info" style="font-size: 22px">
					Name:
					<%
					out.println(l.getName1());
				%>
				</h4>
				<br>
				<p style="font-size: 20px">
					Date of Birth:
					<%
					out.println(l.getDob1());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					Qualification:
					<%
					out.println(l.getQualif1());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					Job Interest:
					<%
					out.println(l.getJobi1());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					State:
					<%
					out.println(l.getStat1());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					Country:
					<%
					out.println(l.getCont1());
				%>
				</p>
				<br>
				<p style="font-size: 20px">
					<%
						out.println();
					%>
				</p>
			</div>
			<%
				}
					list1 = null;
					keytext = null;
				}
			%>
		</div>
	</div>

</body>
</html>