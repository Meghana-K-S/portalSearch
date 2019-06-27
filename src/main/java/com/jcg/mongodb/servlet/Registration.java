package com.jcg.mongodb.servlet;
import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSInputFile;

@WebServlet("/RegServlet")

public class Registration extends HttpServlet{

	private static final long serialVersionUID = 2;
	// This method is called by the servlet container to process a 'post' request
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException 
	{
		// Mongodb initialization parameters.
				int port_no = 27017;
				String host_name = "localhost", db_name = "mycustomers", db_coll_name = "login_page";

				// Mongodb connection string.
				String client_url = "mongodb://" + host_name + ":" + port_no + "/" + db_name;
				MongoClientURI uri = new MongoClientURI(client_url);

				// Connecting to the mongodb server using the given client uri.
				MongoClient mongo_client = new MongoClient(uri);

				// Fetching the database from the mongodb.
				MongoDatabase db = mongo_client.getDatabase(db_name);

				// Fetching the collection from the mongodb.
				MongoCollection<Document> coll = db.getCollection(db_coll_name);

				String param1 = req.getParameter("employername"), 
						param2 = req.getParameter("Email"),
						param3 = req.getParameter("password"), 
						param4 = req.getParameter("cpassword"),
						param6 = req.getParameter("companyname"),
						param7 = req.getParameter("membername"),
			   			param8 = req.getParameter("date"),
				   	    param9=req.getParameter("gn"),
				   	    param10=req.getParameter("address"),
				   	    param11=req.getParameter("cotactnumber"),
			   			param12 = req.getParameter("addressline2"),
						param13 = req.getParameter("city"),
			   			param14 = req.getParameter("state"),
				   	    param15=req.getParameter("image");
			   	
				
		// Reading post parameters from the request
	   
	   	if(param1.isEmpty() || param2.isEmpty() || param3.isEmpty() || 
				param4.isEmpty() || param6.isEmpty() ||
				param8.isEmpty() || param10.isEmpty())
		{
	   		req.setAttribute("error_message", "Please enter all the text fields");
	   		req.getRequestDispatcher("reg.jsp").forward(req, resp);
		}
		else
		{
				   	
		   	Document emp1 = new Document();
			emp1.put("employername", param1);
			emp1.put("Email", param2);
			emp1.put("password",param3);
			emp1.put("cpassword", param4);
			emp1.put("companyname", param6);
			emp1.put("member_name",param7);
			emp1.put("Date", param8);
			emp1.put("gn", param9);
			emp1.put("address",param10);
			emp1.put("contactnumber", param11);
			emp1.put("addressline2", param12);
			emp1.put("city", param13);
			emp1.put("state",param14);
			emp1.put("image", param15);

			
			coll.insertOne(emp1);

			req.getRequestDispatcher("emplogin.jsp").forward(req, resp);
		}
	}
}
 