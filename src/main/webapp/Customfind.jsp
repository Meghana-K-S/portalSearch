<%@page import="com.mongodb.QueryBuilder"%>
<%@ page language="java" 
    contentType="text/html; 
    charset=windows-1256"
     pageEncoding="windows-1256" 
     import="com.mongodb.BasicDBObject"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.AggregationOutput"
     import="com.mongodb.DBCursor"
     import="com.mongodb.MongoClient"
     import="java.net.UnknownHostException"
	 import="com.sun.org.apache.bcel.internal.generic.NEW"
	 import="com.mongodb.DBObject"
	 import="com.mongodb.Mongo"
	
      %>
<!DOCTYPE html>
<html>
<head>
<title>canditate list</title>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
</head>
<body>
<div class="jumbotron text-left" style='background-image: url("st.jpg");background-size:cover'>
  <h1>CANDIDATES</h1>
  <p>Below is the list of all the candidates according to your requirements</p> 
</div>
<div  style='background-image: url("st.jpg");background-size:cover'>  
<div class="container" > 
  <div class="row">
    <div class="col-sm-15" style='background-image: url("is.jpg");background-size:cover'>

<%!String[] str1, str2, str3;%>
<%	
	str1= request.getParameterValues("state");
str2= request.getParameterValues("job_interests");
str3= request.getParameterValues("qual");

	Mongo mg = new Mongo("localhost",27017);
	DB db = mg.getDB("Jobseeker");
	DBCollection collection = db.getCollection("details");
	
	DBCursor cursor1 = collection.find();
	DBCursor cursor2 = collection.find();
	DBCursor cursor3 = collection.find();
	
	BasicDBObject query1 =new BasicDBObject();
	BasicDBObject query2 =new BasicDBObject();
	BasicDBObject query3 =new BasicDBObject();

	if(str1 != null || str2!=null || str3!=null)
	{
			for (int i = 0; i < str1.length; i++) 
			{
				for(int j=0; j<str2.length; j++)
				{
					for(int k=0; k< str3.length; k++)
					{
				
				    query1.put("state",str1[i]);
					query2.put("job_interests",str2[i]);
					query3.put("qual",str3[i]);
					cursor2 = db.getCollection("fusteps").find(query2).sort(new BasicDBObject("job_interests",1));
				cursor2 = db.getCollection("fusteps").find(query1).sort(new BasicDBObject("state",1));
				
				cursor2 = db.getCollection("fusteps").find(query3).sort(new BasicDBObject("qual",1));
				
				System.out.println(cursor2);

					%>
					<br><%
			    	
				while (cursor2.hasNext())
				{
				
				
					DBObject obj2 =cursor2.next(); 
					
					%>
					<tr><b> 
					<h3>   Name:  <td><%=obj2.get("name") %></td></h3> <br>
					<p>1.   Date of Birth:  <%=obj2.get("DOB") %></td></p> 
					<p>2.   Qualification:  <%=obj2.get("qual") %></td></p> 
					<p>3.   Job Interests: <td><%=obj2.get("job_interests") %></td> </p>
					<p>4.   Experience: <td><%=obj2.get("experience") %></td> </p>
					<p>5.   State: <td><%=obj2.get("state") %></td></p>
					<p>6.   Country: <td><%=obj2.get("country") %></td></p>
					<p>7.   About me: <td><%=obj2.get("About me") %></td></p>
					</tr>
					<br>
					
					<br><%
					out.println("-----------------------------------------");
			    	%><br><%
			    	
						}
				
			}
		}
	}
	}
	
		else
	{
		
			out.println ("<b>none<b>");
	}
	
%>
	 </div>
  </div>
</div>
</div>  
</body>
</html>